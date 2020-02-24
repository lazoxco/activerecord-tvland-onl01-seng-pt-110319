class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  attr_accessor :data, :day, :season

  def actors_list
    actors.collect do |actor|
      "#{actor.first_name} #{actor.last_name}"
    end
  end
end