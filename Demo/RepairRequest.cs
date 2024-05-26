//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Demo
{
    using System;
    using System.Collections.Generic;
    
    public partial class RepairRequest
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public RepairRequest()
        {
            this.RepairComment = new HashSet<RepairComment>();
        }
    
        public int ID { get; set; }
        public System.DateTime StartDate { get; set; }
        public Nullable<System.DateTime> CompletionDate { get; set; }
        public Nullable<int> MasterID { get; set; }
        public int ClientID { get; set; }
        public int TechModelID { get; set; }
        public int ProblemDescriptionID { get; set; }
        public int RequestStatusID { get; set; }
        public Nullable<int> RepairPartID { get; set; }
    
        public virtual ProblemDescription ProblemDescription { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RepairComment> RepairComment { get; set; }
        public virtual RepairPart RepairPart { get; set; }
        public virtual User User { get; set; }
        public virtual User User1 { get; set; }
        public virtual RequestStatus RequestStatus { get; set; }
        public virtual TechModel TechModel { get; set; }
    }
}
