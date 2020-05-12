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
    public class questionsController : ApiController
    {
        private MyFitBodyEntities db = new MyFitBodyEntities();

        // GET: api/questions
        public List<questionViewModel> Getquestions()
        {
            //return db.questions;
            List<questionViewModel> questionlist = new List<questionViewModel>();
            var qu = db.questions.ToList();
            foreach (var n in qu)
            {
                questionViewModel qvm = new questionViewModel();
                qvm.id_question = n.id_question;
                qvm.label = n.label;
                qvm.idGestionnaire = n.idGestionnaire;
                questionlist.Add(qvm);
                
            }

            return questionlist;
        }


        // GET: api/questions/5
        [ResponseType(typeof(questions))]
        public IHttpActionResult Getquestions(int id)
        {
            questions questions = db.questions.Find(id);
            questionViewModel qvm = new questionViewModel();
            if (questions == null)
            {
                return NotFound();
            }

            else
            {
                qvm.id_question = questions.id_question;
                qvm.idGestionnaire = questions.idGestionnaire;
                qvm.label = questions.label;
                return Ok(qvm);
            }
        }

        // PUT: api/questions/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putquestions(int id, questions questions)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != questions.id_question)
            {
                return BadRequest();
            }

            db.Entry(questions).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!questionsExists(id))
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

        // POST: api/questions
        [ResponseType(typeof(questions))]
        public IHttpActionResult Postquestions(questions questions)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.questions.Add(questions);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = questions.id_question }, questions);
        }

        // DELETE: api/questions/5
        [ResponseType(typeof(questions))]
        public IHttpActionResult Deletequestions(int id)
        {
            questions questions = db.questions.Find(id);
            if (questions == null)
            {
                return NotFound();
            }

            db.questions.Remove(questions);
            db.SaveChanges();

            return Ok(questions);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool questionsExists(int id)
        {
            return db.questions.Count(e => e.id_question == id) > 0;
        }
    }
}