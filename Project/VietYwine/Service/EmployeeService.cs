using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using Common;
using Repository;

namespace Service
{
    public interface IemployeeService
    {
        responData<Employee> checkLogin(string email, string passWord);
        IEnumerable<Employee> getData();
        void insertData(string lastName, string firstName, DateTime birthday, byte gender, string email, string phone, string address, byte isSupperAdmin, string passWord, string avatar, string hobbies, string description, string createBy, string updateBy);
        Employee getByID(int id);
        void updateData(int id, string lastName, string firstName, DateTime birthday, byte gender, string email, string phone, string address, byte isSupperAdmin, string avatar, string hobbies, string description, byte status, string updateBy);
        void deleteData(int id);
    }
    public class EmployeeService : GenericService<Employee>, IemployeeService
    {
        public responData<Employee> checkLogin(string email, string passWord)
        {
            responData<Employee> res = new responData<Employee>();
            if (string.IsNullOrEmpty(email))
            {
                res.statusCode = 201;
                res.Message = "Bạn chưa nhập tài khoản!";
                return res;
            }
            if (string.IsNullOrEmpty(passWord))
            {
                res.statusCode = 201;
                res.Message = "Bạn chưa nhập mật khẩu!";
                return res;
            }
            res = employeeRepository.checkLogin(email, passWord);
            if (res.Data == null)
            {
                res.statusCode = 201;
                res.Message = "Tài khoản hoặc mật khẩu không chính xác, hoặc không có quyền truy cập hệ thống!";
                return res;
            }
            res.statusCode = 200;
            res.Message = "Đăng nhập thành công";
            return res;
        }

        public void deleteData(int id)
        {
            employeeRepository.deleteData(id);
        }

        public Employee getByID(int id)
        {
            return employeeRepository.getByID(id);
        }

        public IEnumerable<Employee> getData()
        {
            return employeeRepository.getData();
        }

        public void insertData(string lastName, string firstName, DateTime birthday, byte gender, string email, string phone, string address, byte isSupperAdmin, string passWord, string avatar, string hobbies, string description, string createBy, string updateBy)
        {
            employeeRepository.insertData(lastName, firstName, birthday, gender, email, phone, address, isSupperAdmin, passWord, avatar, hobbies, description, createBy, updateBy);
        }

        public void updateData(int id, string lastName, string firstName, DateTime birthday, byte gender, string email, string phone, string address, byte isSupperAdmin, string avatar, string hobbies, string description, byte status, string updateBy)
        {
            employeeRepository.updateData(id, lastName, firstName, birthday, gender, email, phone, address, isSupperAdmin, avatar, hobbies, description, status, updateBy);
        }
    }
}
