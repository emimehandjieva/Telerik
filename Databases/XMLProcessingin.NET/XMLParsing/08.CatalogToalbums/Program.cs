using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace _08.CatalogToalbums
{
    class Program
    {
        static void Main(string[] args)
        {
           

            XmlWriterSettings objSetting = new XmlWriterSettings();
            objSetting.Indent = true;
            objSetting.NewLineOnAttributes = true;

            using (var reader = XmlReader.Create("../../../../catalog.xml"))
            {
                var writer = XmlWriter.Create("../../../../albums.xml", objSetting);
                using (writer)
                {
                    writer.WriteStartDocument();
                    writer.WriteStartElement("albums");

                    while (reader.Read())
                    {
                        if (reader.IsStartElement())
                        {
                            if (reader.Name == "album")
                            {
                                writer.WriteStartElement("album");
                            }
                            else if (reader.Name == "name")
                            {
                                reader.Read();
                                writer.WriteElementString("name", reader.Value);
                            }
                            else if (reader.Name == "artist")
                            {
                                reader.Read();
                                writer.WriteElementString("artist", reader.Value);
                            }
                        }

                        if (!reader.IsStartElement())
                        {
                            if (reader.Name == "album")
                            {
                                writer.WriteEndElement();
                            }
                        }
                    }

                    writer.WriteEndElement();
                    writer.WriteEndDocument();
                }
            }

        }
    }
}
