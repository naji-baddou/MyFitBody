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
    public class specNutritionsController : ApiController
    {
        private MyFitBodyEntities db = new MyFitBodyEntities();

        // GET: api/specNutritions
        public List<SpecNutritionViewModel> GetspecNutrition()
        {
             List<SpecNutritionViewModel> spec = new List<SpecNutritionViewModel>();
            var cm = db.specNutrition.ToList();
            foreach (var n in cm)
            {
                SpecNutritionViewModel Cvm = new SpecNutritionViewModel();
                Cvm.idSpecN = n.idSpecN;
                Cvm.nom = n.nom;
                Cvm.prenom = n.prenom;
                Cvm.username = n.username;
                Cvm.password = n.password;
                Cvm.email = n.email;
                Cvm.photo = n.photo;
                Cvm.bio = n.bio;

                spec.Add(Cvm);
            }

            return spec;
        }

        // GET: api/specNutritions/5
        [ResponseType(typeof(specNutrition))]
        public IHttpActionResult GetspecNutrition(int id)
        {
            specNutrition specNutrition = db.specNutrition.Find(id);
            SpecNutritionViewModel Cvm = new SpecNutritionViewModel();
            if (specNutrition == null)
            {
                
                return NotFound();
            }
            else
            {
                Cvm.idSpecN = specNutrition.idSpecN;
                Cvm.nom = specNutrition.nom;
                Cvm.prenom = specNutrition.prenom;
                Cvm.username = specNutrition.username;
                Cvm.password = specNutrition.password;
                Cvm.email = specNutrition.email;
                Cvm.photo = specNutrition.photo;
                Cvm.bio = specNutrition.bio;
            }

            return Ok(Cvm);
        }

        // PUT: api/specNutritions/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutspecNutrition(int id, specNutrition specNutrition)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != specNutrition.idSpecN)
            {
                return BadRequest();
            }

            db.Entry(specNutrition).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!specNutritionExists(id))
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

        // POST: api/specNutritions
        [ResponseType(typeof(specNutrition))]
        public IHttpActionResult PostspecNutrition(specNutrition specNutrition)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.specNutrition.Add(specNutrition);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = specNutrition.idSpecN }, specNutrition);
        }

        // DELETE: api/specNutritions/5
        [ResponseType(typeof(specNutrition))]
        public IHttpActionResult DeletespecNutrition(int id)
        {
            specNutrition specNutrition = db.specNutrition.Find(id);
            if (specNutrition == null)
            {
                return NotFound();
            }

            db.specNutrition.Remove(specNutrition);
            db.SaveChanges();

            return Ok(specNutrition);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool specNutritionExists(int id)
        {
            return db.specNutrition.Count(e => e.idSpecN == id) > 0;
        }
    }
}