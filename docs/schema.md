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
| routing_data  | line_string  | not null |
| map_url       | string       | not null |
| distance      | float        | not null |
| done          | boolean      | not null, default: false |
| created_at    | timestamp    | not null |
| updated_at    | timestamp    | not null |

## friends

| column name   | data type | details |
| ------------- | ----------| ------------- |
| id            | integer   | not null, primary key |
| user_id       | integer   | not null, foreign key |
| friend_id     | integer   | not null, foreign key |
| created_at    | timestamp | not null |
| updated_at    | timestamp | not null |

## friend_requests

| column name  | data type | details |
| ------------ | --------- | ------------- |
| id           | integer   | not null, primary key |
| user_id      | integer   | not null, foreign key |
| requester_id | integer   | not null, foreign key |
| created_at   | timestamp | not null |
| updated_at   | timestamp | not null |

## statuses

| column name   | data type | details |
| ------------- | --------- | ------------- |
| id            | integer   | not null, primary key |
| user_id       | integer   | not null, foreign key |
| body          | text      | not null |
| created_at    | timestamp | not null |
| updated_at    | timestamp | not null |

## comments

| column name       | data type   | details |
| -------------     | ----------- | ------------- |
| id                | integer     | not null, primary key |
| author_id         | integer     | not null, foreign key |
| commentable_id    | integer     | not null, foreign key |
| commentable_type  | string      | not null |
| body              | text        | not null |
| created_at        | timestamp   | not null |
| updated_at        | timestamp   | not null |
