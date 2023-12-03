import { TestBed } from '@angular/core/testing';
import { GetCreditCardService } from './get-credit-card.service';


describe('GetCreditCardService', () => {
  let service: GetCreditCardService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(GetCreditCardService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
