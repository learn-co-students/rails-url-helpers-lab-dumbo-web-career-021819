class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activate
  		self.update(active: "true")
  end

  def deactivate
  	self.update(active: "false")
  end




end