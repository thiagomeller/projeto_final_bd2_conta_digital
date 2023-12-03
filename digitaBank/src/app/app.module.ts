import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { NavbarComponent } from './navbar/navbar.component';
import { AppComponent } from './app.component';



@NgModule({
  declarations: [NavbarComponent],
  imports: [
    CommonModule
  ],
  providers: [AppComponent]
})
export class AppModule { }
