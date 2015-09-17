using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Builder.Buildings.BuildingBlocks;

namespace Builder.Builders
{
    class SkyScraperBuilder : BuildingBuilder
    {
        public SkyScraperBuilder()
            : base(new SkyScraper())
        {
        }

        public override string BuildFoundation(int width, int height)
        {
            base.Building.Foundation = new Foundation(width, height, FoundationType.SkyscraperFoundation); //Cuz skyscrapers need stronger foundation. Now if foundations were more than enumerations, this would actually do some work, ruight
            return Message.Foundation + Message.SuccessMessage;
        }

        public override string BuildFloors(int floorCount)
        {
            if (base.Building.Foundation != null)
            {
                base.Building.Floors = floorCount;
                return Message.Floors + Message.SuccessMessage;
            }
            else
            {
                return Message.InvalidOperationOrder;
            }
        }

        public override string BuildRoof(int width, int height)
        {
            //Here we assume skyscraper may have some other form of covering people's head and leave the option for a smaller roof. Still, we need to have some foundation before the roof.
            //If I have time, I'll think of a way to make it better andnot copy and paste code.If not, sorry, I know...

            if (base.Building.Foundation != null)
            {
                base.Building.Roof = new Roof(width, height, RoofType.FancyAssWithSpikes);
                return Message.Roof + Message.SuccessMessage;

            }
            return Message.InvalidOperationOrder;

        }

        public override string BuildDecorations(List<string> decorations)
        {
            base.Building.AddDecorations(decorations);
            base.Building.AddDecoration("gargoyles"); // You know...for epicness
            base.Building.AddDecoration("columns");
            return Message.Decoration + Message.SuccessMessage;
        }
    }
}


