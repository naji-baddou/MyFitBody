using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using PerfectBody.DataModel;
using PerfectBody.Models;

namespace PerfectBody.Controllers
{
    public class exercicesController : ApiController
    {
        private MyFitBodyEntities db = new MyFitBodyEntities();
        List<ExerciceViewModel> evm = new List<ExerciceViewModel>();

        // GET: api/exercices
        public List<ExerciceViewModel> Getexercices()
        {
           var le = db.exercices.ToList();
            foreach (var n in le)
            {
                ExerciceViewModel Evm = new ExerciceViewModel();
                Evm.idExercice = n.idExercice;
                Evm.duree = n.duree;
                Evm.freqence = n.freqence;
                Evm.idCoach = n.idCoach;

                evm.Add(Evm);

            }
            return (evm);


        }

        // GET: api/exercices/5
        [ResponseType(typeof(exercices))]
        public IHttpActionResult Getexercices(int id)
        {
            exercices exercice = db.exercices.Find(id);
             ExerciceViewModel Evm = new ExerciceViewModel();
            if (exercice == null)
            {
               
                return NotFound();
            }

            
            else
            {
                Evm.idExercice = exercice.idExercice;
                Evm.duree = exercice.duree;
                Evm.freqence = exercice.freqence;
                Evm.idCoach = exercice.idCoach;
                return Ok(Evm);
            }
            
        }

        // PUT: api/exercices/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putexercices(int id, exercices exercices)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != exercices.idExercice)
            {
                return BadRequest();
            }

            db.Entry(exercices).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!exercicesExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/exercices
        [ResponseType(typeof(exercices))]
        public IHttpActionResult Postexercices(exercices exercices)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.exercices.Add(exercices);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = exercices.idExercice }, exercices);
        }

        // DELETE: api/exercices/5
        [ResponseType(typeof(exercices))]
        public IHttpActionResult Deleteexercices(int id)
        {
            exercices exercices = db.exercices.Find(id);
            if (exercices == null)
            {
                return NotFound();
            }

            db.exercices.Remove(exercices);
            db.SaveChanges();

            return Ok(exercices);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool exercicesExists(int id)
        {
            return db.exercices.Count(e => e.idExercice == id) > 0;
        }
    }
}