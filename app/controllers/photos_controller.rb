class PhotosController < ApplicationController
  def index
    @photos = Photo.includes(:user).order("created_at DESC")
    @users = User.all
  end

  def show
    @photo = Photo.find(params[:id])
    @comment = Comment.new
    @comments = @photo.comments.includes(:user)
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.user_id = current_user.id
    if @photo.save
      redirect_to photo_path(@photo)
    else
      render :new
    end
  end

  def edit
    @photo = Photo.find(params[:id])
    if @photo.user != current_user
      redirect_to root_path, alert: 'アクセスできません！'
    end
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
      redirect_to photo_path(@photo)
    else
      render :edit
    end
  end

  def destroy
    photo = Photo.find(params[:id])
    photo.destroy
    redirect_to root_path
  end

  private
  def photo_params
    params.require(:photo).permit(:title, :body, :image)
  end
end
