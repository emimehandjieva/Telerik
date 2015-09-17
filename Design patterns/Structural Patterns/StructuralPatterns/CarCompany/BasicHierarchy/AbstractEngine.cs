using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarCompany.BasicHierarchy
{
    public abstract class AbstractEngine : IEngine
    {
        private int size;
        private bool isTurbo;

        public AbstractEngine(int size, bool isTurbo)
        {
            this.size = size;
            this.isTurbo = isTurbo;
        }

        public virtual int Size
        {
            get {return this.size; }
        }

        public virtual bool IsTurbo
        {
            get {return this.isTurbo; }
        }

        public override string ToString()
        {
            return this.GetType().Name + "(" + this.Size + ")";
        }
    }
}
