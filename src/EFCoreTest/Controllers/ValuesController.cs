using EFCoreTest.DTO;
using EFCoreTest.NewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace EFCoreTest.Controllers
{
    [Route("api/[controller]")]
    public class ValuesController : Controller
    {
        private readonly LivingContext _ctx;

        public ValuesController(LivingContext ctx)
        {
            _ctx = ctx;
        }

        // GET api/values/living
        [HttpGet("living")]
        public IEnumerable<Living> GetLiving()
        {
            var x = _ctx.Living.Take(5);
            return x;
        }

        // GET api/values/human
        [HttpGet("human")]
        public IEnumerable<HumanDto> GetHuman()
        {
            var x = _ctx.Living
                .Include(l => l.Human)
                .Take(5)
                .Select(h => h.ToHumanDto());
            return x;
        }

        // GET api/values/mammal
        [HttpGet("mammal")]
        public IEnumerable<MammalDto> GetMammal()
        {
            return _ctx.Living
                .Include(l => l.Mammal)
                .Take(5)
                .Select(h => h.ToMammalDto());
        }
    }
}
