using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using Repository;

namespace Service
{
    public interface IproducerService
    {
        IEnumerable<Producer> getData();
        void createData(string avatar, string name, string address, string email, string website, string phone, string createBy, string updateBy);
        Producer getByID(int id);
        void updateData(int id, string avatar, string name, string address, string email, string website, string phone, byte status, string updateBy);
        void deleteData(int id);
    }
    public class ProducerService : GenericService<Producer>, IproducerService
    {
        public void createData(string avatar, string name, string address, string email, string website, string phone, string createBy, string updateBy)
        {
            producerRepository.createData(avatar, name, address, email, website, phone, createBy, updateBy);
        }

        public void deleteData(int id)
        {
            producerRepository.deleteData(id);
        }

        public Producer getByID(int id)
        {
            return producerRepository.getByID(id);
        }

        public IEnumerable<Producer> getData()
        {
            return producerRepository.getData();
        }

        public void updateData(int id, string avatar, string name, string address, string email, string website, string phone, byte status, string updateBy)
        {
            producerRepository.updateData(id, avatar, name, address, email, website, phone, status, updateBy);
        }
    }
}
