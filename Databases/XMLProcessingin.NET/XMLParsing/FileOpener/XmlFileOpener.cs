using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace FileOpener
{
    public class XmlFileOpener
    {
        public static XmlDocument OpenFile(string path)
        {
            XmlDocument xml = new XmlDocument();
            xml.Load(path);
            return xml;
        }
    }
}
