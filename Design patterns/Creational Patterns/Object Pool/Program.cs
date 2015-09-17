using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Object_Pool
{
    class Program
    {
        public HumanResourses Използва
        {
            get
            {
                throw new System.NotImplementedException();
            }
            set
            {
            }
        }
    
        static void Main(string[] args)
        {
            var humanResoursesProductionDivision = new HumanResourses();

            var someEmployee = humanResoursesProductionDivision.EngageEmployee();
            someEmployee.Employer = "Boss Man";

            DisplayEmployee(someEmployee);

            var anotherEmployee = humanResoursesProductionDivision.EngageEmployee();
            anotherEmployee.Employer = "Boss Man";
            DisplayEmployee(anotherEmployee);

            humanResoursesProductionDivision.DisengageEmployee(someEmployee);
            Console.WriteLine(someEmployee.Employer);

            var thirdEmployee = humanResoursesProductionDivision.EngageEmployee();
            thirdEmployee.Employer = "Shefa Nabosa Namafiqta";
            DisplayEmployee(thirdEmployee);

            Console.ReadLine();
        }

        private static void DisplayEmployee(Employee emp) //Should this method be in the Използва class?
        {
            Console.WriteLine("{0} {1},hired at {2},currently employed by {3}", emp.FirstName, emp.LastName, emp.HireDate, emp.Employer);
        }
    }
}
