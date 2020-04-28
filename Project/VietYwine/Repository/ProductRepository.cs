using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using PagedList;

namespace Repository
{
    public interface IproductRepository
    {
        IEnumerable<Product> getData();
        IEnumerable<Category> dataCategory();
        IEnumerable<Category> getCategory();
        IEnumerable<Producer> dataProducer();
        IEnumerable<Producer> getProducer();
        Product getByID(int id);
        void createData(string name, string slug, string avatar, int categoryID, int producerID, decimal price, string metaTitle, string metaKeyword, string metaDescription, string createBy, string updateBy);
        void updateData(int id, string name, string slug, string avatar, int categoryID, int producerID, decimal price, string metaTitle, string metaKeyword, string metaDescription, byte status, string updateBy);
        void deleteData(int id);
        //Client
        //Get all wine
        IPagedList<Product> getAllWine(int? page);
        IPagedList<Product> getByCategoryId(int? page, int categoryID);
        IEnumerable<Product> getTop6Data(int id, int categoryID);
        IEnumerable<Product> getTop3Product();
        Product getBySlug(string slug);
    }
    public class ProductRepository : GenericRepository<Product>, IproductRepository
    {
        public void createData(string name, string slug, string avatar, int categoryID, int producerID, decimal price, string metaTitle, string metaKeyword, string metaDescription, string createBy, string updateBy)
        {
            Product product = new Product();
            product.name = name;
            product.slug = slug;
            product.avatar = avatar;
            product.categoryID = categoryID;
            product.producerID = producerID;
            product.price = price;
            product.MetaTitle = metaTitle;
            product.MetaKeyWord = metaKeyword;
            product.MetaDescription = metaDescription;
            product.createBy = createBy;
            product.createDate = DateTime.Now;
            product.updateBy = updateBy;
            product.updateDate = DateTime.Now;
            product.status = 1;
            product.ISDELETE = false;
            db.Products.Add(product);
            db.SaveChanges();
        }

        public IEnumerable<Category> dataCategory()
        {
            return db.Categories.ToList();
        }

        public IEnumerable<Producer> dataProducer()
        {
            return db.Producers.ToList();
        }

        public void deleteData(int id)
        {
            Product product = db.Products.Find(id);
            product.ISDELETE = true;
            db.Entry(product).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }

        public IPagedList<Product> getAllWine(int? page)
        {
            int pageNumber = page ?? 1;// nếu page null thì trang khởi đầu sẽ là trang 1
            int pageSite = 9; //mặc định 9 item trên 1 trang
            var model = db.Products.Where(n => n.ISDELETE == false && n.status == 1).OrderByDescending(n => n.updateDate).ToPagedList(pageNumber, pageSite);
            return model;
        }

        public IPagedList<Product> getByCategoryId(int? page, int categoryID)
        {
            int pageNumber = page ?? 1;// nếu page null thì trang khởi đầu sẽ là trang 1
            int pageSite = 9; //mặc định 9 item trên 1 trang
            var model = db.Products.Where(n => n.categoryID == categoryID && n.ISDELETE == false && n.status == 1).OrderByDescending(n => n.updateDate).ToPagedList(pageNumber, pageSite);
            return model;
        }

        public Product getByID(int id)
        {
            return db.Products.Find(id);
        }

        public Product getBySlug(string slug)
        {
            var id = db.Products.Where(n => n.slug == slug && n.ISDELETE == false).FirstOrDefault().ID;
            return db.Products.Find(id);
        }

        public IEnumerable<Category> getCategory()
        {
            return db.Categories.Where(n => n.ISDELETE == false && n.status == 1).OrderBy(n => n.name).ToList();
        }

        public IEnumerable<Product> getData()
        {
            return db.Products.Where(n => n.ISDELETE == false).ToList();
        }

        public IEnumerable<Producer> getProducer()
        {
            return db.Producers.Where(n => n.ISDELETE == false && n.status == 1).OrderBy(n => n.name).ToList();
        }

        public IEnumerable<Product> getTop3Product()
        {
            return db.Products.Where(n => n.ISDELETE == false && n.status == 1).OrderByDescending(n => n.updateDate).Take(3).AsEnumerable();
        }

        public IEnumerable<Product> getTop6Data(int id, int categoryID)
        {
            return db.Products.Where(n => n.ID != id && n.categoryID == categoryID && n.ISDELETE == false && n.status == 1).OrderByDescending(n => n.updateDate).Take(6).AsEnumerable();
        }

        public void updateData(int id, string name, string slug, string avatar, int categoryID, int producerID, decimal price, string metaTitle, string metaKeyword, string metaDescription, byte status, string updateBy)
        {
            Product product = db.Products.Find(id);
            product.name = name;
            product.slug = slug;
            product.avatar = avatar;
            product.categoryID = categoryID;
            product.producerID = producerID;
            product.price = price;
            product.MetaTitle = metaTitle;
            product.MetaKeyWord = metaKeyword;
            product.MetaDescription = metaDescription;
            product.status = status;
            product.updateBy = updateBy;
            product.updateDate = DateTime.Now;
            db.Entry(product).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
    }
}
