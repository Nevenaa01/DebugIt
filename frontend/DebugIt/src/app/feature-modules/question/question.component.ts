import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Question } from '../model/question.model';
import { Service } from '../service';
import { User } from '../model/user.model';
import { Comment } from '../model/comment.model';
import { firstValueFrom } from 'rxjs';

@Component({
  selector: 'app-question',
  templateUrl: './question.component.html',
  styleUrls: ['./question.component.css']
})
export class QuestionComponent implements OnInit {
  question!: Question;
  comments: Comment[] = [];
  authorOfQuestion!: User;

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
      complete: (): any => {
        this.getAuthorOfQuestion(this.question.userId);
      }
    })
  }

  getCommentsByQuestionId(id: number){
    this.service.getCommentsByQuestionId(id).subscribe({
      next: result => this.comments = result,
      error: (error: any) => console.log(error),
      complete: (): any => {
        this.comments.forEach(comment => {
          this.getUser(comment.userId).then(user => {
            comment.userNameEmail = user.name + ' ' + user.lastName + ' (' + user.email + ')';
          });
        })
      }
    })
  }

  getAuthorOfQuestion(userId: number){
    this.service.getUser(userId).subscribe({
      next: result => this.authorOfQuestion = result,
      error: (error: any) => console.log(error),
      complete: (): any => {}
    })
  }

  async getUser(id: number): Promise<User>{
    try{
      const result = await firstValueFrom(this.service.getUser(id));
      return result;
    }
    catch(error){
      console.error(`Error while gettin user with id ` + id + `for comment`);
      return new User();
    }
  }
}
