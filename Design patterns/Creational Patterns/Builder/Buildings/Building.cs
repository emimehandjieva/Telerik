using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Runtime.Remoting.Messaging;
using System.Text;

namespace Builder
{
    public abstract class Building
    {
        private Foundation foundation;
        private int floors;
        private Roof roof;
        private List<string> decorations; 

        public Building(Foundation found,int floors, Roof roof)
        {
            this.Foundation = found;
            this.Floors = floors;
            this.Roof = roof;
            this.decorations = new List<string>();
        }

        public Building()
        {
            this.decorations = new List<string>();
        }

        public Foundation Foundation
        {
            get { return this.foundation; }
            set { this.foundation = value; }
        }

        public Roof Roof
        {
            get { return this.roof; }
            set { this.roof = value; }
        }

        public int Floors
        {
            get { return this.floors; }
            set
            {
                if (value > 0)
                {
                    this.floors = value;
                }
                else
                {
                    throw new ArgumentOutOfRangeException("Number of floors to build","Building floor number cannot be less than 1");
                }
            }
            
        }

        public void AddDecoration(string decor)
        {
            this.decorations.Add(decor);
        }

        public void AddDecorations(List<string> decorations)
        {
            this.decorations.AddRange(decorations);
        }


       
    }
}
