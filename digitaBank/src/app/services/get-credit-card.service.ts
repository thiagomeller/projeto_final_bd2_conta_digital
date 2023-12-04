import { HttpClient, HttpErrorResponse } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, catchError, firstValueFrom, retry, take, throwError } from 'rxjs';
import { CreditCard } from '../models/credit-card';

@Injectable({
  providedIn: 'root'
})
export class GetCreditCardService {

  constructor(private http: HttpClient) {}


  getData(){
    return this.http.get('http://localhost:8080/api/card/1002')
  }

  createCard(card: CreditCard): Observable<CreditCard>{
    return this.http.post<CreditCard>('http://localhost:8080/api/card/create-card', card);
  }
}
