require 'restaurant'
require 'string_extend'
class Guide
  class Config
    @@actions = ['list', 'find', 'add', 'quit']

    def self.actions; @@actions; end
  end

  def initialize(path=nil)
    # locate the restaurant text file at path
    Restaurant.filepath = path

    if Restaurant.file_usable?
      puts "Found restaurant file."

    # or create a new file
    elsif Restaurant.create_file
      puts "Created restaurant file."

    # exit if create fails
    else
      puts "Exiting.\n\n"
      exit!
    end
  end

  def launch!
    introduction
    # action loop
    result = nil
    until result == :quit
      #   what do you want to do (list, find, add, quit)
      action, args = get_action
      #   do that action
      result = do_action(action, args)
      # repeat until user quits
      # break if action == :quit
    end
    conclusion
  end

  def get_action
    action = nil
    # Keep asking for user input until we get a valid action
    until Guide::Config.actions.include?(action)
      puts "Actions: " + Guide::Config.actions.join(", ") if action
      print "> "
      user_response = gets.chomp
      args = user_response.downcase.strip.split(' ')
      action = args.shift
    end
    return action, args
  end

  def do_action(action, args=[])
    case action
      when 'list'
        list(args)
        # puts "Listing..."
      when 'find'
        keyword = args.shift
        find(keyword)
        # puts "Finding..."
      when 'add'
        add
        # puts "Adding..."
      when 'quit'
        return :quit
      else
        puts "\nI don't understand that command.\n"
    end
  end

  def add
    output_action_header("Add a restaurant")

    restaurant = Restaurant.build_from_questions
    if restaurant.save
      puts "\nRestaurant Added\n\n"
    else
      puts "\nSave Error: Restaurant not added\n\n"
    end
  end

  def list(args=[])
    sort_order = args.shift
    sort_order = args.shift if sort_order == "by"
    # sort_order ||= "name"
    sort_order = "name" unless ['name', 'cuisine', 'price'].include?(sort_order)

    output_action_header("Listing restaurant")
    restaurants = Restaurant.saved_restaurants
    restaurants.sort! do |r1, r2|
      case sort_order
        when "name"
          r1.name.downcase <=> r2.name.downcase
        when "cuisine"
          r1.cuisine.downcase <=> r2.cuisine.downcase
        when "price"
          r1.price.to_i <=> r2.price.to_i
      end

    end
    # restaurants = Restaurant.saved_restaurants
    # restaurants.each do |rest|
    #   puts rest.name + " | " + rest.cuisine + " | " + rest.formatted_price
    # end
    output_restaurant_table(restaurants)
    puts "Sort using: 'list #{sort_order}' or 'list by #{sort_order}'\n\n"
  end

  def find(keyword="")
    output_action_header("Find a restaurant")
    if keyword
      # search
      restaurants = Restaurant.saved_restaurants
      found = restaurants.select do |rest|
        rest.name.downcase.include?(keyword.downcase) ||
        rest.cuisine.downcase.include?(keyword.downcase) ||
        rest.price.to_i <= keyword.to_i
      end
      output_restaurant_table(found)
    else
      puts "Find using a key phrase to search the restaurant list."
      puts "Examples: 'find tamale', 'find Mexican', 'find mex'\n\n"
    end
  end

  def introduction
    puts "\n\n<<< Welcome to the Food Finder >>>\n\n"
    puts "This is an interactive guide to help you find the food you crave.\n\n"
  end

  def conclusion
    puts "\n\n<<< Goodbye and Bon Appetit! >>>\n\n"
  end

  private
    def output_action_header(text)
      puts "\n#{text.upcase.center(60)}\n\n"
    end

    def output_restaurant_table(restaurants=[])
      print " " + "Name".ljust(30)
      print " " + "Cuisine".ljust(20)
      print " " + "Price".rjust(6) + "\n"
      puts "-" * 60

      restaurants.each do |rest|
        line = " " << rest.name.titleize.ljust(30)
        line << " " + rest.cuisine.titleize.ljust(20)
        line << " " + rest.formatted_price.rjust(6)
        puts line
      end
      puts "No listing found" if restaurants.empty?
      puts "-" * 60
    end

end