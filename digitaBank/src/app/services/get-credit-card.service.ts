import { HttpClient, HttpErrorResponse } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, catchError, firstValueFrom, retry, take, throwError } from 'rxjs';
import { CreditCard } from '../models/credit-card';

@Injectable({
  providedIn: 'root'
})
export class GetCreditCardService {

  constructor(private http: HttpClient) {}

  getData(id: number): Observable<CreditCard>{
    return this.http.get<CreditCard>('http://localhost:8080/api/card/' + id);
  }

  createCard(card: CreditCard): Observable<CreditCard>{
    return this.http.post<CreditCard>('http://localhost:8080/api/card/create-card', card);
  }

  deleteCard(id: number): Observable<CreditCard>{
    return this.http.delete<CreditCard>('http://localhost:8080/api/card/delete-card/' + id);
  }

  updateCard(id: number, card: CreditCard): Observable<CreditCard>{
    return this.http.put<CreditCard>('http://localhost:8080/api/card/update-card/' + id, card);
  }
}
