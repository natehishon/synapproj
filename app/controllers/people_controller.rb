class PeopleController < ApplicationController

  def index
    people = Person.includes(:organization, :address)


    # render :json => @people.to_json( :include => [:organization, :address], :except => [:organization_id, :address_id])
    render json: people.as_json(include: [:organization, :address], except: [:organization_id, :address_id])
  end

  def show

    person = Person.find(params[:id])

    render json: person.as_json(include: [:organization, :address], except: [:organization_id, :address_id])

  end



end