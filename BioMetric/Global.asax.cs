using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using AutoMapper;
using BioMetric.Models;
using BioMetric.Models.ViewModel;
using System.Web.Security;
using System.Web.Script.Serialization;

namespace BioMetric
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            Mapper.Initialize(configaration =>
            {

                // For Bio-Metric Registration

                configaration.CreateMap<tbl_Registration, Bio_MetricVM>();
                configaration.CreateMap<Bio_MetricVM, tbl_Registration>();
            });
        }
    }
}
