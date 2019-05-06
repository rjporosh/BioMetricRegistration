using AutoMapper;
using BioMetric.Models.ViewModel;
using BioMetric.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BioMetric.Models;

using System.Web.Mvc;

namespace BioMetric.Controllers
{
    public class BioMetricController : Controller
    {

        private Bio_MetricRepository _Manager;

        public BioMetricController()
        {
            _Manager = new Bio_MetricRepository();
        }
        string message = "";
        bool status = false;


        [HttpPost]

        public JsonResult Create([Bind] Bio_MetricVM vmObj)
        {

            


            int isSaved = 0;

            if (ModelState.IsValid)
            {


                var result = Mapper.Map<tbl_Registration>(vmObj);

              

                isSaved = _Manager.Add(result);
                if (isSaved > 0)
                {
                    status = true;
                    message = "Succesfully Registered";
                }
                else
                {
                    status = true;
                    message = "Error! Please try again.";
                }

                return new JsonResult { Data = new { status = status, message = message } };
            }

            else
            {
                status = false;
                message = "Student Allready Exsists !!!";
                return new JsonResult { Data = new { status = status, message = message } };
            }




        }


        // GET: BioMetric
        public ActionResult Index()
        {
            return View();
        }
    }

    
}