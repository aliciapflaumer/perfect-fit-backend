## README

## Front end repo
https://github.com/aliciapflaumer/perfect-fit-frontend

## Deployed front end
https://aliciapflaumer/github.io/perfect-fit-frontend/index.html

## Entity Relationship Diagram (ERD)

Workouts >- User

- A user has many workouts

## User stories

- A user wants to create a new workout
- A user wants to see (get) all of their workouts
- A user wants to update  a workout with new data
- A user wants to delete a workout

## API end-points

| Verb   | URI Pattern           | Controller#Action |
|--------|-----------------------|------------------ |
| POST   | `/sign-up`            | `users#signup`    |
| POST   | `/sign-in`            | `users#signin`    |
| DELETE | `/sign-out/:id`       | `users#signout`   |
| PATCH  | `/change-password/:id`| `users#changepw`  |
| POST   | `/workout`            | `workout#create`  |
| PATCH  | `/workout/:id`        | `workout#update`  |
| GET    | `/workout`            | `workout#index`   |
| GET    | `/workout/:id`        | `workout#show`    |
| DELETE | `/workout/:id`        | `workout#destroy` |
