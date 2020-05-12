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
   
    public class coachesController : ApiController
    {
        private MyFitBodyEntities db = new MyFitBodyEntities();

        // GET: api/coaches
        public List<CoachViewModel> Getcoach()
        {
            //return db.coach;
            List<CoachViewModel> rep = new List<CoachViewModel>();
            var cm = db.coach.ToList();
            foreach (var n in cm)
            {
                CoachViewModel Cvm = new CoachViewModel();
                Cvm.idCoach = n.idCoach;
                Cvm.nom = n.nom;
                Cvm.prenom = n.prenom;
                Cvm.username = n.username;
                Cvm.password = n.password;
                Cvm.email = n.email;
                Cvm.photo = n.photo;
                Cvm.bio = n.bio;

                rep.Add(Cvm);
            }

            return rep;
        }

        // GET: api/coaches/5
        [ResponseType(typeof(coach))]
        public IHttpActionResult Getcoach(int id)
        {
            coach coach = db.coach.Find(id);
            CoachViewModel Cvm= new CoachViewModel();
            if (coach == null)
            {
                return NotFound();
            }
            else
            {
                Cvm.idCoach = coach.idCoach;
                Cvm.nom = coach.nom;
                Cvm.prenom = coach.prenom;
                Cvm.username = coach.username;
                Cvm.password = coach.password;
                Cvm.email = coach.email;
                Cvm.photo = coach.photo;
                Cvm.bio = coach.bio;
                return Ok(coach);
            }

            
        }

        // PUT: api/coaches/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putcoach(int id, coach coach)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != coach.idCoach)
            {
                return BadRequest();
            }

            db.Entry(coach).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!coachExists(id))
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

        // POST: api/coaches
        [ResponseType(typeof(coach))]
        public IHttpActionResult Postcoach(coach coach)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.coach.Add(coach);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = coach.idCoach }, coach);
        }

        // DELETE: api/coaches/5
        [ResponseType(typeof(coach))]
        public IHttpActionResult Deletecoach(int id)
        {
            coach coach = db.coach.Find(id);
            if (coach == null)
            {
                return NotFound();
            }

            db.coach.Remove(coach);
            db.SaveChanges();

            return Ok(coach);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool coachExists(int id)
        {
            return db.coach.Count(e => e.idCoach == id) > 0;
        }
    }
}