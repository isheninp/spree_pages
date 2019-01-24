# SpreePages

Spree static page management plugin with custom templates and Summernote with Bootstrap 4 (WYSIWYG editor).

Your pages urls will be:
  www.site.com/pages/about
  www.site.com/pages/your_page

## Installation

1. Add this extension to your Gemfile with this line:
  ```ruby
  gem 'spree_pages', github: 'isheninp/spree_pages'
  ```

2. Install the gem using Bundler:
  ```ruby
  bundle install
  ```

3. Copy & run migrations
  ```ruby
  bundle exec rails g spree_pages:install
  ```

4. Restart your server

5. Settings

You should create at least one default template:
app/views/pages/templates/default.html.erb

Main app should have defined error_404, for example:

#application_controller.rb
  def error_404
    respond_to do |format|
      format.html { render 'error/error_404', :status => :not_found }
      format.xml  { head :not_found }
      format.json { head :not_found }
    end
  end

  
Copyright (c) 2018 Pavel Ishenin, released under the New BSD License
