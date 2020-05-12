import { ERRORComponent } from "./error/error.component";
import { QueSommeNousComponent } from "./que-somme-nous/que-somme-nous.component";
import { ConditionsPerfectbodyComponent } from "./conditions-perfectbody/conditions-perfectbody.component";
import { ListCoachComponent } from "./list-coach/list-coach.component";
import { ListSpecnutritionComponent } from "./list-specnutrition/list-specnutrition.component";
import { HomeComponent } from "./home/home.component";
import { AccueilComponent } from "./accueil/accueil.component";
import { CreatAccontComponent } from "./creat-accont/creat-accont.component";
import { LoginComponent } from "./login/login.component";
import { AjouterCoachComponent } from "./ajouter-coach/ajouter-coach.component";
import { NgModule, Component } from "@angular/core";
import { Routes, RouterModule } from "@angular/router";
import { ListeRepasComponent } from "./liste-repas/liste-repas.component";
import { ListeExercicesComponent } from "./liste-exercices/liste-exercices.component";
import { ListUsersComponent } from "./list-users/list-users.component";
import { from } from "rxjs";
const routes: Routes = [
  { path: "", component: AccueilComponent },
  { path: "Login", component: LoginComponent },
  { path: "creat-accompt", component: CreatAccontComponent },
  { path: "home", component: HomeComponent },
  { path: "repas-list", component: ListeRepasComponent },
  { path: "exercices-list", component: ListeExercicesComponent },
  { path: "all-users", component: ListUsersComponent },
  { path: "add-coach", component: AjouterCoachComponent },
  { path: "coach-list", component: ListCoachComponent },
  { path: "spec-list", component: ListSpecnutritionComponent },
  { path: "Conditions-perfectbody", component: ConditionsPerfectbodyComponent },
  { path: "que-somme-nous", component: QueSommeNousComponent },
  { path: "**", component: ERRORComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
