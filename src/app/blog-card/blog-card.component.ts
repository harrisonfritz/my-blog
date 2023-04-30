import { Component, Input, OnInit } from '@angular/core';
import { Router } from '@angular/router'

@Component({
  selector: 'app-blog-card',
  templateUrl: './blog-card.component.html',
  styleUrls: ['./blog-card.component.css']
})
export class BlogCardComponent implements OnInit {
  @Input() title!: string;
  @Input() description!: string;
  @Input() publication_date!: string;
  @Input() blogLink!: string;
  linktitle: string = "shnoodle"
  matCardImage: string  = "https://www.wallpapers13.com/wp-content/uploads/2015/12/Nature-Lake-Bled.-Desktop-background-image-840x525.jpg"
  constructor(private router: Router) { }

  ngOnInit(): void {

  await this.linktitle = this.title.replace(/\s+/g, '-').toLowerCase();

  }
navigate() {
    
    this.router.navigateByUrl("/paper/"+this.linktitle)
}
}
