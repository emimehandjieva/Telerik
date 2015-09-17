using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Builder.Buildings.BuildingBlocks;

namespace Builder
{
    public abstract class BuildingBuilder
    { //Building can' be initialized without creating an instance opf the building because that is the only way I could think of invoking a derivative class for this one
        //All methods return string to simulate some workd being done
        private Building building;

        public Building Building
        {
            get { return this.building; }
            set { this.building = value; }
        }

        public SkyScraper builds
        {
            get
            {
                throw new System.NotImplementedException();
            }
            set
            {
            }
        }
    
        internal BuildingBuilder(Building buil)
        {
            this.Building = buil;
        }

        public abstract string BuildFoundation(int width, int height);

        public virtual string BuildFloors(int floorCount)
        {
            //Virtual, cuz someone might want to implement something else as well as that part , which , I guess, is obligatory
            if (this.Building.Foundation != null)
            {
                if (floorCount > 0)
                {

                    this.Building.Floors = floorCount;
                    return "Floors " + Message.SuccessMessage;
                }
                else
                {
                    return Message.InvalidFloorCount;
                }
            }
            else
            {
                return Message.InvalidOperationOrder;
            }
        }
        public abstract string BuildRoof(int width, int height);
        public abstract string BuildDecorations(List<string> decorations);
    }
}
