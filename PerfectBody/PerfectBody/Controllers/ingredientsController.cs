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
    public class ingredientsController : ApiController
    {
        private MyFitBodyEntities db = new MyFitBodyEntities();

        // GET: api/ingredients
        public List<ingredientViewModel> Getingredients()
        {
            List<ingredientViewModel> rep = new List<ingredientViewModel>();
            var im = db.ingredients.ToList();
            foreach (var n in im)
            {
                ingredientViewModel Cvm = new ingredientViewModel();
                Cvm.nom = n.nom;
                Cvm.calories = n.calories;
                Cvm.label = n.label;
                rep.Add(Cvm);
            }

            return rep;
        }
    

        // GET: api/ingredients/5
        [ResponseType(typeof(ingredients))]
        public IHttpActionResult Getingredients(string id)
        {
            ingredients ingredients = db.ingredients.Find(id);
            ingredientViewModel ivm = new ingredientViewModel();
            if (ingredients == null)
            {
                return NotFound();
            }
            else
            {

                ivm.nom = ingredients.nom;
                ivm.calories = ingredients.calories;
                ivm.label = ingredients.label;
                return Ok(ivm);
            }
            
        }

        // PUT: api/ingredients/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putingredients(string id, ingredients ingredients)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != ingredients.nom)
            {
                return BadRequest();
            }

            db.Entry(ingredients).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ingredientsExists(id))
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

        // POST: api/ingredients
        [ResponseType(typeof(ingredients))]
        public IHttpActionResult Postingredients(ingredients ingredients)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.ingredients.Add(ingredients);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (ingredientsExists(ingredients.nom))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = ingredients.nom }, ingredients);
        }

        // DELETE: api/ingredients/5
        [ResponseType(typeof(ingredients))]
        public IHttpActionResult Deleteingredients(string id)
        {
            ingredients ingredients = db.ingredients.Find(id);
            if (ingredients == null)
            {
                return NotFound();
            }

            db.ingredients.Remove(ingredients);
            db.SaveChanges();

            return Ok(ingredients);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool ingredientsExists(string id)
        {
            return db.ingredients.Count(e => e.nom == id) > 0;
        }
    }
}