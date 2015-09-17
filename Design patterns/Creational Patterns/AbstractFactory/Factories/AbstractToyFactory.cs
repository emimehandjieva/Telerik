using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AbstractFactory.Factories
{
    public abstract class AbstractToyFactory
    {
        public AbstractFactory.Toys.Toy създава
        {
            get
            {
                throw new System.NotImplementedException();
            }
            set
            {
            }
        }
    
        public abstract TeddyBear MakeTeddyBear(int size);
        public abstract BaloonBunch MakeBaloon(int size);
        public abstract Duck MakeDuck(int size);
        public abstract Furbie MakeFurbie(int size);
    }
}
