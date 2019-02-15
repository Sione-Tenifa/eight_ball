require "pry"
require "colorize"

class EightBall
  attr_accessor :response 
  def initialize
    @response = [
      "It is certain", "Without a doubt",
      "Yes", 
      "As I see it, Yes",
      "Most Likely",
      "Hazy",
      "Ask again later",
      "Better not tell you now",
      "Don't count on it",
      "No",
      "Very doubtful",
      "Most Likely not"
    ]

    menu

    EightBall.new

  end
    def menu
      puts "Welcome to the Magic Eight Ball".colorize(:yellow)
      space
      puts "Type a question to get an answer, or type QUIT to end the program".colorize(:blue)
      user_input
      menu

    end

    def user_input
      case gets.to_s.strip
      when "add"
        add_answer
      when "reset"
        reset_answer
      when "print"
        print_answers
      when "quit"
        space
        puts "Until next time!!!"
        sleep(3)
        print `clear`
        exit
      else
        answer 
      end
    end 
    def space 
      puts " " * 5
      # puts
    end
    def line 
      puts "~".colorize(:purple) * 25
      # puts
    end
    def answer
      line 
      puts "#{@response.sample}".colorize(:red)
      line
    end
    def add_answer
      puts "Type the answer you would like to add or done to leave this mode.".colorize(:yellow)

      
      input = gets.strip
      case input 
        when "done"
          menu
        else
        if @response.include? input 
        else
        @response << input 
        add_answer
        end

      end
    end
    def print_answers
      line
      space
      puts @response
      space
    end 
    def reset_answer
      space
      line
      @response = [
        "It is certain", "Without a doubt",
        "Yes", 
        "As I see it, Yes",
        "Most Likely",
        "Hazy",
        "Ask again later",
        "Better not tell you now",
        "Don't count on it",
        "No",
        "Very doubtful",
        "Most Likely not"
      ]

    end



end



EightBall.new

    