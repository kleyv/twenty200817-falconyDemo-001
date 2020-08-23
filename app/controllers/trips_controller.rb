class TripsController < ApplicationController

  def index
    # Array of all countries
    @countries = ['Russia', 'Germany', 'France', 'United Kingdom', 'Italy', 'Spain', 'Ukraine', 'Poland', 'Romania', 'Netherlands', 'Belgium', 'Greece', 'Portugal', 'Czech Republic', 'Hungary', 'Sweden', 'Belarus', 'Austria', 'Switzerland', 'Bulgaria', 'Serbia', 'Denmark', 'Finland', 'Slovakia', 'Norway', 'Ireland', 'Croatia', 'Bosnia and Herzegovina', 'Moldova', 'Lithuania', 'Albania', 'Macedonia', 'Slovenia', 'Latvia', 'Kosovo', 'Estonia', 'Montenegro', 'Luxembourg', 'Malta', 'Iceland', 'Andorra', 'Liechtenstein', 'Monaco', 'San Marino']
    @countries = @countries.sort
  end
  def search
    # SQL query to find the trip matching user input for origin_id and destination_id
    @trips = Trip.where(['origin_id = ? AND destination_id = ?', params[:origin_id], params[:destination_id]])
  end
end
