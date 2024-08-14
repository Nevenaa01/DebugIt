import { Component, OnInit } from '@angular/core';
import { Question } from '../model/question.model';
import { Service } from '../service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-all-questions',
  templateUrl: './all-questions.component.html',
  styleUrls: ['./all-questions.component.css']
})
export class AllQuestionsComponent implements OnInit{
  allQuestions: Question[] = []

  constructor(private service: Service,
    private router: Router) {}

  ngOnInit(): void {
    this.getQuestions();
  }

  getQuestions(): void{
    this.service.getAllQuestions().subscribe({
      next: result => this.allQuestions = result,
      error: (error: any) => console.log(error),
      complete: (): any => {}
    })
  }

  showQuestion(id: number){
      this.router.navigate(['/question/' + id])
  }
}
