//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BioMetric.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_Registration
    {
        public Nullable<long> ID { get; set; }
        public string RegistrationNumber { get; set; }
        public string FullName { get; set; }
        public byte[] Photo { get; set; }
        public byte[] FingerPrint { get; set; }
        public int iid { get; set; }
    }
}
