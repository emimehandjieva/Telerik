using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarCompany.ItemInventoryHierarchy
{
    public class Part :Item
    {
        public Part(string description, decimal cost) : base(description, cost)
        {
        }

        //Add and remove have no implementation since there are no items ina  collection to operate with
        public override void AddItem(Item item)
        {
            
        }

        public override void RemoveItem(Item item)
        {
            
        }

        public override Item[] Items
        {
            get
            {
                return new Item[0]; //parts are non-composite elements
            }
        }
    }
}
