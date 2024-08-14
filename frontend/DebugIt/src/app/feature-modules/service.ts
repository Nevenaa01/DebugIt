import { Injectable } from "@angular/core";
import { Observable } from "rxjs";
import { Question } from "./model/question.model";
import { HttpClient } from "@angular/common/http";
import { environment } from "../env/environment";

@Injectable({
    providedIn: 'root',
  })
export class Service {
    constructor(private http: HttpClient) {}

    getAllQuestion(): Observable<Question[]>{
        return this.http.get<Question[]>(environment.apiHost + 'question');
    }
}