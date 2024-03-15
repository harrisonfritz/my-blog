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
  @Input() card_image_url!: string;
  linktitle: string = "loading title..."
  constructor(private router: Router) { }

  ngOnInit(): void {

  this.linktitle = this.title.replace(/\s+/g, '-').toLowerCase();

  }
navigate() {
    
    this.router.navigateByUrl("/paper/"+this.linktitle)
}

}
