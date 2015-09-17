using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace CarCompany.ItemInventoryHierarchy
{
    public abstract class Item
    {
        private string description;
        private decimal cost;

        public Item(string description, decimal cost)
        {
            this.description = description;
            this.cost = cost;
        }

        public virtual string Description
        {
            get { return this.description; }
            set { this.description = value; }
        }

        public virtual decimal Cost
        {
            get { return this.cost; }
        }

        public abstract void AddItem(Item item);
        public abstract void RemoveItem(Item item);
        public abstract Item[] Items { get; }

        public override string ToString()
        {
            return this.Description + " (cost" + this.Cost + ")";
        }
    }
}
