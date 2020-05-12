import { PerfectbodyService } from "./../perfectbody.service";
import { Component, OnInit } from "@angular/core";

@Component({
  selector: "app-liste-exercices",
  templateUrl: "./liste-exercices.component.html",
  styleUrls: ["./liste-exercices.component.css"],
})
export class ListeExercicesComponent implements OnInit {
  exercices: any[] = [];
  resultexercice: any[] = [];
  mySearch: Number;
  constructor(private perfectbodyservice: PerfectbodyService) {}

  ngOnInit() {
    this.getExercice();
  }

  getExercice() {
    this.perfectbodyservice.getExercice().subscribe((res: any[]) => {
      this.exercices = res;
      console.log(res);
    });
  }
}
