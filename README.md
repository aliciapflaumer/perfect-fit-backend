## Perfect Fit

Perfect Fit is an exercise log app that allows users to keep a schedule of their exercise/workout routine. They can create, update, delete, and get all of their exercises.

## Link to live, deployed application

[Perfect Fit deployed app](https://aliciapflaumer.github.io/perfect-fit-frontend/)

## Deployed backend on Heroku
https://perfect-fit.herokuapp.com/

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

## Issues I encountered
A few errors popped up along the way, for which I opened issues for on the queue – and the consultants were good guiding me in the right direction, and helping to solve the problem(s). One though was troubling, the dreaded 500 server error on localhost – that I encountered similiarly during project 2 – I filed an issue but I troubleshooted and solved on my own, documenting my progress along the way – in 5 hours.

## Tables

The app uses three tables, one for `users`, one for `workouts`, and one for `plans`.

`users` have a `id`, `email`, and stores a `token`, `password`, and `timestamps` for when a user record is created and updated.

`workouts` have a `name`, `duration`, `repetitions`, and `date` for when a `workout` record is created and updated.

`plans` have a `name`, `date`, `location`, and `difficulty` for when a `plan` record is created and updated.

## Entity Relationship Diagram (ERD)

User -< Plan -< Workout

- A `User` has_many `Plans`
- `Plan` belongs_to `User`

- `Plan` has_many `Workouts`
- `Workouts` belongs_to `Plan`

## API end-points

| Verb   | URI Pattern            | Controller#Action  |
|--------|----------------------- |------------------  |
| POST   | `/sign-up`             | `users#signup`     |
| POST   | `/sign-in`             | `users#signin`     |
| DELETE | `/sign-out/:id`        | `users#signout`    |
| PATCH  | `/change-password/:id` | `users#changepw`   |
|--------|----------------------- |------------------  |
| POST   | `/workouts`            | `workouts#create`  |
| PATCH  | `/workouts/:id`        | `workouts#update`  |
| GET    | `/workouts`            | `workouts#index`   |
| GET    | `/workouts/:id`        | `workouts#show`    |
| DELETE | `/workouts/:id`        | `workouts#destroy` |
|--------|----------------------- |------------------  |
| POST   | `/plans`               | `plans#create`     |
| PATCH  | `/plans/:id`           | `plans#update`     |
| GET    | `/plans`               | `plans#index`      |
| GET    | `/plans/:id`           | `plans#show`       |
| DELETE | `/plans/:id`           | `plans#destroy`    |
