using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarCompany.BasicHierarchy
{
    public abstract class AbstractFunctionalEngine : IFunctionalEngine
    {
        private int size;
        private bool isTurbo;
        private bool isRunning;
        private int power;
        private const int POWER_MAXIMUM = 10; //random pick,value not important

        public AbstractFunctionalEngine(int size, bool isTurbo)
        {
            this.size = size;
            this.isTurbo = isTurbo;
            this.isRunning = false; //safety reasons :D
            this.power = 0;
        }

        public virtual int Size
        {
            get {return this.size; }
        }

        public virtual bool IsTurbo
        {
            get {return this.isTurbo; }
        }

        public virtual void Start()
        {
            this.isRunning = true;
        }

        public virtual void Stop()
        {
            this.isRunning = false;
            this.power = 0;
        }

        public virtual void IncreasePower()
        {
            if (isRunning && (power < POWER_MAXIMUM)) 

            {
                power++;
            }
        }

        public virtual void DecreasePower()
        {
            if (isRunning && (power >0)) 
            {
                power--;
            }
        }

        public override string ToString()
        {
            return this.GetType().Name + "(" + this.Size + ")";
        }
    }
}
