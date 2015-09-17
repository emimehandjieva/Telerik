using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarCompany.ItemInventoryHierarchy
{
    public class Assembly : Item
    {
        private IList<Item> items;
        public Assembly(string description)
            : base(description,0) //assembly itself has no cost. only its items have some actual cost
        {
            this.items = new List<Item>();
        }

        public override void AddItem(Item item)
        {
            items.Add(item);
        }

        public override void RemoveItem(Item item)
        {
            this.items.Remove(item);
        }

        public override Item[] Items
        {
            get { return this.items.ToArray(); }
        }

        public override decimal Cost
        {
            get
            {
                return this.items.Sum(x => x.Cost);
            }
        }
    }
}
