# Schema Information

## users

| column name       | data type     | details |
| -------------     | ------------- | ------------- |
| id                | integer       | not null, primary key |
| email             | string        | not null, indexed, unique |
| first_name        | string        | not null, indexed |
| last_name         | string        | not null, indexed |
| password_digest   | string        | not null |
| session_token     | string        | not null, indexed, unique |
| img_url           | string        |  |
| created_at        | timestamp     | not null |
| updated_at        | timestamp     | not null |

## routes

| column name   | data type    | details |
| ------------- | ----------   | ------------- |
| id            | integer      | not null, primary key |
| user_id       | integer      | not null, foreign key |
| name          | string       | not null |
| polyline      | string       | not null |
| start_address | string       | not null |
| end_address   | string       | not null |
| distance      | float        | not null |
| done          | boolean      | not null, default: false |
| created_at    | timestamp    | not null |
| updated_at    | timestamp    | not null |

## relationships

| column name    | data type | details |
| -------------  | ----------| ------------- |
| id             | integer   | not null, primary key |
| user_one_id    | integer   | not null, foreign key |
| user_two_id    | integer   | not null, foreign key |
| status         | integer   | not null |
| action_user_id | integer   | not null, foreign key |
| created_at     | timestamp | not null |
| updated_at     | timestamp | not null |

## comments

| column name       | data type   | details |
| -------------     | ----------- | ------------- |
| id                | integer     | not null, primary key |
| author_id         | integer     | not null, foreign key |
| path_id           | integer     | not null, foreign key |
| body              | text        | not null |
| created_at        | timestamp   | not null |
| updated_at        | timestamp   | not null |
