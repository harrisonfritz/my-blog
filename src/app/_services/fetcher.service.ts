import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, Subscription } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class FetcherService {

  constructor(private httpClient: HttpClient) { }


  public get(url: string): Observable<Object>{
    return this.httpClient.get(url, {responseType: "json"})
  }
}
