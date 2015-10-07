using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace _11.AlbumsFiveYearsAgo
{
    class Program
    {
        static void Main(string[] args)
        {
            XmlDocument xml = FileOpener.XmlFileOpener.OpenFile("../../../../catalog.xml");
            XmlElement catalog = xml.DocumentElement;
            string query = "/catalog/album[year="+(DateTime.Now.Year-5)+"]";
            XmlNodeList albumsFiveYearsAgo = catalog.SelectNodes(query);
            foreach (XmlNode item in albumsFiveYearsAgo)
            {

                XmlNodeList prices = item.SelectNodes("./price");
                foreach (XmlNode price in prices)
                {   
                    Console.WriteLine(price.InnerText);
                }
            }
        }
    }
}
