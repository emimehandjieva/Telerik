using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CarCompany.BasicHierarchy;

namespace CarCompany.FunctionalHierarchy.ControlHierarchy
{
    public class StandartControl :AbstractDriverControl
    {
        public StandartControl(IFunctionalEngine engine) : base(engine)
        {
            //no change needed
        }
    }
}
