import { Component } from '@angular/core';
import { FormControl, FormGroup, FormsModule, ReactiveFormsModule } from '@angular/forms';
import { GetCreditCardService } from '../services/get-credit-card.service';

@Component({
  selector: 'app-update-card',
  standalone: true,
  imports: [FormsModule, ReactiveFormsModule],
  templateUrl: './update-card.component.html',
  styleUrl: './update-card.component.css'
})
export class UpdateCardComponent {
  cardForm: FormGroup;

  constructor(private dataCard: GetCreditCardService){
    this.cardForm = new FormGroup({
      id: new FormControl(''),
      userId: new FormControl(''),
      cardHolder: new FormControl(''),
      cardNumber: new FormControl(''),
      cardCvv: new FormControl(''),
      cardValidationDate: new FormControl(''),
      cardMemberSince: new FormControl(''),
      cardType: new FormControl('')
    });
  }

  updateData(){
    if (this.cardForm.valid) {
      this.dataCard.updateCard(this.cardForm.value.id, this.cardForm.value).subscribe(
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
