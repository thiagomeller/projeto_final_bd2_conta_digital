import { HttpClient, HttpClientModule, HttpErrorResponse } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { catchError, retry, throwError } from 'rxjs';
import { CreditCard } from '../models/credit-card';
import { GetCreditCardService } from '../services/get-credit-card.service';

@Component({
  selector: 'app-get-credit-card',
  standalone: true,
  imports: [HttpClientModule],
  templateUrl: './get-credit-card.component.html',
  styleUrl: './get-credit-card.component.css'
})
export class GetCreditCardComponent implements OnInit{
  
  data = {} as CreditCard

  constructor(private cardService: GetCreditCardService){}

  ngOnInit(){
    this.getData;
  }


  getData() {
    this.cardService.getData().subscribe((card: any) => {
      this.data = card;
    });
  }
}
