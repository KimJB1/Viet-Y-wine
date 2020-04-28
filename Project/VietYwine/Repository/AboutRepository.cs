using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace Repository
{
    public interface IaboutRepository
    {
        IEnumerable<About> getData();
        void createData(string name, string description, string createBy, string updateBy);
        About getByID(int id);
        void updateData(int id, string name, string description, byte status, string updateBy);
        void deleteData(int id);
        //Client
        About getAbout();
    }
    public class AboutRepository : GenericRepository<About>, IaboutRepository
    {
        public void createData(string name, string description, string createBy, string updateBy)
        {
            var data = db.Abouts.Where(n => n.ISDELETE == false).ToList();
            foreach (var item in data)
            {
                item.status = 2;
                db.Entry(item).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
            About about = new About();
            about.name = name;
            about.description = description;
            about.createBy = createBy;
            about.createDate = DateTime.Now;
            about.updateBy = updateBy;
            about.updateDate = DateTime.Now;
            about.status = 1;
            about.ISDELETE = false;
            db.Abouts.Add(about);
            db.SaveChanges();
        }

        public void deleteData(int id)
        {
            About about = db.Abouts.Find(id);
            about.ISDELETE = true;
            db.Entry(about).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }

        public About getAbout()
        {
            return db.Abouts.Where(n => n.ISDELETE == false && n.status == 1).FirstOrDefault();
        }

        public About getByID(int id)
        {
            return db.Abouts.Find(id);
        }

        public IEnumerable<About> getData()
        {
            return db.Abouts.Where(n => n.ISDELETE == false).OrderBy(n => n.name).ToList();
        }

        public void updateData(int id, string name, string description, byte status, string updateBy)
        {
            if (status == 1)
            {
                var data = db.Abouts.Where(n => n.ISDELETE == false).ToList();
                foreach (var item in data)
                {
                    item.status = 2;
                    db.Entry(item).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
                }
            }
            About about = db.Abouts.Find(id);
            about.name = name;
            about.description = description;
            about.status = status;
            about.updateBy = updateBy;
            about.updateDate = DateTime.Now;
            db.Entry(about).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
    }
}
