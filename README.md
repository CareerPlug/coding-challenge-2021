# CareerPlug Coding Challenge

This is the CareerPlug coding challenge. Bellow you will find a set of instructions on how to complete and submit the project. We ask that you spend no longer than four hours working on the challenge. If you have any questions at all please submit an issue or contact us directly!

## Introduction

This challenge will be completed using the starter Ruby on Rails project found in this repository. To get started, fork the repository to your Github account. Once you have completed the challenge and are ready for it to be reviewed, please put in a pull request to the base repository.

## Instructions

You will be building a simple blog for this challenge. There has been some work done for you already to help get you started, but most of the heavy lifting will be left up to you. The general idea of the blog is as follows.

There are `Post` and `Comment` models. Each post can have many different comments. A comment cannot exist without a `Post`. If a `Post` is deleted, all of its related `Comment` models should be deleted as well. You should be able to _create_ and _delete_ a `Post`, as well as _create_, _edit_ and _delete_ comments. There should also be search functionality that allows you to search for a specific `Post`. You can wire up the search to key off of the `title`, `body`, or both.

Below are some more specific instructions about the expected flow of the application.

- When you visit the site you are directed to a page showing all posts

  - Each post will consist of a `title` and `body`
  - On this page, the `body` of each `Post` should be abbreviated, so all of the text is not showing
  - Each post should have a link indicating how many comments the post has

    - This link, when clicked, should take you to a page showing the `Post`

  - This page should also contain the search bar to search posts
    - After submitting a search you should be redirected back to the `index` page and see a subset of posts that match the search criteria.

- When viewing a single `Post`:
  - You should have the ability to _delete_ the `Post`
  - All of the `Post` `Comments` should be listed here
  - You should also be able to add new `Comments`
    - You should be able to _edit_ and _delete_ each existing comment
    - How you choose to implement _editing_ and _deletion_ of comments is up to you. If you want to send an `AJAX` request, and write some javascript to handle updates, that is fine; you can also wire it up in a more standard `Rails` way and have it do a full page turn. For that matter, if you choose to implement the entire front end in javascript and use Rails as an API server, that is also just fine.

These are the basic requirements of the challenge. If you are able to get all of this functionality completed you will be in a pretty good spot. Of course, there is much more you can do with this challenge. If there is additional functionality that you would like to add, please feel free to do so. We would, however, prefer a sound, limited app over a full-featured app that is more rough around the edges.

Some examples of extensions you might add:

- Displaying a human-readable created-at date for a `Post`
- Adding a `Tag` model that can be associated to a `Post` with the ability to search by `Tag`
- Writing basic tests for your features
- Adding a `User` model with basic authentication and an association to `Post`
- Any other functionality that you can think of!

Be sure to comment your code so we can see that you understand what is going on.

#### A note on Scaffolding

Scaffolding can be a very useful tool when creating a Rails project. However, for the purposes of this exercise we would ask that you do not leverage the feature.

## Using Javascript

While not required for this project - Rails offers the ability to create a new project with a standard webpack config for React, Elm, Angular, StimululsJS, and Vue.js. This project has been created with configuration for using [StimulusJS](https://stimulus.hotwire.dev/). If you would like to use another framework for Javascript in this project that is perfectly fine. However, you will be responsible for configuring that in the project.

You will also need [Node.js](https://nodejs.org) to take advantage of the Javascript features. If you do not have Node installed already, you can download the installer for your operating system [here](https://nodejs.org/en/download/).

## Rails Setup

If you've never installed Ruby / Rails on your machine before, that is ok. If you are developing on a Mac, the team at [thoughtbot](https://thoughtbot.com/) has created a script that does most of the work for you which you can find [here](https://github.com/thoughtbot/laptop). There is also a helpful guide that [Pragmatic Studio](https://online.pragmaticstudio.com/tour/courses/rails/steps/2#mac) has put together for this task.

If you are developing on Linux or Windows, you may have a more difficult journey ahead of you, though the following resources should help you on your way:
Windows - [Pragmatic Studio](https://online.pragmaticstudio.com/tour/courses/rails/steps/2#windows)
Linux - [Pragmatic Studio](https://online.pragmaticstudio.com/tour/courses/rails/steps/2#linux)

Setup time does not count toward your total time to complete the challenge. If you have any issues whatsoever, please do not hesitate to contact us and we can assist / find alternatives to help you complete the challenge. Environment setup can be difficult and this is not the skill set we are looking to evaluate.

## Mockups

We've included some mockups below to help you visualize this site. Please do not feel that you have to model the layout of your site after these mockups. You are free to style your site however you want! These are provided as another resource for you, and are by no means strict guidelines.

**Viewing All Posts**
![](docs/assets/post-index.png)

**Creating a New Post**
![](docs/assets/post-new.png)

**Viewing a Single Post**
![](docs/assets/post-show.png)

## Running the Application

### Rails Server

```ruby
./bin/rails s
```

### Watching Javascript Assets

```ruby
./bin/webpack-dev-server
```
