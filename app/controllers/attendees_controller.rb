class AttendeesController < ApplicationController

  def join
    user = User.find(session[:user_id])
    event = Event.find(params[:id])
    attend = Attendee.where(user: user, event: event)
    if attend.length == 0
      attend = Attendee.new
      attend.user = user
      attend.event = event
      attend.save
    end
    redirect_to "/events/#{event.id}"
  end

  def leave
    user = User.find(session[:user_id])
    event = Event.find(params[:id])
    attend = Attendee.where(user: user, event: event)
    if attend.length > 0
      attend[0].destroy
    end
    redirect_to "/events/#{event.id}"
  end
end
