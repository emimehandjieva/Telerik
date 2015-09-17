using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CarCompany.BasicHierarchy;

namespace CarCompany.FunctionalHierarchy.ControlHierarchy
{
    public class AbstractDriverControl
    {
        private IFunctionalEngine engine;

        public AbstractDriverControl(IFunctionalEngine engine)
        {
            this.engine = engine;
        }

        public void IgnitionOn()
        {
            engine.Start();
        }

        public void IgnitionOff()
        {
            engine.Stop();
        }

        public void Accelerate()
        {
            engine.IncreasePower();
        }

        public void Brake()
        {
            engine.DecreasePower();
        }
    }
}
