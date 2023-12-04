import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import { UpdateCardComponent  } from './update-card.component';

const routes: Routes = [
  { path: '', pathMatch: 'full', component: UpdateCardComponent},
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class UpdateCardRoutingModule {
}