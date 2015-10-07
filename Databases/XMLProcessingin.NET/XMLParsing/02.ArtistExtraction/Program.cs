using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using FileOpener;

namespace _02.ArtistExtraction
{
    class Program
    {

        static void Main(string[] args)
        {
            XmlDocument xml = XmlFileOpener.OpenFile("../../../../catalog.xml");
            XmlElement catalog = xml.DocumentElement;
            Hashtable artists = GetArtists(catalog);

            foreach (DictionaryEntry artist in artists)
            {
                Console.WriteLine(artist.Key + ":" + artist.Value);
            }
        }

        private static Hashtable GetArtists(XmlElement catalog)
        {
            Hashtable result = new Hashtable();
            foreach (XmlElement album in catalog)
            {
                var currentArtist = album["artist"].InnerText;
                if (result.ContainsKey(currentArtist))
                {

                    result[currentArtist] = (int)result[currentArtist] + 1;
                }
                else
                {
                    result.Add(currentArtist, 1);
                }
            }
            return result;

        }

    }
}
