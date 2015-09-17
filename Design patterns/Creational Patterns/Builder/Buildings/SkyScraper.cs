using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Builder
{
    public class SkyScraper : Building
    {
        private List<string> companies;
        public SkyScraper(Foundation found, int floors, Roof roof) : base(found, floors, roof)
        {
            this.companies = new List<string>();
        }

        public SkyScraper()
        {
            this.companies = new List<string>();
        }

        public void AddCompanies(string companyName)
        {
            this.companies.Add(companyName);
        }
    }
}
