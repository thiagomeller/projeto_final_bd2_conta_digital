import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import { CreditCardComponent  } from './credit-card.page';

const routes: Routes = [
  { path: '', pathMatch: 'full', component: CreditCardComponent},
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class CreditCardRoutingModule {
}