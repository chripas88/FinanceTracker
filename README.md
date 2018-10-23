# README

Finance Tracker is a Stock Tracker Social Media App that was created according to the following Requirements:

01.  Authentication System, users can sign-up, edit their profile, log in/out.
02.  Users can track stocks, up to 10 per user. The profile page will display all the current stock prices.
03.  Users can search for stock symbols using a search bar.
04.  Users can choose to add a stock from the results of a search to their portfolio.
05.  Users can look for friends, or other users of the app, by name (first or last, or email).
06.  Users can view portfolio of stocks their friends are tracking for investing ideas.
07.  The application must be mobile friendly, so the styling has to be responsive.

Finance Tracker project was created using:

* Rails 5.2.1 ( instructions were originally for Rails 4 but pop-ups pointed out changes required for Rails 5 )
* Ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-linux]

Additional gems:

* gem 'devise'
* gem 'font-awesome-rails'
* gem 'twitter-bootstrap-rails'
* gem 'jquery-rails'
* gem 'devise-bootstrap-views'
* gem 'stock_quote'
* gem 'pg' ( for production DB )

Git repository:

* GitHub ( https://github.com/chripas88/FinanceTracker )

Production environment:

* Heroku ( https://chripas88-financetracker.herokuapp.com )

Creation log:

01.  Include Devise, Bootstrap, Font Awesome
02.  Generate Stock Model
03.  Build Stock Lookup form
04.  Set Lookup Stock Details
05.  Manage invalid search results
06.  Use Ajax for Stock search form submission
07.  Manage Errors and apply Refactoring
08.  Create Many to Many associations between users and stocks
09.  Fix flash display based on Action
10.  Apply Stock restrictions
11.  Create list of Stocks followed by User
12.  Build Delete Stock function
13.  Set User Details. Add first and last name parameters to existing devise views, routes, controllers
14.  Update navigation, add user profile views.
15.  Add Friends. Create Many to Many associations between users and users
16.  ...