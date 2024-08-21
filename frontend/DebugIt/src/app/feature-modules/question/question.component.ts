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
  newCommentText: string = '';

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
        this.sortComments();   

        this.comments.forEach(comment => {
          this.getUser(comment.userId).then(user => {
            comment.userNameEmail = user.name + ' ' + user.lastName + ' (' + user.email + ')';
          });

          this.getCommentsByThreadId(comment.id).then(num => {
            comment.numOfCommentsInThread = num;
          })
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

  async getCommentsByThreadId(commentId: number): Promise<number>{
    try{
        const result = await firstValueFrom(this.service.getCommentsByThreadId(commentId));
        return result.length;
    }
    catch(error){
      console.error(`Error while getting comments of a thread with id ` + commentId)
      return 0;
    }
  }

  getNumOfComments(): number{
    var com: number = 0;
    this.comments.forEach(comment => {
      if(comment.commentThreadId == null)
        com += 1;
    });

    return com;
  }

  voteQuestion(type: string): void{
    this.question.numOfVotes += type == 'upvote' ? 1 : -1;

    this.service.updateQuestion(this.question).subscribe({
      next: result => {},
      error: (error: any) => console.log(error),
      complete: (): any => {}
    })
  }

  voteComment(comment: Comment, type: string): void{
    comment.numOfVotes += type == 'upvote' ? 1 : -1;

    this.sortComments();

    this.service.updateComment(comment).subscribe({
      next: result => {},
      error: (error: any) => console.log(error),
      complete: (): any => {}
    })
  }

  addNewComment(comment: Comment | undefined): void{
      var newComment = {
        questionId: this.question.id,
        description: comment == undefined ? this.newCommentText : comment.newSubcommentText,
        userId: comment == undefined ? -2 : -3,
        postedOn: new Date().getTime(),
        editedOn: undefined,
        numOfVotes: 0,
        commentThreadId: comment?.id,
        userNameEmail: comment == undefined ? 'Asistent1 Asistent (asistent1@example.com)' : 'Asistent2 Asistent (asistent2@example.com)',
        numOfCommentsInThread: 0
      }

      this.comments.push(newComment as Comment)

      if(comment == undefined){
        this.sortComments();  

        this.newCommentText = '';
      }
      else{
        comment.newSubcommentText = '';
        comment.numOfCommentsInThread = comment.numOfCommentsInThread == undefined ? 0 : comment.numOfCommentsInThread + 1;
      }

      this.service.createComment(newComment as Comment).subscribe({
        next: result => {},
        error: (error: any) => console.log(error),
        complete: (): any => {}
      })
  }

  sortComments(): void{
    this.comments.sort((a, b) => {
      if (a.commentThreadId === null && b.commentThreadId === null) {
        if (a.numOfVotes !== b.numOfVotes) {
          return b.numOfVotes - a.numOfVotes;
        } else {
          return new Date(b.postedOn).getTime() - new Date(a.postedOn).getTime();
        }
      } else if (a.commentThreadId === null) {
        return -1;
      } else if (b.commentThreadId === null) {
        return 1;
      } else {
        return b.numOfVotes - a.numOfVotes;
      }
    });
  }
}
