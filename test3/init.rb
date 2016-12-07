Redmine::Plugin.register :test3 do
  name 'Test3 plugin access project db'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  menu :top_menu, :test3topmenuname, { :controller => 'test3ctl1', :action => 'index' }, :caption => :'test3ctl1'
end
