using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using Repository;

namespace Service
{
    public interface IrestaurantService
    {
        IEnumerable<Restaurant> getData();
        void createData(string name, string address, string email, string phone, string map, string createBy, string updateBy);
        Restaurant getByID(int id);
        void updateData(int id, string name, string address, string email, string phone, string map, byte status, string updateBy);
        void deleteData(int id);
        //Client
        IEnumerable<Restaurant> selectAllData();
    }
    public class RestaurantService : GenericService<Restaurant>, IrestaurantService
    {
        public void createData(string name, string address, string email, string phone, string map, string createBy, string updateBy)
        {
            restaurantRepository.createData(name, address, email, phone, map, createBy, updateBy);
        }

        public void deleteData(int id)
        {
            restaurantRepository.deleteData(id);
        }

        public Restaurant getByID(int id)
        {
            return restaurantRepository.getByID(id);
        }

        public IEnumerable<Restaurant> getData()
        {
            return restaurantRepository.getData();
        }

        public IEnumerable<Restaurant> selectAllData()
        {
            return restaurantRepository.selectAllData();
        }

        public void updateData(int id, string name, string address, string email, string phone, string map, byte status, string updateBy)
        {
            restaurantRepository.updateData(id, name, address, email, phone, map, status, updateBy);
        }
    }
}
