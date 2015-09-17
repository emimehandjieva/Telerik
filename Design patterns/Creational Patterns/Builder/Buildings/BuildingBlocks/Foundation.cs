using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Builder.Buildings.BuildingBlocks;

namespace Builder
{
    public class Foundation
    {
        private int width;
        private int height;
        private FoundationType type;

        public Foundation(int width, int height,FoundationType type)
        {
            this.height = height;
            this.width = width;
            this.type = type;
        }

        //Once you get the foundation size you can't changeit that much, it's dangerous, so apart from the class constructor, you have no option to set it at a certain size.

        public int Width
        {
            get { return this.width; }
        }

        public int Height
        {
            get { return this.height; }
        }
    }
}
