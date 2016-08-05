using System.Collections.Generic;

namespace EFCoreTest.NewModels
{
    public partial class Human
    {
        public Human()
        {
            Living = new HashSet<Living>();
        }

        public int Id { get; set; }
        public int CurrentAge { get; set; }
        public bool IsMale { get; set; }

        public virtual ICollection<Living> Living { get; set; }
    }
}
