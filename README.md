## BackEnd - Social Media API

ruby version `2.6.6`

rails version `5.2.2`

### The endpoints that exist are shown in the image below:

![""](https://github.com/belalelmi/speer_media_api/blob/master/public/postman_crud.png?raw=true)

#

### You can find the deployed API: [HERE](http://bhe-tweet-api.herokuapp.com/api/v1/tweets)

> Please note that the deployed version of the API is facing some issues right now. For example, creating a POST request results in a status 500 code. These errors do not exist locally so please try cloning this repository and following the steps under the section labelled: `Setup`. Thanks!

#

## Setup

Check out this repository and then run,

```console
$ bundle install
$ bundle exec rails db:migrate
$ bundle exec rails server
```

## Features

Here are the features that are include:

- User Register capabilities
- Login capabilities
- Get all Tweets
- Create new Tweet
- Delete a tweet
- Update a tweet

### Testing

- rspec
- factory_bot
- faker

```console
$ bundle exec rspec
```

### For debugging

- pry-byebug

#

# Api

### User Authentication

`POST /api/v1/sessions`

Body:

```json
{
    "user": {
        "email": String,
        "password": String
    }
}
```

#

`Get /api/v1/logged_in`

Response:

```json
{
    "logged_in": true,
    "user": {
        "id": 2,
        "email": "test@test.com",
        "password_digest": String Hash,
        "created_at": "2022-02-05T13:15:08.279Z",
        "updated_at": "2022-02-05T13:15:08.279Z"
    }
}
```

> If there is no session:

```json
{
  "logged_in": false
}
```

#

`DELETE /api/v1/logout`

Response:

```json
{
  "status": 200,
  "logout": true
}
```

`POST /api/v1/registrations`

Body:

```json
{
    "user": {
        "email": String,
        "password": String
    }
}

```

#

## Tweets

`GET /api/v1/tweets`

Response:

```json
{
    {
        "id": 3,
        "tweet": "speer.io - that's the tweet : ) ",
        "user_id": 2,
        "created_at": "2022-02-05T13:16:43.743Z",
        "updated_at": "2022-02-05T13:16:58.971Z"
    },
    {
        "id": 2,
        "tweet": "It Works!!! : ) ",
        "user_id": 2,
        "created_at": "2022-02-05T13:16:18.632Z",
        "updated_at": "2022-02-05T13:16:18.632Z"
    },
    {
        "id": 1,
        "tweet": "another edited tweet",
        "user_id": 2,
        "created_at": "2022-02-05T13:15:43.117Z",
        "updated_at": "2022-02-05T13:15:43.117Z"
    }
}
```

`POST /api/v1/tweets`

Body:

```json
{
    "tweet": String
}

```

#

> To update/edit a tweet.

`PUT /api/v1/tweets/:id`

Body:

```json
{
    "tweet": String
}
```

#

> To delete a tweet.

`DELETE /api/v1/tweets/:id`

#
