namespace EFCoreTest.NewModels
{
    public partial class Living
    {
        public int Id { get; set; }
        public int? IdSpecificBeing { get; set; }
        public int LifeExpect { get; set; }
        public int Type { get; set; }

        public virtual Human Human { get; set; }
        public virtual Mammal Mammal { get; set; }
    }
}
