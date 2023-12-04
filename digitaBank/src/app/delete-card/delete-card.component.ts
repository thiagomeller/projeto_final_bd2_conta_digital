import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { FormControl, FormGroup, FormsModule, ReactiveFormsModule } from '@angular/forms';
import { GetCreditCardService } from '../services/get-credit-card.service';

@Component({
  selector: 'app-delete-card',
  standalone: true,
  imports: [FormsModule, ReactiveFormsModule],
  templateUrl: './delete-card.component.html',
  styleUrl: './delete-card.component.css'
})
export class DeleteCardComponent {

  cardForm: FormGroup;

  constructor(private http: HttpClient, private dataCard: GetCreditCardService) {
    this.cardForm = new FormGroup({
      id: new FormControl('')
    });
  }

  deleteCard() {
    if (this.cardForm.valid) {
      console.log(this.cardForm.value);
      this.dataCard.deleteCard(this.cardForm.value.id).subscribe(
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
