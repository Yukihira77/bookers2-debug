class BookCommentsController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    comment = current_user.book_comment.new(book_comment_params)
    comment.book.id = book.id
    comment.save
    redirect_to book_path(book)
  end
  
  def destroy
    BookComment.find(params[:id]).destroy
    resirect_to book_path(params[:book_id])
  end
  
  private
  
  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end
end
