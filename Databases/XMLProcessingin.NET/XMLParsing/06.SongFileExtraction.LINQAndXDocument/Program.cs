using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using FileOpener;

namespace _06.SongFileExtraction.LINQAndXDocument
{
    class Program
    {
        static void Main(string[] args)
        {
            XDocument xml = XDocumentOpener.OpenFile("../../../../catalog.xml"); //Okay now this is useless, using another class, but since I did so in the rest of the tasks, I'm trying to have some sort of uniformity in my approach.I am aware it's stupid, but let's imagine there might be some additional validation in that file opener of mine or whatever

            var songs =
                from song in xml.Descendants("song") 
                 select song.Value;

            foreach (var song in songs)
            {
                Console.WriteLine(song);
            }
        }
    }
}
