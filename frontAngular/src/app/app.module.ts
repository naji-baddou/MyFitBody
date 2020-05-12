import { from } from "rxjs";
import { HttpClient } from "@angular/common/http";
import { PerfectbodyService } from "./perfectbody.service";
import { ListeExercicesComponent } from "./liste-exercices/liste-exercices.component";
import { BrowserModule } from "@angular/platform-browser";
import { NgModule } from "@angular/core";

import { AppRoutingModule } from "./app-routing.module";
import { AppComponent } from "./app.component";
import { NavComponent } from "./shared/nav/nav.component";
import { FooterComponent } from "./shared/footer/footer.component";
import { AccueilComponent } from "./accueil/accueil.component";
import { LoginComponent } from "./login/login.component";
import { CreatAccontComponent } from "./creat-accont/creat-accont.component";
import { HomeComponent } from "./home/home.component";
import { ListeRepasComponent } from "./liste-repas/liste-repas.component";
import { DetailRepasComponent } from "./detail-repas/detail-repas.component";
import { DetailExercicesComponent } from "./detail-exercices/detail-exercices.component";
import { ListCoachComponent } from "./list-coach/list-coach.component";
import { ListSpecnutritionComponent } from "./list-specnutrition/list-specnutrition.component";
import { ListUsersComponent } from "./list-users/list-users.component";
import { AjouterRepasComponent } from "./ajouter-repas/ajouter-repas.component";
import { AjouterExerciceComponent } from "./ajouter-exercice/ajouter-exercice.component";
import { AjouterCoachComponent } from "./ajouter-coach/ajouter-coach.component";
import { AjouterSpecnutritionComponent } from "./ajouter-specnutrition/ajouter-specnutrition.component";
import { QueSommeNousComponent } from "./que-somme-nous/que-somme-nous.component";
import { ConditionsPerfectbodyComponent } from "./conditions-perfectbody/conditions-perfectbody.component";
import { ERRORComponent } from "./error/error.component";
import { HttpClientModule } from "@angular/common/http";

@NgModule({
  declarations: [
    AppComponent,
    NavComponent,
    FooterComponent,
    AccueilComponent,
    LoginComponent,
    CreatAccontComponent,
    HomeComponent,
    ListeRepasComponent,
    DetailRepasComponent,
    ListeExercicesComponent,
    DetailExercicesComponent,
    ListCoachComponent,
    ListSpecnutritionComponent,
    ListUsersComponent,
    AjouterRepasComponent,
    AjouterExerciceComponent,
    AjouterCoachComponent,
    AjouterSpecnutritionComponent,
    QueSommeNousComponent,
    ConditionsPerfectbodyComponent,
    ERRORComponent,
  ],
  imports: [HttpClientModule, BrowserModule, AppRoutingModule],
  providers: [],
  bootstrap: [AppComponent],
})
export class AppModule {}
