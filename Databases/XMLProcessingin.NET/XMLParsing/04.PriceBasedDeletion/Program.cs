using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace _04.PriceBasedDeletion
{
    class Program
    {
        static void Main(string[] args)
        {
            XmlDocument xml = FileOpener.XmlFileOpener.OpenFile("../../../../catalog.xml");
            XmlElement catalog = xml.DocumentElement;
            string query = "/catalog/album[price>20]";
            XmlNodeList albumsToDelete = catalog.SelectNodes(query);
            foreach (XmlNode album in albumsToDelete)
            {
                catalog.RemoveChild(album);
            }

            Console.WriteLine(catalog.InnerXml);
            xml.Save("../../../../updatedCatalog.xml");
        }
    }
}
