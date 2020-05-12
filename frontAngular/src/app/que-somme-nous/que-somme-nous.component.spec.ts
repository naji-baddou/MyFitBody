import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { QueSommeNousComponent } from './que-somme-nous.component';

describe('QueSommeNousComponent', () => {
  let component: QueSommeNousComponent;
  let fixture: ComponentFixture<QueSommeNousComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ QueSommeNousComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(QueSommeNousComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
