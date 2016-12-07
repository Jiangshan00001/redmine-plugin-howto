Redmine::Plugin.register :test2 do
  name 'Test2 plugin Internationalization'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  menu :top_menu, :test2topmenuname, { :controller => 'test2ctl1', :action => 'index' }, :caption => :'test2ctl1'
end
