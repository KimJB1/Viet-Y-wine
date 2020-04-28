using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using Repository;

namespace Service
{
    public interface IaboutService
    {
        IEnumerable<About> getData();
        void createData(string name, string description, string createBy, string updateBy);
        About getByID(int id);
        void updateData(int id, string name, string description, byte status, string updateBy);
        void deleteData(int id);
        //Client
        About getAbout();
    }
    public class AboutService : GenericService<About>, IaboutService
    {
        public void createData(string name, string description, string createBy, string updateBy)
        {
            aboutRepository.createData(name, description, createBy, updateBy);
        }

        public void deleteData(int id)
        {
            aboutRepository.deleteData(id);
        }

        public About getAbout()
        {
            return aboutRepository.getAbout();
        }

        public About getByID(int id)
        {
            return aboutRepository.getByID(id);
        }

        public IEnumerable<About> getData()
        {
            return aboutRepository.getData();
        }

        public void updateData(int id, string name, string description, byte status, string updateBy)
        {
            aboutRepository.updateData(id, name, description, status, updateBy);
        }
    }
}
