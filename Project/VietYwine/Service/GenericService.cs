using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Repository;

namespace Service
{
    public class GenericService<T> where T : class
    {
        public readonly IemployeeRepository employeeRepository;
        public readonly IaboutRepository aboutRepository;
        public readonly IproducerRepository producerRepository;
        public readonly IcategoryRepository categoryRepository;
        public readonly IproductRepository productRepository;
        public readonly IproductDetailsRepository productDetailsRepository;
        public readonly IpostRepository postRepository;
        public readonly IrestaurantRepository restaurantRepository;
        public readonly IvideoRepository videoRepository;
        public GenericService()
        {
            employeeRepository = new EmployeeRepository();
            aboutRepository = new AboutRepository();
            producerRepository = new ProducerRepository();
            categoryRepository = new CategoryRepository();
            productRepository = new ProductRepository();
            productDetailsRepository = new ProductDetailsRepository();
            postRepository = new PostRepository();
            restaurantRepository = new RestaurantRepository();
            videoRepository = new VideoRepository();
        }
    }
}
