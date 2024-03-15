import { Component, OnInit } from '@angular/core';
import { blogs } from '../_blog-data/blogs'
import { ActivatedRoute } from '@angular/router';
import { BlockScrollStrategy } from '@angular/cdk/overlay';
import { TestBed } from '@angular/core/testing';
import { FetcherService } from '../_services/fetcher.service';
import { environment } from '../../environments/environment';

@Component({
  selector: 'app-paper',
  templateUrl: './paper.component.html',
  styleUrls: ['./paper.component.css']
})
export class PaperComponent implements OnInit {

  private baseUrl = environment.baseUrl
  constructor(private route: ActivatedRoute, private fetcher: FetcherService) { }

  blogdata: any
  title = "";
  description = "";
  publication_date = "";
  body = "";

  async ngOnInit() {

    const routeParams = this.route.snapshot.paramMap;
    //let url = 'http://localhost:10000/posts/' + String(routeParams.get('title'))
    let url = (this.baseUrl + '/posts/' + String(routeParams.get('title')))
    console.log(url)
    this.blogdata = await this.fetcher.get(url).toPromise()
    await this.loadBlog()

    // this.blogdata = await this.fetcher.get('http://localhost:10000/posts').toPromise()
    // const routeParams = this.route.snapshot.paramMap;
    // const title = String(routeParams.get('title'));
    // this.findBlogByTitle(title);
    // console.log(this.title)
    // console.log(this.body)
  }

  async fetchBlog() {
    // let url = 'http://localhost:10000/posts/' + String(routeParams.get('title'));
    //this.blogdata = await this.fetcher.get('http://localhost:10000/posts/').toPromise()
    this.blogdata = await this.fetcher.get(this.baseUrl + '/posts/').toPromise()
  }


  loadBlog() {
    this.title = this.blogdata.Title
    this.description = this.blogdata.Description
    this.publication_date = this.blogdata.Publication_date
    this.body = this.blogdata.Content
  }

  findBlogByTitle(titlestring: string) {
    for (let i = 0; i < this.blogdata.length; i++) {
      if (this.blogdata[i].Title == titlestring) {
        this.title=titlestring
        this.publication_date=this.blogdata[i].Publication_date
        this.body=this.blogdata[i].Content;

      }
    }
  }
}
