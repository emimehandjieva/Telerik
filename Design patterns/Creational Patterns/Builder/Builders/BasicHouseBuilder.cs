using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Builder.Buildings.BuildingBlocks;

namespace Builder.Builders
{
    public class BasicHouseBuilder : BuildingBuilder
    {
   

        public BasicHouseBuilder() : base(new BasicHouse())
        {

        }

        public override string BuildFoundation(int width,int height)
        {
            base.Building.Foundation = new Foundation(width,height,FoundationType.HouseFoundation);
            return Message.Foundation + Message.SuccessMessage;
        }

       

        public override string BuildRoof(int width, int height)
        {
            //This house is called basic due to the notion that the roof must be equal to or biuggerthan the foundation, which , in many cases, may not be exactly the case. 
            //This is a specific implementation of the abstract method which makes the existance of such a method meaningfull. The builder will hide the many different methods from the user I guess.
            if (base.Building.Foundation != null)
            {
                if (base.Building.Foundation.Width > width)
                {
                    return (Message.WrongRoofSize + "Please see the value input for roof width!");
                }
                if (base.Building.Foundation.Height > height)
                {
                    return (Message.WrongRoofSize + "Please see the value input for roof height!");
                }

                base.Building.Roof = new Roof(width, height, RoofType.Classic);
                return Message.Roof + Message.SuccessMessage;

            }
            return Message.InvalidOperationOrder;

        }

        public override string BuildDecorations(List<string> decorations)
        {
           base.Building.AddDecorations(decorations);
            base.Building.AddDecoration("postbox");
            return Message.Decoration+Message.SuccessMessage;
        }
    }
}
