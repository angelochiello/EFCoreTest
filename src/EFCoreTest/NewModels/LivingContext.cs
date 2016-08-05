using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace EFCoreTest.NewModels
{
    public partial class LivingContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=.\SQLEXPRESS;Database=Living;Trusted_Connection=True;");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            new LivingConfiguration(modelBuilder.Entity<Living>());
            new HumanConfiguration(modelBuilder.Entity<Human>());
            new MammalConfiguration(modelBuilder.Entity<Mammal>());
        }


        public DbSet<Living> Living { get; set; }
        public DbSet<Human> Human { get; set; }
        public DbSet<Mammal> Mammal { get; set; }
    }

    public class LivingConfiguration
    {
        public LivingConfiguration(EntityTypeBuilder<Living> entityBuilder)
        {
        }
    }

    public class HumanConfiguration
    {
        public HumanConfiguration(EntityTypeBuilder<Human> entityBuilder)
        {
            entityBuilder.HasMany(e => e.Living)
                .WithOne(e => e.Human)
                .HasForeignKey(e => e.IdSpecificBeing)
                .OnDelete(Microsoft.EntityFrameworkCore.Metadata.DeleteBehavior.SetNull);
        }
    }

    public class MammalConfiguration
    {
        public MammalConfiguration(EntityTypeBuilder<Mammal> entityBuilder)
        {
            entityBuilder.HasMany(e => e.Living)
                .WithOne(e => e.Mammal)
                .HasForeignKey(e => e.IdSpecificBeing)
                .OnDelete(Microsoft.EntityFrameworkCore.Metadata.DeleteBehavior.SetNull);
        }
    }
}