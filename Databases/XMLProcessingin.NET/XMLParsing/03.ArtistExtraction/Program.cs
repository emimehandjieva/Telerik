using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using FileOpener;

namespace _03.ArtistExtraction
{
    class Program
    {
        static void Main(string[] args)
        {

            XmlDocument xml = XmlFileOpener.OpenFile(("../../../../catalog.xml"));
            XmlElement catalog = xml.DocumentElement;
            string query = "/catalog/album/artist";
            XmlNodeList authors = catalog.SelectNodes(query);
            HashSet<string> uniqueAuthors = new HashSet<string>();
            foreach (XmlNode author in authors)
            {
                uniqueAuthors.Add(author.InnerText);
            }

            foreach (var uniqueAuthor in uniqueAuthors)
            {
                string currentQuery = string.Format("//*[text()[contains(.,'{0}')]]", uniqueAuthor);
                XmlNodeList currentAuthorAlbums = xml.SelectNodes(currentQuery);
                Console.WriteLine(uniqueAuthor + ":" + currentAuthorAlbums.Count);
            }
        }

    }
}
