import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ERRORComponent } from './error.component';

describe('ERRORComponent', () => {
  let component: ERRORComponent;
  let fixture: ComponentFixture<ERRORComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ERRORComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ERRORComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
