using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AbstractFactory.Factories;

namespace AbstractFactory
{
    class Program
    {
        public AbstractFactory.Factories.AbstractToyFactory Използва
        {
            get
            {
                throw new System.NotImplementedException();
            }
            set
            {
            }
        }
        //Couldn't think of a better thing to do,so I made a basic output as with theother examples.Output may vary with different factories as it should I madeonly one factory, buy ya get the drift...
        //IT's really useful, although it's a simple idea, if you need many objects fast and often, that's a great way to do it,I'm glad I learned how to do so.
        //ascii art courtesy of http://www.retrojunkie.com/asciiart/

        static void Main(string[] args)
        {
            LittleMammasFactory factory = new LittleMammasFactory();

            var baloon = factory.MakeBaloon(3);
            Console.WriteLine(baloon.Representation);
            var teddy = factory.MakeTeddyBear(4);
            Console.WriteLine(teddy.Representation);
            var furbie = factory.MakeFurbie(6);
            Console.WriteLine(furbie.Representation);
            var duck = factory.MakeDuck(8);
            Console.WriteLine(duck.Representation);

            Console.ReadLine();
        }
    }
}
