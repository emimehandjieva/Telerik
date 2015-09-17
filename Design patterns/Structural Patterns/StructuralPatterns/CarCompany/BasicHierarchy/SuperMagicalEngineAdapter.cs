using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarCompany.BasicHierarchy
{
    public class SuperMagicalEngineAdapter :AbstractEngine
    {
        public SuperMagicalEngineAdapter(SuperMagicalEngine engine) : base(engine.EngineSize, false)
        {
            //now you get an AbstractEngine  instance that can be used as any ther implementation of the IEngine interface
        }

        public override string ToString()
        {
            return "SuperMagicalEngine" + "(" + this.Size + ")";
        }
    }
}
