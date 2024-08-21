import { Component } from '@angular/core';
import { Service } from '../service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent {
  query: string = '';

  constructor(private service: Service,
    private router: Router) {}

  updateSearch(event: KeyboardEvent): void{
    if(event.key == 'Enter'){
      this.service.updateSearchQuery(this.query);
    }
  }

  onInputChange(event: Event){
    const input = event.target as HTMLInputElement;
    if(input.value == ''){
      this.service.updateSearchQuery('');
    }
  }

  redirectToAddQuestionPage(): void{
    this.router.navigate(['/addQuestion'])
  }
}
