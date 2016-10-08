class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
  before_action :authenticate_user!, only: [:show, :new, :edit, :update, :destroy]
  # before_filter :authenticate_user!, only: [:show, :new, :edit, :update, :destroy]

  def index
  end

  def show
  end
end
