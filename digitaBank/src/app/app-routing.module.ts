import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router';
import { CreditCardComponent } from './credit-card/credit-card.page';
import path from 'path';
import { LoginComponent } from './login/login.page';
import { CreditCardRoutingModule } from './credit-card/credit-card-routing.module';
import { LoginRoutingModule } from './login/login-routing.module';
import { GetRoutingModule } from './get-credit-card/get-routing.module';

export const routes: Routes = [
  { path: '', pathMatch: 'full', loadChildren: ()=> LoginRoutingModule},
  { path: 'credit-card', pathMatch: 'full', loadChildren: ()=> CreditCardRoutingModule},
  { path: 'get-credit-card', pathMatch: 'full', loadChildren: ()=> GetRoutingModule}
];
