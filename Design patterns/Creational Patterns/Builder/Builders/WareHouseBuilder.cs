using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Builder.Buildings.BuildingBlocks;

namespace Builder.Builders
{
    public class WareHouseBuilder: BuildingBuilder
    {
   

        public WareHouseBuilder() : base(new BasicHouse())
        {

        }

        public override string BuildFoundation(int width,int height)
        {
            base.Building.Foundation = new Foundation(width,height,FoundationType.None);
            return Message.Foundation + Message.SuccessMessage;
        }

       

        public override string BuildRoof(int width, int height)
        {
            //For warehouses this validations till makes sence,but for now I would avoid creating the abstract BuildingWithRoofBigerThanFoundationSize class,
            //cuz they don't seem to have anything else in common and I find it... useless for that level of abstraction to exist. I know it's an option, though
            if (base.Building.Foundation != null)
            {
                if (base.Building.Foundation.Width < width)
                {
                    return (Message.WrongRoofSize + "Please see the value input for roof width!");
                }
                if (base.Building.Foundation.Height < height)
                {
                    return (Message.WrongRoofSize + "Please see the value input for roof height!");
                }

                base.Building.Roof = new Roof(width, height, RoofType.Flat);
                return Message.Roof + Message.SuccessMessage;

            }
            return Message.InvalidOperationOrder;

        }

        public override string BuildDecorations(List<string> decorations)
        {
            base.Building.AddDecorations(decorations); //who says warehouses can't be pretty
            base.Building.AddDecoration("grafitti"); //let's face it, it's gonna be there anyways...

            return Message.Decoration + Message.SuccessMessage;
        }
    }
}

