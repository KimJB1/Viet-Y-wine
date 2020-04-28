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
    public interface IproductService
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
    public class ProductService : GenericService<Product>, IproductService
    {
        public void createData(string name, string slug, string avatar, int categoryID, int producerID, decimal price, string metaTitle, string metaKeyword, string metaDescription, string createBy, string updateBy)
        {
            productRepository.createData(name, slug, avatar, categoryID, producerID, price, metaTitle, metaKeyword, metaDescription, createBy, updateBy);
        }

        public IEnumerable<Category> dataCategory()
        {
            return productRepository.dataCategory();
        }

        public IEnumerable<Producer> dataProducer()
        {
            return productRepository.dataProducer();
        }

        public void deleteData(int id)
        {
            productRepository.deleteData(id);
        }

        public IPagedList<Product> getAllWine(int? page)
        {
            return productRepository.getAllWine(page);
        }

        public IPagedList<Product> getByCategoryId(int? page, int categoryID)
        {
            return productRepository.getByCategoryId(page, categoryID);
        }

        public Product getByID(int id)
        {
            return productRepository.getByID(id);
        }

        public Product getBySlug(string slug)
        {
            return productRepository.getBySlug(slug);
        }

        public IEnumerable<Category> getCategory()
        {
            return productRepository.getCategory();
        }

        public IEnumerable<Product> getData()
        {
            return productRepository.getData();
        }

        public IEnumerable<Producer> getProducer()
        {
            return productRepository.getProducer();
        }

        public IEnumerable<Product> getTop3Product()
        {
            return productRepository.getTop3Product();
        }

        public IEnumerable<Product> getTop6Data(int id, int categoryID)
        {
            return productRepository.getTop6Data(id, categoryID);
        }

        public void updateData(int id, string name, string slug, string avatar, int categoryID, int producerID, decimal price, string metaTitle, string metaKeyword, string metaDescription, byte status, string updateBy)
        {
            productRepository.updateData(id, name, slug, avatar, categoryID, producerID, price, metaTitle, metaKeyword, metaDescription, status, updateBy);
        }
    }
}
