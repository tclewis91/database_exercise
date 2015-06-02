class UsersController < ApplicationController
  def index
   u = User.all
   u.map{|user| "#{first_name}, #{last_name}, #{occupation}, #{age}"}
  end
end
