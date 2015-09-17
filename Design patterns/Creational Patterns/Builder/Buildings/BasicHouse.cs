using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Builder
{
    public class BasicHouse :Building
    {
        private int residents;
        public BasicHouse(Foundation found, int floors, Roof roof,int residents) : base(found, floors, roof)
        {
            this.residents = residents;
        }

        public BasicHouse()
        {
            
        }

        public void ChangeNumberOfResidents(int newNumberOfResidents)
        {
            this.residents = newNumberOfResidents;
        }
    }
}
