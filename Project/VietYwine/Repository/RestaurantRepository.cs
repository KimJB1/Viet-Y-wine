using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace Repository
{
    public interface IrestaurantRepository
    {
        IEnumerable<Restaurant> getData();
        void createData(string name, string address, string email, string phone, string map, string createBy, string updateBy);
        Restaurant getByID(int id);
        void updateData(int id, string name, string address, string email, string phone, string map, byte status, string updateBy);
        void deleteData(int id);
        //Client
        IEnumerable<Restaurant> selectAllData();
    }
    public class RestaurantRepository : GenericRepository<Restaurant>, IrestaurantRepository
    {
        public void createData(string name, string address, string email, string phone, string map, string createBy, string updateBy)
        {
            Restaurant restaurant = new Restaurant();
            restaurant.name = name;
            restaurant.address = address;
            restaurant.email = email;
            restaurant.phone = phone;
            restaurant.map = map;
            restaurant.createBy = createBy;
            restaurant.createDate = DateTime.Now;
            restaurant.updateBy = updateBy;
            restaurant.updateDate = DateTime.Now;
            restaurant.status = 1;
            restaurant.ISDELETE = false;
            db.Restaurants.Add(restaurant);
            db.SaveChanges();
        }

        public void deleteData(int id)
        {
            Restaurant restaurant = db.Restaurants.Find(id);
            restaurant.ISDELETE = true;
            db.Entry(restaurant).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }

        public Restaurant getByID(int id)
        {
            return db.Restaurants.Find(id);
        }

        public IEnumerable<Restaurant> getData()
        {
            return db.Restaurants.Where(n => n.ISDELETE == false).OrderBy(n => n.name).AsEnumerable();
        }

        public IEnumerable<Restaurant> selectAllData()
        {
            return db.Restaurants.Where(n => n.ISDELETE == false && n.status == 1).OrderByDescending(n => n.name).AsEnumerable();
        }

        public void updateData(int id, string name, string address, string email, string phone, string map, byte status, string updateBy)
        {
            Restaurant restaurant = db.Restaurants.Find(id);
            restaurant.name = name;
            restaurant.address = address;
            restaurant.email = email;
            restaurant.phone = phone;
            restaurant.map = map;
            restaurant.status = status;
            restaurant.updateBy = updateBy;
            restaurant.updateDate = DateTime.Now;
            db.Entry(restaurant).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
    }
}
