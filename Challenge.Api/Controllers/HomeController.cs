using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace Challenge.Api.Controllers
{
    public class HomeController : Controller
    {
        private MercadoLibre.MercadoLibreService _mercadolibreService;
        private IHostingEnvironment _environment;

        public HomeController(MercadoLibre.MercadoLibreService mercadolibreService, IHostingEnvironment environment)
        {
            _mercadolibreService = mercadolibreService;
            _environment = environment;
        }

        public IActionResult Index()
        {
            
            return View("Index");
        }

        public IActionResult Generar()
        {
            var list = _mercadolibreService.Monedas.List();
            string jsonmonedas = JsonConvert.SerializeObject(list);
            string csvmonedas = string.Join(",",list.Where(l => l.todolar != null).Select(l => l.todolar.ratio.ToString(CultureInfo.InvariantCulture)));
            string basepath = _environment.ContentRootPath;
            string generadospath = System.IO.Path.Combine(basepath, "generados");
            if (!System.IO.Directory.Exists(generadospath))
                System.IO.Directory.CreateDirectory(generadospath);
            string jsonname = DateTime.Now.ToString("yyyyMMddHHmmss") + ".json";
            string csvname = DateTime.Now.ToString("yyyyMMddHHmmss") + ".csv";
            string jsonfilepath = System.IO.Path.Combine(generadospath, jsonname);
            string csvfilepath = System.IO.Path.Combine(generadospath, csvname);
            using (System.IO.StreamWriter file = new System.IO.StreamWriter(jsonfilepath))
            {                
                file.Write(jsonmonedas);
            }
            using (System.IO.StreamWriter file = new System.IO.StreamWriter(csvfilepath))
            {
                file.Write(csvmonedas);
            }
            return Ok(new { mensaje = "Se han generado los siguientes archivos", jsonpath = jsonfilepath, csvpath = csvfilepath });
        }
    }
}
