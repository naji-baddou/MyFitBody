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
    public class reponsesController : ApiController
    {
        private MyFitBodyEntities db = new MyFitBodyEntities();

        // GET: api/reponses
        public List<reponses> Getreponses()
        {
            List<reponses> rep = new List<reponses>();
            var cr = db.reponses.ToList();
            foreach (var n in cr)
            {
                reponses rvm = new reponses();
                rvm.idReponse = n.idReponse;
                rvm.reponse = n.reponse;
                rvm.juste = n.juste;
                rvm.id_question = n.id_question;
              
                rep.Add(rvm);
            }
           
            return (rep);
        }

        // GET: api/reponses/5
        [ResponseType(typeof(reponses))]
        public IHttpActionResult Getreponses(int id)
        {
            reponses reponses = db.reponses.Find(id);
            reponses repo = new reponses();
            if (reponses == null)
            {
                return NotFound();
            }
            else
            {
                repo.idReponse = reponses.idReponse;
                repo.reponse = reponses.reponse;
                repo.juste = reponses.juste;
                repo.id_question = reponses.id_question;

                return Ok(repo);

            }
           
        }

        // PUT: api/reponses/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putreponses(int id, reponses reponses)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != reponses.idReponse)
            {
                return BadRequest();
            }

            db.Entry(reponses).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!reponsesExists(id))
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

        // POST: api/reponses
        [ResponseType(typeof(reponses))]
        public IHttpActionResult Postreponses(reponses reponses)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.reponses.Add(reponses);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = reponses.idReponse }, reponses);
        }

        // DELETE: api/reponses/5
        [ResponseType(typeof(reponses))]
        public IHttpActionResult Deletereponses(int id)
        {
            reponses reponses = db.reponses.Find(id);
            if (reponses == null)
            {
                return NotFound();
            }

            db.reponses.Remove(reponses);
            db.SaveChanges();

            return Ok(reponses);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool reponsesExists(int id)
        {
            return db.reponses.Count(e => e.idReponse == id) > 0;
        }
    }
}