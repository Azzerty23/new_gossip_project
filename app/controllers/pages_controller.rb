class PagesController < ApplicationController

  def welcome
    @gossips = Gossip.all
  end

  def login
    @users = User.all

  end

end