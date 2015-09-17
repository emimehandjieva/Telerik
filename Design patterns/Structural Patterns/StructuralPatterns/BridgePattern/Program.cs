using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Text;
using System.Threading.Tasks;
using CarCompany.BasicHierarchy;
using CarCompany.FunctionalHierarchy.ControlHierarchy;

namespace BridgePattern
{
    class Program
    {
        static void Main(string[] args)
        {
            /*The program uses FunctionalHierarchy folder classes,which implement the actual bridge pattern,This just shows that the bridge allows us to create a higher level of abstraction of
             * the connection, so that the same commands can be used with different types of engine.In this case the commands are standart actions done while driving a car,and their use of an engine,
             regardless of the engine's actual type. However additional actions may be performed as well(like with the sports car extra method)*/
            

            IFunctionalEngine engine = new StandartFunctionalEngine(1300);
            StandartControl control = new StandartControl(engine);
            control.IgnitionOn();
            control.Accelerate();
            control.Brake();
            control.IgnitionOff();

            IFunctionalEngine engineSports = new TurboFunctionalEngine(2000);
            SportsCarControl controlSports = new SportsCarControl(engine);
            controlSports.IgnitionOn();
            controlSports.Accelerate();
            controlSports.AccelerateHard();
            controlSports.Brake();
            controlSports.IgnitionOff();
        }
    }
}
