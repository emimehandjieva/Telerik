using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AbstractFactory.Toys
{
    public abstract class Toy
    {
        private decimal price;
        private int size;
        protected  StringBuilder representation;

        public Toy(decimal prize, int size)
        {
            
        }

        public Toy(decimal prize, int size,string representation)
        {

        }

        public decimal Price
        {
            get { return price; }
            set { price = value; }
        }

        public int Size
        {
            get { return size; }
            set { size = value; }
        }

        public StringBuilder Representation
        {
            get { return representation; }
            set { this.representation = value; }
        }
    }
}
