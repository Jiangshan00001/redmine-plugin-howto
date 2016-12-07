Redmine::Plugin.register :test1 do
  name 'Test1 plugin Null'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  
  menu :top_menu, :polls, { :controller => 'test1ctl1', :action => 'index' }, :caption => 'test1ctl1'
end
