import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import { LoginComponent  } from './login.page';
import { CreditCardComponent } from '../credit-card/credit-card.page';

const routes: Routes = [
  { path: '', pathMatch: 'full', component: LoginComponent},
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class LoginRoutingModule {
}