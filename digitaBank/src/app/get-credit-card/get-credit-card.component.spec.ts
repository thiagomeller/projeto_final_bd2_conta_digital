import { ComponentFixture, TestBed } from '@angular/core/testing';

import { GetCreditCardComponent } from './get-credit-card.component';

describe('GetCreditCardComponent', () => {
  let component: GetCreditCardComponent;
  let fixture: ComponentFixture<GetCreditCardComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [GetCreditCardComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(GetCreditCardComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
