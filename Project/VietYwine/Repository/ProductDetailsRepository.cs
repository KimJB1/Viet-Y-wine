using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace Repository
{
    public interface IproductDetailsRepository
    {
        IEnumerable<ProductDetail> getDataByIDProduct(int id);
        Product dataProduct(int id);
        void createData(int productID, string name, string description, string createBy, string updateBy);
        ProductDetail getByID(int id);
        void updateData(int id, int productID, string name, string description, byte status, string updateBy);
        void deleteData(int id);
    }
    public class ProductDetailsRepository : GenericRepository<ProductDetail>, IproductDetailsRepository
    {
        public void createData(int productID, string name, string description, string createBy, string updateBy)
        {
            ProductDetail productDetail = new ProductDetail();
            productDetail.name = name;
            productDetail.productID = productID;
            productDetail.description = description;
            productDetail.createBy = createBy;
            productDetail.createDate = DateTime.Now;
            productDetail.updateBy = updateBy;
            productDetail.updateDate = DateTime.Now;
            productDetail.status = 1;
            productDetail.ISDELETE = false;
            db.ProductDetails.Add(productDetail);
            db.SaveChanges();
        }

        public Product dataProduct(int id)
        {
            return db.Products.Find(id);
        }

        public void deleteData(int id)
        {
            ProductDetail productDetail = db.ProductDetails.Find(id);
            productDetail.ISDELETE = true;
            db.Entry(productDetail).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }

        public ProductDetail getByID(int id)
        {
            return db.ProductDetails.Find(id);
        }

        public IEnumerable<ProductDetail> getDataByIDProduct(int id)
        {
            return db.ProductDetails.Where(n => n.productID == id && n.ISDELETE == false).OrderBy(n => n.name).AsEnumerable();
        }

        public void updateData(int id, int productID, string name, string description, byte status, string updateBy)
        {
            ProductDetail productDetail = db.ProductDetails.Find(id);
            productDetail.name = name;
            productDetail.productID = productID;
            productDetail.description = description;
            productDetail.status = status;
            productDetail.updateBy = updateBy;
            productDetail.updateDate = DateTime.Now;
            db.Entry(productDetail).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
    }
}
