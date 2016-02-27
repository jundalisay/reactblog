== CODERSCHOOL HOMEWORK

# Pre-work - *React Blog*

**React Blog** is a Ruby on Rails blog application.

Submitted by: **Juan Dalisay Jr.**

Time spent: **over 25** hours spent in total, mostly in figuring out JS

Timeline:

* Feb 21 - Finished basic CRUD blog and deploy to heroku (2 hours)
* Feb 20 - Learned/Tried Ember.js failed, couldn't get .hbs files to work (3 hours)
* Feb 22 - Learned/Tried Angular.js failed, couldn't get scopes to work (3 hours)
* Feb 23-24 - Learned/Tried React.js, got it to work, following a sample at https://github.com/applegrain/creact (10 hours)
* Feb 25-26 - added extra features like navbar, search via sunspot (fail on heroku), post views via impressionist, markdown via redcarpet (6 hours)
* Feb 27 - added gifs, tried comments and tags but failed (2 hours)

URL: **http://coderschoolblog.herokuapp.com/**

## User Stories

The following **required** functionality is complete:

> HINT: mark the items you completed with [x]

* [X] User can create a new post, formatted using the Markdown language.
* [X] User can edit an existing post.
* [X] There is one post that introduces the App Creator with name, picture.
* [X] User can delete stories, with an alert that asks the user to confirm.
* [X] User see a search form on the Posts page.
* [X] User can submit a search term to find all posts bywith titles containing the search term.

The following **optional** features are implemented:
* [X] There is a "navbar" that is responsive to window size similar to http://v4-alpha.getbootstrap.com/examples/navbar/.
* [X] User can see how many views a post has. 
* [ ] User can leave a comment on a post.
* [ ] User can add "tags" to a post, and filter posts by tag. 

> HINT: if you are unsure how to implement the Search feature, you can Google how to implement a simple search form. For example, one of the sites you will find is [this](http://www.jorgecoca.com/buils-search-form-ruby-rails/)

The following **additional** features are implemented:

- [X] React.JS for a future one-page app

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

> HINT: You can put a `walkthrough.gif` file in your project folder, add to git, and use the following syntax to embed it:  
![Video Walkthrough](walkthrough.gif)

> Adding an Article (React)
![React-Add](/react.gif)

> Adding an Article (Non-React with Markdown)
![NonReact-Add](/nonreact.gif)

> Searching an Article
![Search](/search.gif)

> Deleting an Article (React/Non-React)
![Delete](/delete.gif)

GIF created with SilentCast[SilentCast](https://github.com/colinkeenan/silentcast).

## Notes

Describe any challenges encountered while building the app.

1. Difficulty with JS. Spent over 3 hours looking for the cause of a UI bug after deployment to Heroku which turned out to be caused by leftover ember files
2. Some gems such as Sunspot need add-ons in Heroku which are not free
3. Used MySQL / ClearDB because I had problems with Postgre on Ubuntu

## License

    Copyright [2016] [Juan Dalisay Jr.]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.