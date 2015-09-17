using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Object_Pool
{
    public class Employee:IDisposable
    {
        private string firstName;
        private string lastName;
        private string employer;
        private readonly DateTime hireDate = DateTime.Now;

        public Employee()
        {
            this.firstName = GetFirstName();
            this.lastName = GetLastName();
        }

        public string FirstName
        {
            get { return this.firstName; }
           
        }
        public string LastName
        {
            get { return this.lastName; }
            
        }

        public string Employer
        {
            get { return this.employer; }
            set
            {
                if (!string.IsNullOrEmpty(value))
                {
                    this.employer = value;
                }
            }

        }

        public DateTime HireDate
        {
            get {return this.hireDate; }
        }


        public void Dispose()
        {
            this.employer = null; 
        }


        #region name_generators 
        //I've used those methods to create some employee names to display. The random method is quite inefficient anf often employees end up with te same name (several times in a row), which took me quite a lot of time to check
        //Since htis is not related to the task, we don't need to worry about that,though

        private string GetFirstName()
        {
            List<string> names = new List<string>
            {
                "Ella",
                "Emma",
                "John",
                "Yuuki",
                "Muhhamed",
                "Nadejda",
                "Sally",
                "Andrew",
                "Brian",
                "Aang",
                "Todor"
            };

            Random rand = new Random();
            var randomNamePostiion = rand.Next(0, names.Count);

            return names[randomNamePostiion];
        }

        private string GetLastName()
        {
            List<string> names = new List<string>
            {
                "Smith",
                "Jonson",
                "Watanabe",
                "Li",
                "Rodrigez",
                "Gruber",
                "Weber",
                "Brown",
                "Nguen",
                "Lee",
                "Mike"
            };

            Random rand = new Random();
            var randomNamePostiion = rand.Next(0, names.Count);

            return names[randomNamePostiion];

            #endregion

        }
    }
}
