Redmine::Plugin.register :test4 do
  name 'Test4 plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  menu :top_menu, :test4topmenuname, { :controller => 'test4ctl1', :action => 'index' }, :caption => :'test4ctl1'

end
