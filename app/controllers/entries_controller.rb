class EntriesController < ApplicationController

  def index
    @entries = Entry.all
  end

  def new
  end

  def create
    @entry = Entry.new(params[:entry])
    @entry.save
    redirect_to ("/entries/#{@entry.id}")
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.update(params[:entry])
    redirect_to ("/entries/#{@entry.id}")
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to ("/entries")
  end


end
