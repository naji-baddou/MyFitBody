import { PerfectbodyService } from "./../perfectbody.service";
import { Component, OnInit } from "@angular/core";

@Component({
  selector: "app-list-specnutrition",
  templateUrl: "./list-specnutrition.component.html",
  styleUrls: ["./list-specnutrition.component.css"],
})
export class ListSpecnutritionComponent implements OnInit {
  specs: any[] = [];
  resultespec: any[] = [];
  mySearch: Number;
  constructor(private perfectbodyservice: PerfectbodyService) {}

  ngOnInit() {
    this.getspecNutritions();
  }

  getspecNutritions() {
    this.perfectbodyservice.getspecNutritions().subscribe((res: any[]) => {
      this.specs = res;
      console.log(res);
    });
  }
}
