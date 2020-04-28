using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using Common;

namespace Repository
{
    public interface IemployeeRepository
    {
        responData<Employee> checkLogin(string email, string passWord);
        IEnumerable<Employee> getData();
        void insertData(string lastName, string firstName, DateTime birthday, byte gender, string email, string phone, string address, byte isSupperAdmin, string passWord, string avatar, string hobbies, string description, string createBy, string updateBy);
        Employee getByID(int id);
        void updateData(int id, string lastName, string firstName, DateTime birthday, byte gender, string email, string phone, string address, byte isSupperAdmin, string avatar, string hobbies, string description, byte status, string updateBy);
        void deleteData(int id);
    }
    public class EmployeeRepository : GenericRepository<Employee>, IemployeeRepository
    {
        public responData<Employee> checkLogin(string email, string passWord)
        {
            responData<Employee> res = new responData<Employee>();
            var dePass = formatPassword.base64Encode(passWord);
            res.Data = db.Employees.Where(n => n.email == email && n.passWord == dePass && n.status == 1 && n.ISDELETE == false).FirstOrDefault();
            return res;
        }

        public void deleteData(int id)
        {
            Employee employee = db.Employees.Find(id);
            employee.ISDELETE = true;
            db.Entry(employee).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }

        public Employee getByID(int id)
        {
            return db.Employees.Find(id);
        }

        public IEnumerable<Employee> getData()
        {
            return db.Employees.Where(n => n.ISDELETE == false).OrderBy(n => n.lastName).AsEnumerable();
        }

        public void insertData(string lastName, string firstName, DateTime birthday, byte gender, string email, string phone, string address, byte isSupperAdmin, string passWord, string avatar, string hobbies, string description, string createBy, string updateBy)
        {
            Employee employee = new Employee();
            employee.lastName = lastName;
            employee.firstName = firstName;
            employee.birthday = birthday;
            employee.gender = gender;
            employee.email = email;
            employee.phone = phone;
            employee.address = address;
            employee.isAdministrator = isSupperAdmin;
            employee.passWord = formatPassword.base64Encode(passWord);
            employee.avatar = avatar;
            employee.hobbies = hobbies;
            employee.description = description;
            employee.createBy = createBy;
            employee.createDate = DateTime.Now;
            employee.updateBy = updateBy;
            employee.updateDate = DateTime.Now;
            employee.status = 1;
            employee.ISDELETE = false;
            db.Employees.Add(employee);
            db.SaveChanges();
        }

        public void updateData(int id, string lastName, string firstName, DateTime birthday, byte gender, string email, string phone, string address, byte isSupperAdmin, string avatar, string hobbies, string description, byte status, string updateBy)
        {
            Employee employee = db.Employees.Find(id);
            employee.lastName = lastName;
            employee.firstName = firstName;
            employee.birthday = birthday;
            employee.gender = gender;
            employee.email = email;
            employee.phone = phone;
            employee.address = address;
            employee.isAdministrator = isSupperAdmin;
            employee.avatar = avatar;
            employee.hobbies = hobbies;
            employee.description = description;
            employee.status = status;
            employee.updateBy = updateBy;
            employee.updateDate = DateTime.Now;
            db.Entry(employee).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
    }
}
