using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;

namespace CarCompany.BasicHierarchy
{
    public class SuperMagicalEngine //does not inherit from engine
    {
        private int size;

        public SuperMagicalEngine(int size)
        {
            this.size = size;
        }

        public int EngineSize //Not the same name, so ToString doesn't work
        {
            get { return this.size; }
        }

        public override string ToString()
        {
            return this.GetType().Name.ToUpper() + " " + this.EngineSize; //different ToString method (could be any other method but this is just an easy way of representing lack of consistency
        }
    }
}
