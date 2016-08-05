using System.Collections.Generic;

namespace EFCoreTest.NewModels
{
    public partial class Mammal
    {
        public Mammal()
        {
            Living = new HashSet<Living>();
        }

        public int Id { get; set; }
        public string MammalName { get; set; }

        public virtual ICollection<Living> Living { get; set; }
    }
}
