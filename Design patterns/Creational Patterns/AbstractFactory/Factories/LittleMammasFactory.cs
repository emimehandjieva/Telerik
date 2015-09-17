using AbstractFactory.Toys;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace AbstractFactory.Factories
{
    public class LittleMammasFactory : AbstractToyFactory
    {
        private const decimal TeddyBearPrice = 25.99m;
        private const decimal BaloonBunchPrice = 9.99m;
        private const decimal DuckPrize = 15.50m;
        private const decimal FurbiePrize = 15.50m;

        public readonly List<Toy> LilMammasToys = new List<Toy>();

        public override TeddyBear MakeTeddyBear(int size)
        {
            TeddyBear teddy = new TeddyBear(TeddyBearPrice, size);

            var teddyPicture = new StringBuilder();
            teddyPicture.AppendLine("      ___");
            teddyPicture.AppendLine("    _(___)_");
            teddyPicture.AppendLine("   .' o o `. ");
            teddyPicture.AppendLine("   :  _O_  : ");
            teddyPicture.AppendLine("  `. \\_/ .'");
            teddyPicture.AppendLine("  .' ()o() `.");
            teddyPicture.AppendLine(":     ( )   :");

            teddy.Representation = teddyPicture;
            return teddy;
        }

        public override BaloonBunch MakeBaloon(int size)
        {
            BaloonBunch baloon = new BaloonBunch(BaloonBunchPrice, size);
            var baloonPicture = new StringBuilder();
            baloonPicture.AppendLine("   ..._  ,s$$$s.        ");
            baloonPicture.AppendLine(" .$$$$$$$s$$ss$$$$,     ");
            baloonPicture.AppendLine(" $$$sss$$$$s$$$$$$$     ");
            baloonPicture.AppendLine(" $$ss$$$$$$$$$$$$$$     ");
            baloonPicture.AppendLine(" '$$$s$$$$$$$$$$$$'     ");
            baloonPicture.AppendLine("  '$$$$$$$$$$$$$$'      ");
            baloonPicture.AppendLine("    S$$$$$$$$$$$'       ");
            baloonPicture.AppendLine("     '$$$$$$$$$'        ");
            baloonPicture.AppendLine("       '$$$$$'          ");
            baloonPicture.AppendLine("        '$$$'           ");
            baloonPicture.AppendLine("          ;             ");
            baloonPicture.AppendLine("         ;              ");
            baloonPicture.AppendLine("         ;              ");
            baloonPicture.AppendLine("         ',             ");
            baloonPicture.AppendLine("          ;             ");
            baloonPicture.AppendLine("         ,'             ");
            baloonPicture.AppendLine("         ;              ");
            baloonPicture.AppendLine("         ',             ");
            baloonPicture.AppendLine("          ',            ");
            baloonPicture.AppendLine("           ;            ");
            baloonPicture.AppendLine("          '             ");
            baloonPicture.AppendLine("        }               ");

            baloon.Representation = baloonPicture;
            return baloon;
        }

        public override Duck MakeDuck(int size)
        {
            var duck = new Duck(DuckPrize, size);
            StringBuilder duckPicture = new StringBuilder();
            duckPicture.AppendLine("       ..---..");
            duckPicture.AppendLine("     .'  _    `.");
            duckPicture.AppendLine(" __..'  (o)    : ");
            duckPicture.AppendLine("`..__          ; ");
            duckPicture.AppendLine("     `.       /  ");
            duckPicture.AppendLine("       ;      `..---...___  ");
            duckPicture.AppendLine("     .'                   `~-. .-')");
            duckPicture.AppendLine("    .                         ' _.' ");
            duckPicture.AppendLine("   :                           :");
            duckPicture.AppendLine("   \\                           '");
            duckPicture.AppendLine("    +                         J");
            duckPicture.AppendLine("     `._                   _.'");
            duckPicture.AppendLine("        `~--....___...---~' mh ");

            duck.Representation = duckPicture;
            return duck;
        }

        public override Furbie MakeFurbie(int size)
        {
            var furbie = new Furbie(FurbiePrize, size);
            var furbiePicture = new StringBuilder();
            furbiePicture.AppendLine("                      ,");
            furbiePicture.AppendLine("                  _ )\\|`(");
            furbiePicture.AppendLine("                  \\'/.'\\/(");
            furbiePicture.AppendLine("    ,-.___        |.',; ;.|");
            furbiePicture.AppendLine("   |,'---.'.      \';'}.; /      .'.---',|");
            furbiePicture.AppendLine("   ||     '.'.     \\{. ; /     .'.'     ||");
            furbiePicture.AppendLine("   ||       \\ \\_.--\" `` `\"--._/ /       || ");
            furbiePicture.AppendLine("   ||        ;'               ';        || ");
            furbiePicture.AppendLine("   |;       /  .-\"\"-:``:-\"\"-.   \\       ;|");
            furbiePicture.AppendLine("    \\._    |  /\\\\._\\/_.////\\   ;    _./ ");
            furbiePicture.AppendLine("      `'-:_|  `// o\\  // o\\'   |_:-'`");
            furbiePicture.AppendLine("          `|   \\__//  \\__//    |` ");
            furbiePicture.AppendLine("           \\    '--'.--.'--'     /");
            furbiePicture.AppendLine("            \\      /____\\       /");
            furbiePicture.AppendLine("            /'.    \'--'/     .'\\ ");
            furbiePicture.AppendLine("           ;   \\    '--'     /   ;");
            furbiePicture.AppendLine("          |     .           .     |");
            furbiePicture.AppendLine("          |                       |");
            furbiePicture.AppendLine("          ;                       ; ");
            furbiePicture.AppendLine("           \\ .-.--.-.   .-.--.-. / ");
            furbiePicture.AppendLine("            (  (  (  )-(  )  )  ) ");
            furbiePicture.AppendLine("             `\"`\"\"`\"\"`  `\"`\"\"`\"`");
            furbie.Representation = furbiePicture;
            return furbie;
        }
    }
}
