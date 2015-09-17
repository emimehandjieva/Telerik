using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Builder.Buildings.BuildingBlocks;

namespace Builder
{
    public class Roof
    {
        public int width;
        public int height;
        public RoofType type;

        public Roof(int width, int height,RoofType type)
        {
            this.height = height;
            this.width = width;
            this.type = type;
        }
    }
}
