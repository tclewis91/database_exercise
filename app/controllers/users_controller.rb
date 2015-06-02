class UsersController < ApplicationController
  def index
   u = User.all
  render text:
   u.map {|user| "#{user.first_name}, #{user.last_name}, #{user.occupation}, #{user.age}"}.join("<p>")
  end
end
