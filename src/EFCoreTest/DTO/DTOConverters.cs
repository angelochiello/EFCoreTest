using EFCoreTest.NewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EFCoreTest.DTO
{
    public static class DTOConverters
    {
        public static HumanDto ToHumanDto(this Living living)
        {
            if (living?.Human == null) return null;

            return new HumanDto
            {
                Id = living.Id,
                LifeExpect = living.LifeExpect,
                IsMale = living.Human.IsMale
            };
        }
        public static MammalDto ToMammalDto(this Living living)
        {
            if (living.Mammal == null) return null;

            return new MammalDto
            {
                Id = living.Id,
                LifeExpect = living.LifeExpect,
                MammalName = living.Mammal.MammalName
            };
        }
    }
}
