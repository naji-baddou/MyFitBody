import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AjouterExerciceComponent } from './ajouter-exercice.component';

describe('AjouterExerciceComponent', () => {
  let component: AjouterExerciceComponent;
  let fixture: ComponentFixture<AjouterExerciceComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AjouterExerciceComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AjouterExerciceComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
