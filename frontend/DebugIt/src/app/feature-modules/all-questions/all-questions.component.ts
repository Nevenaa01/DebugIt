import { Component, OnInit } from '@angular/core';
import { Question } from '../model/question.model';
import { Comment } from '../model/comment.model';
import { Service } from '../service';
import { Router } from '@angular/router';
import { firstValueFrom } from 'rxjs';

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
      complete: (): any => {
        this.allQuestions.forEach(question =>{
          this.getCommentsByQuestionId(question.id).then(comments => {
            question.numOfComments = 0;
            
            comments.forEach(comment => {
              if(comment.commentThreadId == null){
                question.numOfComments += 1; 
              }
            })
            
        }).catch(err => {
            console.error(`Error while getting comments for questionId: ${question.id}`, err);
        });
        })
      }
    })
  }

  async getCommentsByQuestionId(questionId: number): Promise<Comment[]> {
    try {
        const result = await firstValueFrom(this.service.getCommentsByQuestionId(questionId));
        return result;
    } catch (error) {
        console.error(`Error while getting comments for questionId: ${questionId}`, error);
        return [];
    }
}

  showQuestion(id: number){
      this.router.navigate(['/question/' + id])
  }
}
