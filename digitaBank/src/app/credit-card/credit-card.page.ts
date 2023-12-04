import { Component, NO_ERRORS_SCHEMA } from '@angular/core';
import { GetCreditCardService } from '../services/get-credit-card.service';
import { FormBuilder, FormControl, FormGroup, FormsModule, ReactiveFormsModule, Validators } from '@angular/forms'; // Import necessary modules
import { CreditCard } from '../models/credit-card';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-credit-card',
  templateUrl: './credit-card.page.html',
  styleUrls: ['./credit-card.page.css'],
  imports: [FormsModule, ReactiveFormsModule],
  standalone: true,
})
export class CreditCardComponent {
  cardForm: FormGroup;

  constructor(private dataCard: GetCreditCardService, private http: HttpClient){
    this.cardForm = new FormGroup({
      userId: new FormControl(''),
      cardHolder: new FormControl(''),
      cardNumber: new FormControl(''),
      cardCvv: new FormControl(''),
      cardValidationDate: new FormControl(''),
      cardMemberSince: new FormControl(''),
      cardType: new FormControl('')
    });
  }

  postAllData(){
    if (this.cardForm.valid) {
      this.dataCard.createCard(this.cardForm.value).subscribe(
        response => {
          console.log(response);
        },
        error => {
          console.log(error);
        }
      );
    }
  }
}