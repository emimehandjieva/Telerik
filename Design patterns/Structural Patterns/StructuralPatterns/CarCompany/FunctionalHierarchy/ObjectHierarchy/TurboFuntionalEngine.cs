using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarCompany.BasicHierarchy
{
    public class TurboFunctionalEngine : AbstractFunctionalEngine
    {
        public TurboFunctionalEngine(int size)
            : base(size, true)
        {
        }
    }
}
