import { HttpClient, HttpClientModule, HttpErrorResponse } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { catchError, retry, throwError } from 'rxjs';
import { CreditCard } from '../models/credit-card';
import { GetCreditCardService } from '../services/get-credit-card.service';
import { error } from 'console';

@Component({
  selector: 'app-get-credit-card',
  standalone: true,
  imports: [HttpClientModule],
  templateUrl: './get-credit-card.page.html',
  styleUrl: './get-credit-card.page.css'
})
export class GetCreditCardComponent{

  newdata: any;
  constructor(private dataCard: GetCreditCardService){}

  ngOnInit(){
    this.dataCard.getData().subscribe(res =>{
      this.newdata=res;
    })
  }
}
