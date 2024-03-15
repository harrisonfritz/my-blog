import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NoopAnimationsModule } from '@angular/platform-browser/animations';
import { MaterialModule } from './material/material.module';
import { PaperComponent } from './paper/paper.component';
import { BlogIndexComponent } from './blog-index/blog-index.component';
import { BlogCardComponent } from './blog-card/blog-card.component';
import { HomeComponent } from './home/home.component';
import { HttpClientModule } from '@angular/common/http'
import { MatToolbar } from '@angular/material/toolbar';
import {MatToolbarModule} from '@angular/material/toolbar'; 
import { MarkdownModule } from 'ngx-markdown';
import { ReadingComponent } from './reading/reading.component';

@NgModule({
  declarations: [
    AppComponent,
    PaperComponent,
    BlogIndexComponent,
    BlogCardComponent,
    HomeComponent,
    ReadingComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    NoopAnimationsModule,
    MaterialModule,
    HttpClientModule,
    MarkdownModule.forRoot()
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
