class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    @event = Event.new
    @event.user_id = session[:user_id]
    @event.start_time = params[:start_time]
    @event.finish_time = params[:finish_time]
    @event.age_min = params[:age_min]
    @event.age_max = params[:age_max]
    @event.gender = params[:gender]
    @event.where = params[:where]
    @event.details = params[:details]
    @event.title = params[:title]
    @event.group_max = params[:group_max]
    @event.group_min = params[:group_min]
    @event.language = params[:language]
    @event.link = params[:link]
    if @event.save
      redirect_to "/events/#{@event.id}"
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
    if @event.user_id == session[:user_id]
      render 'new'
    else
      redirect_to "/events/#{event.id}"
    end
  end

  def update
    @event = Event.find(params[:id])
    if @event.user_id == session[:user_id]
      @event.start_time = params[:start_time]
      @event.finish_time = params[:finish_time]
      @event.age_min = params[:age_min]
      @event.age_max = params[:age_max]
      @event.gender = params[:gender]
      @event.where = params[:where]
      @event.details = params[:details]
      @event.title = params[:title]
      @event.group_max = params[:group_max]
      @event.group_min = params[:group_min]
      @event.language = params[:language]
      @event.link = params[:link]
      if @event.save
        redirect_to "/events/#{@event.id}"
      else
        render 'new'
      end
    else
      redirect_to "/events/#{event.id}"
    end
  end

  def search
    @events = Event.all
  end

  def destroy
    event = Event.find(params[:id])
    if event.user_id == session[:user_id]
      event.attendees.each do |a|
        a.destroy
      end
      event.destroy
      redirect_to '/profile'
    else
      redirect_to "/events/#{event.id}"
    end
  end

end
