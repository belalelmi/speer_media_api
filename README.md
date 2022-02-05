## BackEnd Assessment

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

### For testing

- rspec
- factory_bot
- faker

### For debugging

- pry-byebug

## Testing

```console
$ bundle exec rspec
```
