import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ListSpecnutritionComponent } from './list-specnutrition.component';

describe('ListSpecnutritionComponent', () => {
  let component: ListSpecnutritionComponent;
  let fixture: ComponentFixture<ListSpecnutritionComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ListSpecnutritionComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ListSpecnutritionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
