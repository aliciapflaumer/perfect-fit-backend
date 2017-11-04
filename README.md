## Perfect Fit

Perfect Fit is an exercise log app that allows users to keep a schedule of their exercise/workout routine. They can create, update, delete, and get all of their exercises.

## Link to live, deployed application

[Perfect Fit deployed app](https://aliciapflaumer.github.io/perfect-fit-frontend/)

## Deployed backend on Heroku
https://polar-hollows-34545.herokuapp.com/

## Link to front and back end repos

[Front end repo](https://github.com/aliciapflaumer/perfect-fit-frontend)

[Back end repo](https://github.com/aliciapflaumer/perfect-fit-backend)

## The front end (client)
The front end is written in html, css, handlebars, javascript, jquery

## The back end (server)
The back end is a Rails application supporting 4 RESTful routes for handling GET, POST, PATCH, and DELETE requests of the workouts source.

## Approach to building Perfect Fit
I approached to building this Capstone project similiar to the second project, [GotReads](https://aliciapflaumer.github.io/got-reads-front-end/), because it is where I started to feel comfortable as a developer.
To stay organized, I started with creating my usual checklist and workflow chart. The idea came from my own fitness progress, because on top of using an app to map and track my running, I also keep a pen & paper journal.

## Wishlist

I would like to build an actual run tracker, similar to the big names out there Nike, RunKeeper, and MapMyRun. That'll take some more learning.

## Issues I encountered
A few errors popped up along the way, for which I opened issues for on the queue – and the consultants were good guiding me in the right direction, and helping to solve the problem(s). One though was troubling, the dreaded 500 server error on localhost – that I encountered similiarly during project 2 – I filed an issue but I troubleshooted and solved on my own, documenting my progress along the way – in 5 hours.

## Tables

The app uses two tables, one for `users` and one for `workouts`.

`users` have a `id`, `email`, and stores a `token`, `password`, and `timestamps` for when a user record was created and updated.

`workouts` have a `name`, `duration`, `repetitions`, and `date` for when a `workout` record was created and updated.

## Entity Relationship Diagram (ERD)

Workouts >- User

- Workout belongs to user
- A user has many workouts

## API end-points

| Verb   | URI Pattern            | Controller#Action  |
|--------|----------------------- |------------------  |
| POST   | `/sign-up`             | `users#signup`     |
| POST   | `/sign-in`             | `users#signin`     |
| DELETE | `/sign-out/:id`        | `users#signout`    |
| PATCH  | `/change-password/:id` | `users#changepw`   |
| POST   | `/workouts`            | `workouts#create`  |
| PATCH  | `/workouts/:id`        | `workouts#update`  |
| GET    | `/workouts`            | `workouts#index`   |
| GET    | `/workouts/:id`        | `workouts#show`    |
| DELETE | `/workouts/:id`        | `workouts#destroy` |
