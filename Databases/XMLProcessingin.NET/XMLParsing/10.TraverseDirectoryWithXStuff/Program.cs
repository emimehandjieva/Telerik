using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Xml.Linq;

namespace _10.TraverseDirectoryWithXStuff
{
    class Program
    {
        static void Main(string[] args)
        {
            string path = Environment.GetFolderPath(Environment.SpecialFolder.Desktop); ;

            var doc = new XDocument();
            var el = new XElement("dir");
            el.Add(new XAttribute("name", path));
            GetAllFilesAndFoldersRecursivelyXDocument(new DirectoryInfo(path), el);
            doc.Add(el);
            doc.Save("../../../../dirWithX.xml");
        }

        private static void GetAllFilesAndFoldersRecursivelyXDocument(DirectoryInfo path, XElement el)
        {
            var files = new XElement("files");

            try
            {
                foreach (FileInfo file in path.GetFiles())
                {
                    files.Add(new XElement("file", file.Name));
                }

                if (path.GetFiles().Any())
                {
                    el.Add(files);
                }
            }
            catch (IOException)
            {
                Console.WriteLine("Directory {0}  \n could not be accessed!", path.FullName);
                return;
            }

            // process each directory
            foreach (DirectoryInfo dir in path.GetDirectories())
            {
                var el1 = new XElement("dir");
                el1.Add(new XAttribute("name", dir.Name));
                el.Add(el1);
                GetAllFilesAndFoldersRecursivelyXDocument(dir, el1);
            }

        }
    }
}
