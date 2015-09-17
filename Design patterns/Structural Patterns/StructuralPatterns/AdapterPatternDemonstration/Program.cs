using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CarCompany.BasicHierarchy;

namespace AdapterPatternDemonstration
{
    class Program
    {
        //the program is created based on the BAsicHierarchy class, implementing the actual pattern, in the most basic way. I hope it's enough
        static void Main(string[] args)
        {
            IList<IEngine> engines = new List<IEngine>();
            engines.Add(new StandartEngine(1300));
            engines.Add(new StandartEngine(1600));
            engines.Add(new TurboEngine(1300));
            foreach (var engine in engines)
            {
                Console.WriteLine(engine.ToString());
            }

            Console.WriteLine();
            var superEngine = new SuperMagicalEngine(3000);
            Console.WriteLine(superEngine.ToString()); //observe different output ,methods work differently => not tollerable

            //engines.Add(superEngine); this woun't even compile, let alone work

            var superEngineAdapted = new SuperMagicalEngineAdapter(superEngine);

            engines.Add(superEngineAdapted); //this works

            Console.WriteLine();
            foreach (var engine in engines)
            {
                Console.WriteLine(engine.ToString()); //now this should work as it is proper
            }

            Console.ReadLine();

        }
    }
}
