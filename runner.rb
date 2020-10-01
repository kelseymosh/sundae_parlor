require_relative 'config/environment'

cli = Cli.new

cli.start_app
cli.choose_a_sample
cli.order_ice_cream
cli.pick_toppings
cli.create_sundae

