using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BioMetric.Models.ViewModel
{
    public class Bio_MetricVM
    {
        public long ID { get; set; }
        public string RegistrationNumber { get; set; }
        public string FullName { get; set; }
        public byte[] Photo { get; set; }
        public byte[] FingerPrint { get; set; }
    }
}