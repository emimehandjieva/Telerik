using FileOpener;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Linq;
using System.Xml.Schema;

namespace _13.SchemaValidator
{
    class Program
    {
        static void Main(string[] args)
        {
            var schema = new XmlSchemaSet();
            schema.Add(string.Empty,"../../../../catalog.xsd");

            XDocument valid = XDocumentOpener.OpenFile("../../../../catalog.xml");
            XDocument invalid = XDocumentOpener.OpenFile("../../../../invalidCatalog.xml");
            Validate(valid, schema, "catalog.xml");
            Validate(invalid, schema, "invalidCatalog.xml");

        }

        private static void Validate(XDocument document, XmlSchemaSet schema, string fileName)
        {
            document.Validate(schema, (obj, ev) =>
            {
                Console.WriteLine("{0} : {2}", fileName, ev.Message);
            });
        }
    }
}
