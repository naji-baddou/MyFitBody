import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AjouterSpecnutritionComponent } from './ajouter-specnutrition.component';

describe('AjouterSpecnutritionComponent', () => {
  let component: AjouterSpecnutritionComponent;
  let fixture: ComponentFixture<AjouterSpecnutritionComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AjouterSpecnutritionComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AjouterSpecnutritionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
