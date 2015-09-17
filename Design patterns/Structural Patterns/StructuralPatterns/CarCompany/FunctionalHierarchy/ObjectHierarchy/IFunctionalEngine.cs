using System.Security.Cryptography.X509Certificates;

namespace CarCompany.BasicHierarchy
{
    public interface IFunctionalEngine
    {
        int Size { get; }
        bool IsTurbo { get; }
        void Start();
        void Stop();
        void IncreasePower();
        void DecreasePower();
    }
}