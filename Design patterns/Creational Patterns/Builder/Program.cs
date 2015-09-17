using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Builder.Builders;
using Builder.Constructors;

namespace Builder
{
    class Program
    {
        public Builder.Constructors.JuniorConstructor initiates
        {
            get
            {
                throw new System.NotImplementedException();
            }
            set
            {
            }
        }
    
        static void Main(string[] args)
        {
            /*Disclaimer : Okay,s o this is the first ever design pattern I've created and implemented (sorta) so feedback is appreciated. I have commented heavily due to that reason,
             * mostly explaning the reasons behind my decisions. This here is a sample use of the whole thins, and you can impleent new types easily in my opinion. 
             Also, I have written height everywhere, I mean length , but of course this is quite hard to correct and I am at work and in a hurry . So the only place where height is reffered to by its real 
             idea - lenght , will be in the "user interface". that is, the console app. This is a good way to show how the programmer can be very stupid and hide his/her mistake from the user easily :D*/

            Console.WriteLine("Hello and welcome to out construction site. Today we will create you dream building, built by you own custom person.First we'd like to ask you a few questions.");

            Console.WriteLine("What will be the name of your constructor?");
            JuniorConstructor Ivancho = new JuniorConstructor(Console.ReadLine());

            Console.WriteLine("Whet will be the size of your building's foundation - input width and length,separate with space");
            TwoDimentionalProportions foundationSize= GetSize();
            Console.WriteLine("Whet will be the size of your building's roof - input width and length,separate with space");
            TwoDimentionalProportions roofSize = GetSize();
            Console.WriteLine("How many floors are we talking 'bout?");
            int floors = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("If you would like any decorations, please input them , separated with a space again!If not, press enter");
            List<string> decorations = new List<string>();
            decorations.AddRange(Console.ReadLine().Split(' ').ToList());

            Console.WriteLine("What Building would you like to build?\nPress 1 for a house, 2 for a warehouse and 3 for a skyscraper");
            int houseType = Convert.ToInt32(Console.ReadLine());

            switch (houseType)
            {
                case 1:
                    Console.WriteLine(Ivancho.makeBuilding(new BasicHouseBuilder(), foundationSize, roofSize, floors, decorations));
                    break;
                case 2:
                    Console.WriteLine(Ivancho.makeBuilding(new WareHouseBuilder(), foundationSize, roofSize, floors, decorations));
                    break;
                case 3:
                    Console.WriteLine(Ivancho.makeBuilding(new SkyScraperBuilder(), foundationSize, roofSize, floors, decorations));
                    break;
                default : Console.WriteLine("You did not input any building type");
                    break;
            }

            Console.ReadLine();

        }


        private static  TwoDimentionalProportions GetSize()
        {
            int[] inputSize = Console.ReadLine().Split(' ').Select(element => Convert.ToInt32(element)).ToArray();
            return new TwoDimentionalProportions(inputSize[1],inputSize[0]);

        }
    }
}
