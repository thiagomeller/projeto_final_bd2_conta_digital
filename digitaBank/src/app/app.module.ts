import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { NavbarComponent } from './navbar/navbar.component';
import { AppComponent } from './app.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { CreditCardComponent } from './credit-card/credit-card.page';



@NgModule({
  declarations: [NavbarComponent, FormsModule, ReactiveFormsModule],
  imports: [
    CommonModule,
    CreditCardComponent
  ],
  providers: [AppComponent]
})
export class AppModule { }
