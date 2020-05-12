import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ListeRepasComponent } from './liste-repas.component';

describe('ListeRepasComponent', () => {
  let component: ListeRepasComponent;
  let fixture: ComponentFixture<ListeRepasComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ListeRepasComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ListeRepasComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
