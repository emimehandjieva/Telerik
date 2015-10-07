using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using FileOpener;

namespace _05.SongTitleExtraction
{
    class Program
    {
        static void Main(string[] args)
        {
            //XmlDocument xml = XmlFileOpener.OpenFile("../../../../catalog.xml");
            //XmlElement catalog = xml.DocumentElement;
            //string query = "/catalog/album/songs/song";
            //XmlNodeList songList = catalog.SelectNodes(query); 
            //foreach (XmlNode songNode in songList)
            //{
            //    Console.WriteLine(songNode.InnerText);
            //}
            //using XPath is sorta cool once you get it,however we gotta use new things, don't we
            using (XmlReader reader = XmlReader.Create("../../../../catalog.xml"))
            {
                while (reader.Read())
                {
                    if (reader.Name=="title")
                    {
                        Console.WriteLine(reader.ReadElementString());
                    }
                }
            }

            //Okay, the reader is pretty cool, too, that was awesome and easy
        }
    }
}
