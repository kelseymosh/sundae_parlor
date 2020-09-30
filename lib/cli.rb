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
            system 'clear'
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
        @chosen_flavors = @prompt.multi_select("Choose your ice cream flavors", flavors)
    
    end
        
    def pick_toppings
        @chosen_toppings = @prompt.multi_select("Now choose your toppings", toppings)
    end

    def all_chosen_toppings
        @chosen_toppings.each {|topping| }
    end
    
    def create_sundae
        puts "Thanks for your order #{@user}!"
        puts "So for your ice cream flavors, we have: #{@chosen_flavors.join(", ")}"
        puts "For your toppings, we have: #{@chosen_toppings.join(", ")}"
        puts "Is that correct? Y/N"
            answer = gets.chomp
                if answer == "Y"
                    puts "Enjoy your sundae!"
                    answer = gets.chomp
                else
                    system 'clear'
                    puts "Our bad! We will remake your sundae!  Please go back to the ice cream counter."
                order_ice_cream
                pick_toppings
                create_sundae
        end
    end

end
