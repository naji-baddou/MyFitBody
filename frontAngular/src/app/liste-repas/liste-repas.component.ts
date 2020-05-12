import { PerfectbodyService } from "./../perfectbody.service";
import { Component, OnInit } from "@angular/core";

@Component({
  selector: "app-liste-repas",
  templateUrl: "./liste-repas.component.html",
  styleUrls: ["./liste-repas.component.css"],
})
export class ListeRepasComponent implements OnInit {
  repas: any[] = [];
  resulterepas: any[] = [];
  mySearch: Number;
  constructor(private perfectbodyservice: PerfectbodyService) {}

  ngOnInit() {
    this.getRepas();
  }

  getRepas() {
    this.perfectbodyservice.getRepas().subscribe((res: any[]) => {
      this.repas = res;
      console.log(res);
    });
  }
}
