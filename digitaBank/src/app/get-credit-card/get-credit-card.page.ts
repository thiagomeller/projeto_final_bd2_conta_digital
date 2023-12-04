import { HttpClient, HttpClientModule, HttpErrorResponse } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { catchError, retry, throwError } from 'rxjs';
import { CreditCard } from '../models/credit-card';
import { GetCreditCardService } from '../services/get-credit-card.service';
import { error } from 'console';
import { FormControl, FormGroup, ReactiveFormsModule } from '@angular/forms';
import { BrowserModule } from '@angular/platform-browser';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-get-credit-card',
  standalone: true,
  imports: [HttpClientModule, ReactiveFormsModule, CommonModule],
  templateUrl: './get-credit-card.page.html',
  styleUrl: './get-credit-card.page.css'
})
export class GetCreditCardComponent{

  cardForm: FormGroup;
  newdata: any;
  constructor(private dataCard: GetCreditCardService){
    this.cardForm = new FormGroup({
      id: new FormControl('')
    });
  }

  getCard(){
    this.dataCard.getData(this.cardForm.value.id).subscribe(res =>{
      this.newdata=res;
    })
  }
}
