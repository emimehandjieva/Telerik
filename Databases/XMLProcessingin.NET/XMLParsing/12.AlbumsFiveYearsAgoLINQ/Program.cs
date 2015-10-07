using FileOpener;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;
using System.Xml.Linq;

namespace _12.AlbumsFiveYearsAgoLINQ
{
    class Program
    {
        static void Main(string[] args)
        {
            XDocument xml = XDocumentOpener.OpenFile("../../../../catalog.xml");
            var albumsFiveYearsAgo =
                from album in xml.Descendants("album")
                where Convert.ToInt32(album.Element("year").Value) == Convert.ToInt32(DateTime.Now.Year - 5)
                select album.Element("price").Value;

            foreach (var item in albumsFiveYearsAgo)
            {
                Console.WriteLine(item);
            }
        }
    }
}
