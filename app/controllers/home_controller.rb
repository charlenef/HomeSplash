class HomeController < ApplicationController

  def index
  @current_time = Time.now.stamp_like("Feb 1st 9:00pm")
  @greet_message = case Time.now.hour
  when 5..11
    "Good morning!"
   when 12..15
    ["Good afternoon, Biatch!", "Afternoon!"].sample  
   when 16..19
    ["Good evening!", "How's your evening going?"].sample
   when 20..23, 0..4
    "Goodnite! <i class=\"fa fa-moon-o\"></i>".html_safe  
    end

    @quip = Quote.all.sample.quip


  end
end



