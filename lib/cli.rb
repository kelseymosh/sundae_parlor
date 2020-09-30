class Cli
    attr_accessor :user, :prompt

    def initialize
        @user = nil
        @prompt = TTY::Prompt.new(symbols: {marker: "🍦"})
    end

    def start_app
        system("clear")
        puts "Hello, welcome to the sundae parlor! May we have a name for the order?"
            @user = gets.chomp
            puts "Thank you!"
        end
    
    def show_flavors
       puts IceCream.all.pluck(:flavor)
    end

    def flavors
        IceCream.all.pluck(:flavor)
    end

    def toppings
        Topping.all.pluck(:topping_type)
    end

    def select_sample_flavor
        @chosen_sample_flavor = @prompt.select("Choose your sample flavor", flavors)
    end

    def choose_a_sample
        puts "Would you like a sample today, #{@user}? Enter: Y/N"
        answer = gets.chomp
        if answer == "Y"
            select_sample_flavor 
            puts "Here is your sample of #{@chosen_sample_flavor}. Are you ready to order? Y/N"  
            answer = gets.chomp
        unless answer == "N"
            puts "Please go to the counter"
        else 
            choose_a_sample
            end
        end
    end

    def order_ice_cream
        @chosen_flavors = @prompt.multi_select("Choose two ice cream flavors", flavors)
    
    end
        
    def pick_toppings
        @chosen_toppings = @prompt.multi_select("Now choose two toppings", toppings)
    end
    
    def create_sundae
        puts "Thanks for your order #{@user}! Enjoy your #{@chosen_flavors[0]}, #{@chosen_flavors[1]} sundae with #{@chosen_toppings[0]} and #{@chosen_toppings[1]}!"
    end

end
