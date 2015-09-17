using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AbstractFactory.Toys;

namespace AbstractFactory.Factories
{
    public class TeddyBear : Toy
    {
        public TeddyBear(decimal prize, int size) : base(prize, size)
        {
        }

        public TeddyBear(decimal prize, int size,string representation) : base(prize, size,representation)
        {
        }
    }
}

