using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AbstractFactory.Toys;

namespace AbstractFactory.Factories
{
    public class Duck :Toy
    {
        public Duck(decimal prize, int size) : base(prize, size)
        {
        }

        public Duck(decimal prize, int size, string representation) : base(prize, size, representation)
        {
        }
    }
}
