1 write a plugin with menu & route
https://www.redmine.org/projects/redmine/wiki/Plugin_Tutorial

1 set envirable:
You may need to set the RAILS_ENV variable in order to use the command below:
$ export RAILS_ENV="production" 
On windows:
$ set RAILS_ENV=production

2 
This wiki uses ruby script/rails on Redmine 2.x (Rails 3).
You need to use ruby bin/rails or rails on Redmine 3.x (Rails 4).

bundle exec ruby bin/rails generate redmine_plugin <plugin_name>

$ bundle exec ruby script/rails generate redmine_plugin test1


3 add controller

$ bundle exec ruby script/rails generate redmine_plugin_controller test1 test1ctl1 index

For now, the plugin doesn't do anything. So let's create a controller for our plugin.
We can use the plugin controller generator for that. Syntax is:

bundle exec ruby script/rails generate redmine_plugin_controller <plugin_name> <controller_name> [<actions>]
So go back to the command prompt and run:


A controller PollsController with 2 actions (#index and #vote) is created.

4 add route:
config/route.rb:
get 'test1ctl1', :to => 'test1ctl1#index'

5 Extending menus?
Edit plugins/polls/init.rb

menu :top_menu, :test1topmenuname, { :controller => 'test1ctl1', :action => 'index' }, :caption => 'test1ctl1'


Syntax is:

menu(menu_name, item_name, url, options={})
There are five menus that you can extend:



:top_menu - the top left menu
:account_menu - the top right menu with sign in/sign out links
:application_menu - the main menu displayed when the user is not inside a project
:project_menu - the main menu displayed when the user is inside a project
:admin_menu - the menu displayed on the Administration page (can only insert after Settings, before Plugins)
Available options are:

:param - the parameter key that is used for the project id (default is :id)
:if - a Proc that is called before rendering the item, the item is displayed only if it returns true
:caption - the menu caption that can be:
a localized string Symbol
a String
a Proc that can take the project as argument
:before, :after - specify where the menu item should be inserted (eg. :after => :activity)
:first, :last - if set to true, the item will stay at the beginning/end of the menu (eg. :last => true)
:html - a hash of html options that are passed to link_to when rendering the menu item





6 restart redmine