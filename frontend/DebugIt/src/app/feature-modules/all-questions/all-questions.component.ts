import { Component, OnInit } from '@angular/core';
import { Question } from '../model/question.model';
import { Service } from '../service';

@Component({
  selector: 'app-all-questions',
  templateUrl: './all-questions.component.html',
  styleUrls: ['./all-questions.component.css']
})
export class AllQuestionsComponent implements OnInit{
  allQuestions: Question[] = []

  constructor(private service: Service) {}

  ngOnInit(): void {
    this.getQuestions();
  }

  getQuestions(): void{
    this.service.getAllQuestion().subscribe({
      next: result => this.allQuestions = result,
      error: (error: any) => console.log(error),
      complete: (): any => {}
    })
  }
}
