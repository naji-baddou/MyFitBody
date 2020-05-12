import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DetailExercicesComponent } from './detail-exercices.component';

describe('DetailExercicesComponent', () => {
  let component: DetailExercicesComponent;
  let fixture: ComponentFixture<DetailExercicesComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DetailExercicesComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DetailExercicesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
