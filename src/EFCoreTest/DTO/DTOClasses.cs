using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EFCoreTest.DTO
{
    public class HumanDto
    {
        public int Id { get; set; }
        public int LifeExpect { get; set; }
        public bool IsMale { get; set; }
    }

    public class MammalDto
    {
        public int Id { get; set; }
        public int LifeExpect { get; set; }
        public string MammalName { get; set; }
    }

}
