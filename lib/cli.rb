class Cli
    attr_accessor :user, :prompt

    def initialize
        @user = nil
        @prompt = TTY::Prompt.new#(symbols: {marker: "🍦"})
    end

    def start_app
        system("clear")
        puts "Hello, welcome to the sundae parlor! May we have a name for the order?"
            @user = gets.chomp
            puts "Thank you #{@user}."
        end
    
    def show_flavors
       puts IceCream.all.pluck(:flavor)
    end

    def choose_a_sample
        puts "Would you like a sample today, #{@user}? Enter: Y/N"
        answer = gets.chomp
        if answer == "Y"
            ice_cream_flavors = show_flavors
           @prompt.select("Choose your sample flavor", ice_cream_flavors)
        else
            system 'clear'
            puts "Ok, here is an ice cream menu"
                puts show_flavors
        end
    end
        
    

end
