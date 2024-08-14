import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Question } from '../model/question.model';
import { Service } from '../service';

@Component({
  selector: 'app-question',
  templateUrl: './question.component.html',
  styleUrls: ['./question.component.css']
})
export class QuestionComponent implements OnInit {
  question!: Question;
  comments: Comment[] = [];

  constructor(private route: ActivatedRoute,
    private service: Service) {}

  ngOnInit(): void {
    this.route.paramMap.subscribe(params => {
      const questionId = parseInt(params.get('id')!, 10)

      this.getQuestion(questionId);
      this.getCommentsByQuestionId(questionId);
    });

    
  }

  getQuestion(id: number){
    this.service.getQuestion(id).subscribe({
      next: result => this.question = result,
      error: (error: any) => console.log(error),
      complete: (): any => {}
    })
  }

  getCommentsByQuestionId(id: number){
    this.service.getCommentsByQuestionId(id).subscribe({
      next: result => this.comments = result,
      error: (error: any) => console.log(error),
      complete: (): any => {}
    })
  }
}
