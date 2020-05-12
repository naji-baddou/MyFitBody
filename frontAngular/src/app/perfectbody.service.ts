import { Injectable } from "@angular/core";
import { HttpClient } from "@angular/common/http";

@Injectable({
  providedIn: "root",
})
export class PerfectbodyService {
  constructor(private http: HttpClient) {}
  nav: false;
  footer: false;
  getUsers() {
    return this.http.get("http://localhost:51029/api/clients");
  }
  getExercice() {
    return this.http.get("http://localhost:51029/api/exercices");
  }

  searchUser(query) {
    return this.http.get(`http://localhost:51029/api/clients?q=${query}`);
  }
  //coach
  getCoach() {
    return this.http.get("http://localhost:51029/api/coaches");
  }
  //repas
  getRepas() {
    return this.http.get("http://localhost:51029/api/repas");
  }
  //specNutritions
  getspecNutritions() {
    return this.http.get("http://localhost:51029/api/specNutritions");
  }
}
