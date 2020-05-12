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
    
    public class clientsController : ApiController
    {
        private MyFitBodyEntities db = new MyFitBodyEntities();

        // GET: api/clients
        public List<clientViewModel> Getclients()
        {
            //return db.clients;
            List<clientViewModel> rep = new List<clientViewModel>();
            var cm = db.clients.ToList();
            foreach (var n in cm)
            {
                clientViewModel rvm = new clientViewModel();
                rvm.idClient = n.idClient;
                rvm.nom = n.nom;    
                rvm.photo = n.photo;
                rvm.prenom = n.prenom;
                rvm.date = n.date;
                //rvm.username = n.username;
                //rvm.password = n.password;
                
                rep.Add(rvm);
            }

            return rep;
        }

        // GET: api/clients/5
        [ResponseType(typeof(clients))]
        public IHttpActionResult Getclients(int id)
        {
            
            clients clients = db.clients.Find(id);
            clientViewModel rvm = new clientViewModel();
            if (clients == null)
            {
                return NotFound();
            }
            else
            {
                rvm.idClient = clients.idClient;
                rvm.nom = clients.nom;
               
                rvm.photo = clients.photo;
                rvm.prenom = clients.prenom;
                rvm.date = clients.date;
                //rvm.username = clients.username;
                //rvm.password = clients.password;
                
                return Ok(rvm);
            }
        }

        // PUT: api/clients/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putclients(int id, clients clients)
        {
            //if (!ModelState.IsValid)
            //{
            //    return BadRequest(ModelState);
            //}

            if (id != clients.idClient)
            {
                return BadRequest();
            }

            db.Entry(clients).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!clientsExists(id))
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

        // POST: api/clients
        [ResponseType(typeof(clients))]
        public IHttpActionResult Postclients(clients clients)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.clients.Add(clients);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = clients.idClient }, clients);
        }
        //pour les reponcss
        // POST: api/clients
        //[HttpPost]
        //[ResponseType(typeof(clients))]
        //public IHttpActionResult PostReponseclients(int client, clients cln)
        //{
        //    clients cl = new clients();
        //    cl=db.clients.FirstOrDefault(c => c.idClient == client);

        //    foreach(var r in cln.reponses)
        //    {
        //        reponses rep = new reponses();
        //        rep.reponse = r.reponse;
        //        rep.id_question = r.id_question;
        //        cl.reponses.Add(rep);
        //        db.SaveChanges();
        //    }

        //    return CreatedAtRoute("DefaultApi", new { id = cln.idClient }, cln);
        //}

        // DELETE: api/clients/5
        [ResponseType(typeof(clients))]
        public IHttpActionResult Deleteclients(int id)
        {
            clients clients = db.clients.Find(id);
            if (clients == null)
            {
                return NotFound();
            }

            db.clients.Remove(clients);
            db.SaveChanges();

            return Ok(clients);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool clientsExists(int id)
        {
            return db.clients.Count(e => e.idClient == id) > 0;
        }
    }
}