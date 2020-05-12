using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PerfectBody.Models
{
    public class ExerciceViewModel
    {
        public int idExercice { get; set; }
        public string duree { get; set; }
        public int freqence { get; set; }
        public int idCoach { get; set; }
    }
}