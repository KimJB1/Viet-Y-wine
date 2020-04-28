using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using Repository;
using PagedList;

namespace Service
{
    public interface IpostService
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
    public class PostService : GenericService<Post>, IpostService
    {
        public void createData(string name, string avatar, byte category, string summaryContent, string mainContent, string metaTitle, string metaKeyword, string metaDescription, string slug, string createBy, string updateBy)
        {
            postRepository.createData(name, avatar, category, summaryContent, mainContent, metaTitle, metaKeyword, metaDescription, slug, createBy, updateBy);
        }

        public void deleteData(int id)
        {
            postRepository.deleteData(id);
        }

        public Post getByID(int id)
        {
            return postRepository.getByID(id);
        }

        public Post getBySlug(string slug)
        {
            return postRepository.getBySlug(slug);
        }

        public IEnumerable<Post> getData()
        {
            return postRepository.getData();
        }

        public IPagedList<Post> getLstKnowledge(int? page)
        {
            return postRepository.getLstKnowledge(page);
        }

        public IPagedList<Post> getLstNews(int? page)
        {
            return postRepository.getLstNews(page);
        }

        public IEnumerable<Post> getTop3Knowledge()
        {
            return postRepository.getTop3Knowledge();
        }

        public IEnumerable<Post> getTop3News()
        {
            return postRepository.getTop3News();
        }

        public void updateData(int id, string name, string avatar, byte category, string summaryContent, string mainContent, string metaTitle, string metaKeyword, string metaDescription, string slug, byte status, string updateBy)
        {
            postRepository.updateData(id, name, avatar, category, summaryContent, mainContent, metaTitle, metaKeyword, metaDescription, slug, status, updateBy);
        }
    }
}
