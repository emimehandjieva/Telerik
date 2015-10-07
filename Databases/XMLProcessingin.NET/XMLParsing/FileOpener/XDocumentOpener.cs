using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace FileOpener
{
    public static class XDocumentOpener
    {
        public static XDocument OpenFile(string path)
        {
            return XDocument.Load(path);
        }
    }
}
