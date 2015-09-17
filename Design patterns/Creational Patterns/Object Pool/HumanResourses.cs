using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Object_Pool
{
    public class HumanResourses
    {
        private readonly List<Employee> availableEmployees = new List<Employee>();
        private readonly List<Employee> assignedEmployees= new List<Employee>();

        public Employee Алокира
        {
            get
            {
                throw new System.NotImplementedException();
            }
            set
            {
            }
        }

        public Employee EngageEmployee()
        {
            Employee currentEmployee;
            lock (this.availableEmployees)
            {
                if (this.availableEmployees.Count > 0)
                {
                    currentEmployee = this.availableEmployees[0];
                    this.availableEmployees.RemoveAt(0);
                    //Coould also be done with some sort of FIFO using collection , but this will do for a first implementation
                    
                }

                else
                {
                    currentEmployee = new Employee();
                }

                this.assignedEmployees.Add(currentEmployee);
                return currentEmployee;
            }
          
        }


        public void DisengageEmployee(Employee currentEmployee)
        {
            currentEmployee.Dispose();
            lock (availableEmployees)
            {
                this.availableEmployees.Add(currentEmployee);
                this.assignedEmployees.Remove(currentEmployee);
            }
        }

    }
}
