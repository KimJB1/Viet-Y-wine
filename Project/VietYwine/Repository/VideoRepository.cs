using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace Repository
{
    public interface IvideoRepository
    {
        IEnumerable<Video> getData();
        void createData(string name, string video, string createBy, string updateBy);
        Video getByID(int id);
        void updateData(int id, string name, string video, byte status, string updateBy);
        void deleteData(int id);
        //Client
        Video getVideo();
    }
    public class VideoRepository : GenericRepository<Video>, IvideoRepository
    {
        public void createData(string name, string video, string createBy, string updateBy)
        {
            var data = db.Videos.Where(n => n.ISDELETE == false).ToList();
            foreach(var item in data)
            {
                item.status = 2;
                db.Entry(item).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
            Video res = new Video();
            res.name = name;
            res.video1 = video;
            res.createBy = createBy;
            res.createDate = DateTime.Now;
            res.updateBy = updateBy;
            res.updateDate = DateTime.Now;
            res.status = 1;
            res.ISDELETE = false;
            db.Videos.Add(res);
            db.SaveChanges();
        }

        public void deleteData(int id)
        {
            Video video = db.Videos.Find(id);
            video.ISDELETE = true;
            db.Entry(video).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }

        public Video getByID(int id)
        {
            return db.Videos.Find(id);
        }

        public IEnumerable<Video> getData()
        {
            return db.Videos.Where(n => n.ISDELETE == false).OrderBy(n => n.name).AsEnumerable();
        }

        public Video getVideo()
        {
            return db.Videos.Where(n => n.ISDELETE == false && n.status == 1).FirstOrDefault();
        }

        public void updateData(int id, string name, string video, byte status, string updateBy)
        {
            var data = db.Videos.Where(n => n.ISDELETE == false).ToList();
            if (status == 1)
            {
                foreach (var item in data)
                {
                    item.status = 2;
                    db.Entry(item).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
                }
            }
            Video res = db.Videos.Find(id);
            res.name = name;
            res.video1 = video;
            res.status = status;
            res.updateBy = updateBy;
            res.updateDate = DateTime.Now;
            db.Entry(res).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
    }
}
