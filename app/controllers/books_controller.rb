require 'byebug'
class BooksController < ApplicationController
  before_action :set_books, only: [:show, :edit, :update, :delete]
  def index
    @book = Book.all
  end

  def show
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  def new
    @book = Book.new
    @book.author = Author.new
  end

  private

  def book_params
    params.require(:book).permit(:title, author_attributes: [:name])
  end

  def set_books
    unless @book = Book.find_by_id(params[:id])
    redirect_to books_path
    end
  end
end
