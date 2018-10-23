# README

Finance Tracker is a Stock Tracker Social Media App that was created according to the following Requirements:

1.  Authentication System, users can sign-up, edit their profile, log in/out.
2.  Users can track stocks, up to 10 per user. The profile page will display all the current stock prices.
3.  Users can search for stock symbols using a search bar.
4.  Users can choose to add a stock from the results of a search to their portfolio.
5.  Users can look for friends, or other users of the app, by name (first or last, or email).
6.  Users can view portfolio of stocks their friends are tracking for investing ideas.
7.  The application must be mobile friendly, so the styling has to be responsive.

Finance Tracker project was created using:

* Rails 5.2.1 ( instructions were originally for Rails 4 but pop-ups pointed out changes required for Rails 5 )
* Ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-linux]

Additional gems:

* gem 'devise'
* gem 'twitter-bootstrap-rails'
* gem 'jquery-rails'
* gem 'devise-bootstrap-views'
* gem "stock_quote"

Git repository:

* GitHub ( https://github.com/chripas88/FinanceTracker )

Production environment:

* Heroku ( https://chripas88-financetracker.herokuapp.com )

Creation log:

1.  Include Devise and Bootstrap
2.  Generate Stock Model
3.  Build Stock Lookup form
4.  Set Lookup Stock Details
5.  Manage invalid search results
6.  Use Ajax for Stock search form submission
7.  Manage Errors and apply Refactoring
8.  Create Many to Many associations between users and stocks
9.  Fix flash display based on Action
10.  Apply Stock restrictions
11.  Create list of Stocks followed by User
12.  Build Delete Stock function
13.  Set User Details. Add first and last name parameters to existing devise views, routes, controllers
14.  ...