class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/photos/#{comment.photo.id}" # コメントと結びつく投稿された写真の詳細画面に遷移する
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, photo_id: params[:photo_id])
  end
end
