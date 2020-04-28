using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using PagedList;

namespace Repository
{
    public interface IpostRepository
    {
        IEnumerable<Post> getData();
        void createData(string name, string avatar, byte category, string summaryContent, string mainContent, string metaTitle, string metaKeyword, string metaDescription, string slug, string createBy, string updateBy);
        Post getByID(int id);
        void updateData(int id, string name, string avatar, byte category, string summaryContent, string mainContent, string metaTitle, string metaKeyword, string metaDescription, string slug, byte status, string updateBy);
        void deleteData(int id);
        //Client
        //Get data knowledge(kiến thức)
        IEnumerable<Post> getTop3Knowledge();
        //Get data news(tin tức)
        IEnumerable<Post> getTop3News();
        IPagedList<Post> getLstNews(int? page);
        Post getBySlug(string slug);
        IPagedList<Post> getLstKnowledge(int? page);
    }
    public class PostRepository : GenericRepository<Post>, IpostRepository
    {
        public void createData(string name, string avatar, byte category, string summaryContent, string mainContent, string metaTitle, string metaKeyword, string metaDescription, string slug, string createBy, string updateBy)
        {
            Post post = new Post();
            post.name = name;
            post.avatar = avatar;
            post.category = category;
            post.summaryContent = summaryContent;
            post.mainContent = mainContent;
            post.MetaTitle = metaTitle;
            post.MetaKeyWord = metaKeyword;
            post.MetaDescription = metaDescription;
            post.slug = slug;
            post.createBy = createBy;
            post.createDate = DateTime.Now;
            post.updateBy = updateBy;
            post.updateDate = DateTime.Now;
            post.status = 1;
            post.ISDELETE = false;
            db.Posts.Add(post);
            db.SaveChanges();
        }

        public void deleteData(int id)
        {
            Post post = db.Posts.Find(id);
            post.ISDELETE = true;
            db.Entry(post).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }

        public Post getByID(int id)
        {
            return db.Posts.Find(id);
        }

        public Post getBySlug(string slug)
        {
            var id = db.Posts.Where(n => n.slug == slug && n.ISDELETE == false).FirstOrDefault().ID;
            return db.Posts.Find(id);
        }

        public IEnumerable<Post> getData()
        {
            return db.Posts.Where(n => n.ISDELETE == false).OrderBy(n => n.name).AsEnumerable();
        }

        public IPagedList<Post> getLstKnowledge(int? page)
        {
            int pageNumber = page ?? 1;// nếu page null thì trang khởi đầu sẽ là trang 1
            int pageSite = 3; //mặc định 3 item trên 1 trang
            var model = db.Posts.Where(n => n.category == 1 && n.ISDELETE == false && n.status == 1).OrderByDescending(n => n.updateDate).ToPagedList(pageNumber, pageSite);
            return model;
        }

        public IPagedList<Post> getLstNews(int? page)
        {
            int pageNumber = page ?? 1;// nếu page null thì trang khởi đầu sẽ là trang 1
            int pageSite = 3; //mặc định 3 item trên 1 trang
            var model = db.Posts.Where(n => n.category == 2 && n.ISDELETE == false && n.status == 1).OrderByDescending(n => n.updateDate).ToPagedList(pageNumber, pageSite);
            return model;
        }

        public IEnumerable<Post> getTop3Knowledge()
        {
            return db.Posts.Where(n => n.category == 1 && n.ISDELETE == false && n.status == 1).OrderByDescending(n => n.updateDate).Take(3).AsEnumerable();
        }

        public IEnumerable<Post> getTop3News()
        {
            return db.Posts.Where(n => n.category == 2 && n.ISDELETE == false && n.status == 1).OrderByDescending(n => n.updateDate).Take(3).AsEnumerable();
        }

        public void updateData(int id, string name, string avatar, byte category, string summaryContent, string mainContent, string metaTitle, string metaKeyword, string metaDescription, string slug, byte status, string updateBy)
        {
            Post post = db.Posts.Find(id);
            post.name = name;
            post.avatar = avatar;
            post.category = category;
            post.summaryContent = summaryContent;
            post.mainContent = mainContent;
            post.MetaTitle = metaTitle;
            post.MetaKeyWord = metaKeyword;
            post.MetaDescription = metaDescription;
            post.slug = slug;
            post.status = status;
            post.updateBy = updateBy;
            post.updateDate = DateTime.Now;
            db.Entry(post).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
    }
}
