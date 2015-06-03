class UsersController < ApplicationController
  def index

    if params != nil
      # User.where("first_name LIKE ?", "#{params[:first_name]}")
      User.select { |first_name| first_name.include?'s'}
    end

  #  @u = User.all
  # render text:
  #  @u.map {|user| "#{user.first_name}, #{user.last_name}, #{user.occupation}, #{user.age}"}.join("<p><img src = 'http://rlv.zcache.com/basset_hound_puppy_postcard-r4f199e398ea2471f9d5ea03cf3c44953_vgbaq_8byvr_50.jpg'/>")
  # end
end
  def show
    if User.exists?(params[:id])
      user = User.find(params[:id])
      render text: "#{user.first_name}, #{user.last_name}, #{user.age}"
    else
      render text: 'Error: 404 User Not Found', status: 404
    end
  end

end

