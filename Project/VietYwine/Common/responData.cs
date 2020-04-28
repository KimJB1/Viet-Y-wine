using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common
{
    public class responData<T>
    {
        public int statusCode { get; set; }
        public string Message { get; set; }
        public T Data { get; set; }
    }
}
