import { Component } from '@angular/core';
import { Router } from '@angular/router'
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
})
export class AppComponent {

  constructor(private router: Router) { }

  title = 'my-blog';
  isButtonVisible = true;

  goTo(str: string) {
    this.router.navigate([str])
  }

  redirect(str: string) {
    window.open(str);
  }

  resume() {
    window.open('../assets/resume.png', '_blank');
  }
}
