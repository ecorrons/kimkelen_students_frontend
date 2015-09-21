class Student < ActiveRecord::Base

  def to_s
    "#{name} #{lastname}"
  end
end
