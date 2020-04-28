using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using Repository;

namespace Service
{
    public interface IcategoryService
    {
        IEnumerable<Category> getData();
        void createData(string name, string slug, string metaTitle, string metaKeyword, string metaDescription, string createBy, string updateBy);
        Category getByID(int id);
        void updateData(int id, string name, string slug, string metaTitle, string metaKeyword, string metaDescription, byte status, string updateBy);
        void deleteData(int id);
        //Client
        IEnumerable<Category> getLstCategory();
    }
    public class CategoryService : GenericService<Category>, IcategoryService
    {
        public void createData(string name, string slug, string metaTitle, string metaKeyword, string metaDescription, string createBy, string updateBy)
        {
            categoryRepository.createData(name, slug, metaTitle, metaKeyword, metaDescription, createBy, updateBy);
        }

        public void deleteData(int id)
        {
            categoryRepository.deleteData(id);
        }

        public Category getByID(int id)
        {
            return categoryRepository.getByID(id);
        }

        public IEnumerable<Category> getData()
        {
            return categoryRepository.getData();
        }

        public IEnumerable<Category> getLstCategory()
        {
            return categoryRepository.getLstCategory();
        }

        public void updateData(int id, string name, string slug, string metaTitle, string metaKeyword, string metaDescription, byte status, string updateBy)
        {
            categoryRepository.updateData(id, name, slug, metaTitle, metaKeyword, metaDescription, status, updateBy);
        }
    }
}
