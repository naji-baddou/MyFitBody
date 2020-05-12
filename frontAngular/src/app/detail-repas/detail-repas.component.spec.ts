import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DetailRepasComponent } from './detail-repas.component';

describe('DetailRepasComponent', () => {
  let component: DetailRepasComponent;
  let fixture: ComponentFixture<DetailRepasComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DetailRepasComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DetailRepasComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
