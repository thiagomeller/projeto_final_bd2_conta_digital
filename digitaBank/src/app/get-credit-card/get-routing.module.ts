import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import { GetCreditCardComponent  } from './get-credit-card.page';

const routes: Routes = [
  { path: '', pathMatch: 'full', component: GetCreditCardComponent},
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class GetRoutingModule {
}