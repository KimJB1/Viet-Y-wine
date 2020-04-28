using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using Repository;

namespace Service
{
    public interface IproductDetailsService
    {
        IEnumerable<ProductDetail> getDataByIDProduct(int id);
        Product dataProduct(int id);
        void createData(int productID, string name, string description, string createBy, string updateBy);
        ProductDetail getByID(int id);
        void updateData(int id, int productID, string name, string description, byte status, string updateBy);
        void deleteData(int id);
    }
    public class ProductDetailsService : GenericService<ProductDetail>, IproductDetailsService
    {
        public void createData(int productID, string name, string description, string createBy, string updateBy)
        {
            productDetailsRepository.createData(productID, name, description, createBy, updateBy);
        }

        public Product dataProduct(int id)
        {
            return productDetailsRepository.dataProduct(id);
        }

        public void deleteData(int id)
        {
            productDetailsRepository.deleteData(id);
        }

        public ProductDetail getByID(int id)
        {
            return productDetailsRepository.getByID(id);
        }

        public IEnumerable<ProductDetail> getDataByIDProduct(int id)
        {
            return productDetailsRepository.getDataByIDProduct(id);
        }

        public void updateData(int id, int productID, string name, string description, byte status, string updateBy)
        {
            productDetailsRepository.updateData(id, productID, name, description, status, updateBy);
        }
    }
}
