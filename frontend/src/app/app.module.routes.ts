import { NgModule } from "@angular/core";
import { RouterModule, Routes } from '@angular/router';

import { AppComponent } from "./app.component";
import { NavigationComponent } from "./navigation/navigation.component";
import { SearchBarComponent } from "./search-bar/search-bar.component";
import { FuseSearchBarComponent } from "./search-bar/fuse-search-bar.component";
import { RegisterComponent } from './register/register.component';
import {AlertModule} from "ngx-bootstrap";
import { LoginComponent } from './login/login.component';
import { AddTagComponent } from './add-tag/add-tag.component';
import { SpinnerComponent } from './spinner/spinner.component';
import { SubjectCommentsComponent } from './subject-comments/subject-comments.component';


import { UniversitiesComponent} from './universities/universities.component';


import {ToastrModule} from "ngx-toastr";
import {BrowserAnimationsModule} from "@angular/platform-browser/animations";
import { SubjectDetailsComponent } from './subject-details/subject-details.component';

import { DashboardComponent } from './dashboard/dashboard.component';
import { SearchPageComponent } from './search-page/search-page.component';
import { UniversityEditComponent } from './university-edit/university-edit.component'
import { CreateSubjectComponent } from './create-subject/create-subject.component';

import { EditUniversityComponent } from './edit-university/edit-university.component';
import { CreateAssessmentComponent } from './create-assessment/create-assessment.component';
import { AdminAssessmentsComponent } from './admin-assessments/admin-assessments.component';


const routes: Routes = [
    { path: '', redirectTo: 'dashboard', pathMatch: 'full' },
    { path: 'login', component: LoginComponent },
    { path: 'register', component: RegisterComponent},
    { path: 'dashboard', component: DashboardComponent },
    { path: 'university/:university/faculties/edit', component: UniversityEditComponent },
    { path: 'university/:university/search', component: SearchPageComponent},
    { path: 'university/:university/faculty/:faculty/subjects/edit', component: CreateSubjectComponent },
    { path: 'university/:university/subject/:subject', component: SubjectDetailsComponent},
    { path: 'university/:universityId/edit', component: EditUniversityComponent},
    { path: 'university/create', component: EditUniversityComponent},


    // Admin components
    // TODO: Move other components into admin section

    // Assessments
    { path: 'admin/university/:universityId/subject/:subjectId/assessment', component: AdminAssessmentsComponent},
    { path: 'admin/university/:universityId/subject/:subjectId/assessment/:assessmentId', component: CreateAssessmentComponent },
    { path: 'admin/university/:universityId/subject/:subjectId/assessment/create', component: CreateAssessmentComponent },
];

@NgModule({
    imports: [RouterModule.forRoot(routes,  { useHash: true })],
    exports: [RouterModule],
})
export class AppRoutingModule {}
