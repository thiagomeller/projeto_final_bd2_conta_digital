import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import { DeleteCardComponent  } from './delete-card.component';

const routes: Routes = [
  { path: '', pathMatch: 'full', component: DeleteCardComponent},
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class DeleteCardRoutingModule {
}