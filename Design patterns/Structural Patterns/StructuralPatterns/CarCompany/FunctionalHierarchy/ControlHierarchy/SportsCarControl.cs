using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CarCompany.BasicHierarchy;

namespace CarCompany.FunctionalHierarchy.ControlHierarchy
{
    public class SportsCarControl :AbstractDriverControl
    {
        public SportsCarControl(IFunctionalEngine engine) : base(engine)
        {
        }

        public virtual void AccelerateHard()
        {
            Accelerate();
            Accelerate(); 
        }
    }
}
