using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace Repository
{
    public interface IcategoryRepository
    {
        IEnumerable<Category> getData();
        void createData(string name, string slug, string metaTitle, string metaKeyword, string metaDescription, string createBy, string updateBy);
        Category getByID(int id);
        void updateData(int id, string name, string slug, string metaTitle, string metaKeyword, string metaDescription, byte status, string updateBy);
        void deleteData(int id);
        //Client
        IEnumerable<Category> getLstCategory();
    }
    public class CategoryRepository : GenericRepository<Category>, IcategoryRepository
    {
        public void createData(string name, string slug, string metaTitle, string metaKeyword, string metaDescription, string createBy, string updateBy)
        {
            Category category = new Category();
            category.name = name;
            category.slug = slug;
            category.MetaTitle = metaTitle;
            category.MetaKeyWord = metaKeyword;
            category.MetaDescription = metaDescription;
            category.createBy = createBy;
            category.createDate = DateTime.Now;
            category.updateBy = updateBy;
            category.updateDate = DateTime.Now;
            category.status = 1;
            category.ISDELETE = false;
            db.Categories.Add(category);
            db.SaveChanges();
        }

        public void deleteData(int id)
        {
            Category category = db.Categories.Find(id);
            category.ISDELETE = true;
            db.Entry(category).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }

        public Category getByID(int id)
        {
            return db.Categories.Find(id);
        }

        public IEnumerable<Category> getData()
        {
            return db.Categories.Where(n => n.ISDELETE == false).OrderBy(n => n.name).AsEnumerable();
        }

        public IEnumerable<Category> getLstCategory()
        {
            return db.Categories.Where(n => n.ISDELETE == false && n.status == 1).OrderBy(n => n.name).AsEnumerable();
        }

        public void updateData(int id, string name, string slug, string metaTitle, string metaKeyword, string metaDescription, byte status, string updateBy)
        {
            Category category = db.Categories.Find(id);
            category.name = name;
            category.slug = slug;
            category.MetaTitle = metaTitle;
            category.MetaKeyWord = metaKeyword;
            category.MetaDescription = metaDescription;
            category.status = status;
            category.updateBy = updateBy;
            category.updateDate = DateTime.Now;
            db.Entry(category).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
    }
}
