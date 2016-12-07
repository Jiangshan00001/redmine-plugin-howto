class Test3ctl1Controller < ApplicationController
  unloadable


  def index
    #access Project. get active projects
	tmpVar = Project.active.visible.order('lft').all
	# the @ means a member variable. that could transmitted to view
    @projects = tmpVar
  
  
  end
end
