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
    public class repasController : ApiController
    {
        private MyFitBodyEntities db = new MyFitBodyEntities();

        // GET: api/repas
        public List<RepaViewModel> Getrepas()
        {
            List<RepaViewModel> rep = new List<RepaViewModel>();
            var rp = db.repas.ToList();
            foreach (var n in rp)
            {
                RepaViewModel rvm = new RepaViewModel();
                rvm.description = n.description;
                rvm.label = n.label;
                rvm.photo= n.photo;
                rvm.idSpecN = n.idSpecN;
                rvm.label_typeRepas = n.label_typeRepas;
                rep.Add(rvm);
            }

            return rep;
        }

        // GET: api/repas/5
        [ResponseType(typeof(repas))]
        public IHttpActionResult Getrepas(string id)
        {
            repas repas = db.repas.Find(id);
            RepaViewModel rep = new RepaViewModel();

            if (repas == null)
            {
                return NotFound();
            }
            else
            {
                rep.description = repas.description;
                rep.label = repas.label;
                rep.photo = repas.photo;
                rep.idSpecN = repas.idSpecN;
                rep.label_typeRepas = repas.label_typeRepas;
                return Ok(rep);
            }


        }

        // PUT: api/repas/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putrepas(string id, repas repas)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != repas.label)
            {
                return BadRequest();
            }

            db.Entry(repas).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!repasExists(id))
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

        // POST: api/repas
        [ResponseType(typeof(repas))]
        public IHttpActionResult Postrepas(repas repas)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.repas.Add(repas);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (repasExists(repas.label))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = repas.label }, repas);
        }

        // DELETE: api/repas/5
        [ResponseType(typeof(repas))]
        public IHttpActionResult Deleterepas(string id)
        {
            repas repas = db.repas.Find(id);
            if (repas == null)
            {
                return NotFound();
            }

            db.repas.Remove(repas);
            db.SaveChanges();

            return Ok(repas);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool repasExists(string id)
        {
            return db.repas.Count(e => e.label == id) > 0;
        }
    }
}