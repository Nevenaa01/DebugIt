import { Component } from '@angular/core';
import { Service } from '../service';
import { Question } from '../model/question.model';

@Component({
  selector: 'app-add-question',
  templateUrl: './add-question.component.html',
  styleUrls: ['./add-question.component.css']
})
export class AddQuestionComponent {
  title: string = '';
  description: string = '';
  tags: string[] = [];
  newTag: string = '';

  constructor(private service: Service){}

  addTag(event: KeyboardEvent): void{
    if(event.key == 'Enter'){
      this.tags.push(this.newTag.toLowerCase().replace(/\s+/g, '-'));
      this.newTag = '';
    }
  }

  removeTag(tag: string): void{
    this.tags = this.tags.filter(t => t != tag);
  }

  addQuestion(): void{
    var newQuestion = {
      title: this.title,
      description: this.description,
      postedOn: new Date().getTime(),
      editedOn: undefined,
      userId: -10,
      numOfVotes: 0,
      tags: this.tags,
      numOfComments: 0
    }

    this.service.createQuestion(newQuestion as Question).subscribe({
      next: result => {},
      error: (error: any) => console.log(error),
      complete: (): any => {}
    })
  }
}
