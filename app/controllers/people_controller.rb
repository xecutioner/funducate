class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
  end

  def edit
  end

  def delete
  end

end
