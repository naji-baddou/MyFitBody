import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CreatAccontComponent } from './creat-accont.component';

describe('CreatAccontComponent', () => {
  let component: CreatAccontComponent;
  let fixture: ComponentFixture<CreatAccontComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CreatAccontComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CreatAccontComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
