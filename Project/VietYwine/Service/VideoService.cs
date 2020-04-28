using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using Repository;

namespace Service
{
    public interface IvideoService
    {
        IEnumerable<Video> getData();
        void createData(string name, string video, string createBy, string updateBy);
        Video getByID(int id);
        void updateData(int id, string name, string video, byte status, string updateBy);
        void deleteData(int id);
        //Client
        Video getVideo();
    }
    public class VideoService : GenericService<Video>, IvideoService
    {
        public void createData(string name, string video, string createBy, string updateBy)
        {
            videoRepository.createData(name, video, createBy, updateBy);
        }

        public void deleteData(int id)
        {
            videoRepository.deleteData(id);
        }

        public Video getByID(int id)
        {
            return videoRepository.getByID(id);
        }

        public IEnumerable<Video> getData()
        {
            return videoRepository.getData();
        }

        public Video getVideo()
        {
            return videoRepository.getVideo();
        }

        public void updateData(int id, string name, string video, byte status, string updateBy)
        {
            videoRepository.updateData(id, name, video, status, updateBy);
        }
    }
}
