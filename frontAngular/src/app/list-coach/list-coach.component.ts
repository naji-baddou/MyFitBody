import { PerfectbodyService } from "./../perfectbody.service";
import { Component, OnInit } from "@angular/core";
@Component({
  selector: "app-list-coach",
  templateUrl: "./list-coach.component.html",
  styleUrls: ["./list-coach.component.css"],
})
export class ListCoachComponent implements OnInit {
  coaches: any[] = [];
  resultecoah: any[] = [];
  mySearch: Number;
  constructor(private perfectbodyservice: PerfectbodyService) {}

  ngOnInit() {
    this.getCoach();
  }

  getCoach() {
    this.perfectbodyservice.getCoach().subscribe((res: any[]) => {
      this.coaches = res;
      console.log(res);
    });
  }
}
