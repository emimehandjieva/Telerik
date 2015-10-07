using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace _07.TxtToXML
{
    class Program
    {
        static void Main(string[] args)
        {

            var people = GetPeopleFromTxt();
            var xml = new XDocument(new XDeclaration("1.0", "utf-8", "yes"));
            var root = new XElement("people");
            foreach (Person human in people)
            {
                var person = new XElement("person");
                person.Add(new  XElement("name"),human.Name);
                person.Add(new XElement("address"), human.Address);
                person.Add(new XElement("phone"), human.Phone);
                root.Add(person);
            }

            xml.Add(root);
            Console.WriteLine(xml);
            xml.Save("../../../../people.xml");
        }

        public static List<Person> GetPeopleFromTxt()
        {
            var people = new List<Person>();
            using (StreamReader reader = new StreamReader("../../../../people.txt"))
            {
                while (!reader.EndOfStream)
                {
                    var person = new Person();
                    person.Name = reader.ReadLine();
                    person.Address = reader.ReadLine();
                    person.Phone = reader.ReadLine();
                    people.Add(person);
                }

            }

            return people;
        }
    }
}
