import { TestBed } from '@angular/core/testing';

import { PerfectbodyService } from './perfectbody.service';

describe('PerfectbodyService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: PerfectbodyService = TestBed.get(PerfectbodyService);
    expect(service).toBeTruthy();
  });
});
