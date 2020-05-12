import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ConditionsPerfectbodyComponent } from './conditions-perfectbody.component';

describe('ConditionsPerfectbodyComponent', () => {
  let component: ConditionsPerfectbodyComponent;
  let fixture: ComponentFixture<ConditionsPerfectbodyComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ConditionsPerfectbodyComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ConditionsPerfectbodyComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
