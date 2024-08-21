import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AllQuestionsComponent } from './feature-modules/all-questions/all-questions.component';
import { QuestionComponent } from './feature-modules/question/question.component';
import { AddQuestionComponent } from './feature-modules/add-question/add-question.component';

const routes: Routes = [
  {path: '', component: AllQuestionsComponent},
  {path: 'question/:id', component: QuestionComponent},
  {path: 'addQuestion', component: AddQuestionComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
