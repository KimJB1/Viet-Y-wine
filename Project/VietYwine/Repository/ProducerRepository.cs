using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace Repository
{
    public interface IproducerRepository
    {
        IEnumerable<Producer> getData();
        void createData(string avatar, string name, string address, string email, string website, string phone, string createBy, string updateBy);
        Producer getByID(int id);
        void updateData(int id, string avatar, string name, string address, string email, string website, string phone, byte status, string updateBy);
        void deleteData(int id);
    }
    public class ProducerRepository : GenericRepository<Producer>, IproducerRepository
    {
        public void createData(string avatar, string name, string address, string email, string website, string phone, string createBy, string updateBy)
        {
            Producer producer = new Producer();
            producer.avatar = avatar;
            producer.name = name;
            producer.address = address;
            producer.email = email;
            producer.website = website;
            producer.phone = phone;
            producer.createBy = createBy;
            producer.createDate = DateTime.Now;
            producer.updateBy = updateBy;
            producer.updateDate = DateTime.Now;
            producer.status = 1;
            producer.ISDELETE = false;
            db.Producers.Add(producer);
            db.SaveChanges();
        }

        public void deleteData(int id)
        {
            Producer producer = db.Producers.Find(id);
            producer.ISDELETE = true;
            db.Entry(producer).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }

        public Producer getByID(int id)
        {
            return db.Producers.Find(id);
        }

        public IEnumerable<Producer> getData()
        {
            return db.Producers.Where(n => n.ISDELETE == false).OrderBy(n => n.name).ToList();
        }

        public void updateData(int id, string avatar, string name, string address, string email, string website, string phone, byte status, string updateBy)
        {
            Producer producer = db.Producers.Find(id);
            producer.avatar = avatar;
            producer.name = name;
            producer.address = address;
            producer.email = email;
            producer.website = website;
            producer.phone = phone;
            producer.status = status;
            producer.updateBy = updateBy;
            producer.updateDate = DateTime.Now;
            db.Entry(producer).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
    }
}
