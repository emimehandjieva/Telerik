using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CarCompany.ItemInventoryHierarchy;

namespace CompositePatternDemonstration
{
    class Program
    {
        static void Main(string[] args)
        {
            /*Based on the ItemInventoryHierarchy folder classes, it uses the idea that every part of the car is either atomic or composite but should be treated the same way... well this is where 
             the composite pattern takes the lead*/

            Item nut = new Part("Nut",5);
            Console.WriteLine(nut.Cost);
            Item bolt = new Part("Bolt",10);
            Console.WriteLine(bolt.Cost);
            Item panel = new Part("Panel",20);
            Console.WriteLine(panel.Cost);
            Console.WriteLine();

            Item gizmo = new Assembly("Gizmo");
            gizmo.AddItem(nut);
            gizmo.AddItem(bolt);
            gizmo.AddItem(panel);
            Console.WriteLine(gizmo.Cost);
            Console.WriteLine();

            Item widget = new Assembly("Widget");
            widget.AddItem(nut);
            widget.AddItem(bolt);
            widget.AddItem(panel);
            widget.RemoveItem(panel);
            Console.WriteLine(widget.Cost);
            

            Console.ReadLine();
        }
    }
}
