using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Builder
{
    class Warehouse : Building
    {
        public Warehouse(Foundation found, Roof roof) : base(found, 1, roof)
        {
        }
    }
}
