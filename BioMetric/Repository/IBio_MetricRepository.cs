﻿using BioMetric.Models;
using BioMetric.Repository.BaseRepo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading;
using System.Web;
namespace BioMetric.Repository
{
    public interface IBio_MetricRepository : IRepository<tbl_Registration>
    {
    }

    public class Bio_MetricRepository : Repository<tbl_Registration>, IBio_MetricRepository
    {
        public IQueryable<tbl_Registration> Read()
        {
            var identity = (ClaimsPrincipal)Thread.CurrentPrincipal;
            string current = (identity.Identity.Name).Split('&')[0];
            //return ReadAll().Where(m => m.AddedBy == current);
            return ReadAll();
        }
    }
}