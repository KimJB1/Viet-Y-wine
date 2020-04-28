using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace Repository
{
    public class GenericRepository<T> where T : class
    {
        public readonly VietYWineEntities db;
        public GenericRepository()
        {
            db = new VietYWineEntities();
        }
    }
}
