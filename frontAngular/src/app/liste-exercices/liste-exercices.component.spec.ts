import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ListeExercicesComponent } from './liste-exercices.component';

describe('ListeExercicesComponent', () => {
  let component: ListeExercicesComponent;
  let fixture: ComponentFixture<ListeExercicesComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ListeExercicesComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ListeExercicesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
