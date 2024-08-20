import { Injectable } from "@angular/core";
import { Observable } from "rxjs";
import { Question } from "./model/question.model";
import { HttpClient } from "@angular/common/http";
import { environment } from "../env/environment";
import { User } from "./model/user.model";
import { Comment } from "./model/comment.model";

@Injectable({
    providedIn: 'root',
  })
export class Service {
    constructor(private http: HttpClient) {}

    getAllQuestions(): Observable<Question[]>{
        return this.http.get<Question[]>(environment.apiHost + 'question');
    }

    getQuestion(id: number): Observable<Question>{
        return this.http.get<Question>(environment.apiHost + 'question/' + id);
    }

    search(query: string): Observable<Question[]>{
        return this.http.get<Question[]>(environment.apiHost + 'question/search/' + query);
    }

    createQuestion(question: Question): Observable<string>{
        return this.http.post<string>(environment.apiHost + 'question', question);
    }

    updateQuestion(question: Question): Observable<string>{
        return this.http.put<string>(environment.apiHost + 'question', question);
    }

    deleteQuestion(id: number): Observable<string>{
        return this.http.delete<string>(environment.apiHost + 'question/' + id);
    }

    getAllComments() : Observable<Comment[]>{
        return this.http.get<Comment[]>(environment.apiHost + 'comment');
    }

    getComment(id: number): Observable<Comment>{
        return this.http.get<Comment>(environment.apiHost + 'comment/' + id);
    }

    getCommentsByQuestionId(id: number): Observable<Comment[]>{
        return this.http.get<Comment[]>(environment.apiHost + 'comment/ofQuestion/' + id);
    }

    getCommentsByThreadId(id: number): Observable<Comment[]>{
        return this.http.get<Comment[]>(environment.apiHost + 'comment/ofThread/' + id);
    }

    createComment(comment: Comment): Observable<string>{
        return this.http.post<string>(environment.apiHost + 'comment', comment);
    }

    updateComment(comment: Comment): Observable<string>{
        return this.http.put<string>(environment.apiHost + 'comment', comment);
    }

    deleteComment(id: number): Observable<string>{
        return this.http.delete<string>(environment.apiHost + 'comment/' + id);
    }

    getAllUsers(): Observable<User[]>{
        return this.http.get<User[]>(environment.apiHost + 'user')
    }

    getUser(id: number): Observable<User>{
        return this.http.get<User>(environment.apiHost + 'user/' + id)
    }

    createUser(user: User): Observable<string>{
        return this.http.post<string>(environment.apiHost + 'user', user);
    }

    updateUser(user: User): Observable<string>{
        return this.http.put<string>(environment.apiHost + 'user', user)
    }

    deleteUser(id: number): Observable<string>{
        return this.http.delete<string>(environment.apiHost + 'user/' + id)
    }
}