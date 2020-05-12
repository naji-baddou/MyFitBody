using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PerfectBody.Models
{
    public class CoachViewModel
    {
        public int idCoach { get; set; }
        public string nom { get; set; }
        public string prenom { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public string email { get; set; }
        public string photo { get; set; }
        public string bio { get; set; }
       
    }
}