using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Builder.Constructors
{
    public class JuniorConstructor
    {
        private string name;
        public string Name { get { return this.name; } }

        public Builder.BuildingBuilder initiates
        {
            get
            {
                throw new System.NotImplementedException();
            }
            set
            {
            }
        }

        public JuniorConstructor(string name)
        {
            this.name = name; 
            //Now here we're playing God and creating out constructors, which will be managing the building of the building (hehe) . 
            //However we can't go around changing people's names and we can't let any client do so,so we're gonna leave only the getter public :)
        }

        public StringBuilder makeBuilding(BuildingBuilder builder ,TwoDimentionalProportions foundationSizes,TwoDimentionalProportions roofSizes,int floorCount,List<string> decorations)
        {
            
            StringBuilder responseMessage = new StringBuilder();
            responseMessage.Append(builder.BuildFoundation(foundationSizes.width,foundationSizes.height));
            responseMessage.Append("\n"+builder.BuildFloors(floorCount));
            responseMessage.Append("\n" + builder.BuildRoof(roofSizes.width, roofSizes.height));
            responseMessage.Append("\n" + builder.BuildDecorations(decorations));
            var buildingTypeHolder = builder.Building.GetType().ToString().Split('.');
            responseMessage.Append(("\n" + buildingTypeHolder[buildingTypeHolder.Length-1])+" "+Message.SuccessMessage);

            return responseMessage;
        }
    }
}
