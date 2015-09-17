using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Builder
{
    public static class Message
    {
        public const string WrongRoofSize = "The size of a basic house's roof must be bigger than the size of the foundation!";
        public const string SuccessMessage = "successfully built!";
        public const string InvalidOperationOrder = "One operation preceeds another in an invalid order";
        public const string InvalidFloorCount = "Floor numbering must be grerater than 0!";

        public const string Roof = "Roof ";
        public const string Foundation = "Foundation ";
        public const string Floors = "Floors ";
        public const string Decoration = "Decoration ";
    }
}
