using AutoMapper;
using BioMetric.Models;
using BioMetric.Models.ViewModel;
using BioMetric.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BioMetric.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
       

            private Bio_MetricRepository _Manager;

            public HomeController()
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
                        message = "Succesfully Saved";
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
                    message = "Code Allready Exsists !!!";
                    return new JsonResult { Data = new { status = status, message = message } };
                }




            }
            public ActionResult Index()
            {
                return View();
            }
        }
    }
