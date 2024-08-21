import { Component } from '@angular/core';
import { Service } from '../service';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent {
  query: string = '';

  constructor(private service: Service) {}

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
}
