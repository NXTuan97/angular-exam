import { Component } from '@angular/core';
import {IExam} from "./interface/exam.interface";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'examAngular';

  // examArray: IExam[]=[
  //   {name:'Gemma Roberson', status:'Apology for late response email', help:'Hello Colette Wooten'},
  //   {name:'Anna Garza', status:'Application for job title', help:'Hello Kerry Best'},
  //   {name:'Alfonso Burnett', status:'Anything I can help with', help:'Hello Otto Ashley'},
  //   {name:'Rogan Espinoza', status:'Assistant Marketing Department', help:'Hello Kerry Best'},
  //   {name:'Sierra Kerr', status:'Application of transfer', help:'Hi Halle lindsey'},
  // ];
}
