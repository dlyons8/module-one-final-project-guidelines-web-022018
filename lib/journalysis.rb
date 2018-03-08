require 'pry'

def user_check
  puts "Welcome to Journalaysis!"
  if User.all == []
    create_user
    log_in
  else
    log_in
  end
end

def create_user
  loop do
    puts "Please enter your desired username:"
    user = gets.chomp
    puts "Are you sure that you want '#{user}' to be your username?
    Enter Y or N."
    answer = gets.chomp
    if answer.downcase == "yes" || answer.downcase == "y"
      User.new(user)
      puts "Thank you. Your username is now: #{user}."
      break
    else
      puts "Okay, please try again."
    end
  end
end

def log_in
  puts "Please enter username to begin:"
  user_name = gets.chomp
  User.find_user(user_name)
end

def intro
  puts "Welcome to Journalaysis!
1. Enter Journal Entry
2. Browse Entries
3. Journalyze
4. Help
5. Log out
6. Exit"
end

def help
end

def enter_entry
  puts "What is your mood?"
  mood = gets.chomp
  puts "What is your location?"
  location = gets.chomp
  puts "Record your journal:"
  entry = gets.chomp

  journal_entry = {
    :location => location,
    :mood => mood,
    :entry  => entry
  }

  new_journal = Journal.create(journal_entry)
end

def browse_entry
end

def journalyze
end



def journal_entry

end

def run
user_check #verifies that there is a user base and creates and/or logs in user
  loop do
    intro
    selection = gets.chomp
      if selection == "1"
        enter_entry
      elsif selection == "2"
        browse_entry
      elsif selection == "3"
        journalyze
      elsif selection == "4"
        help
      elsif selection == "5"
        log_in
      elsif selection == "6"
        puts "Thank you for using Journalyze, the journal that analyzes your memories."
        break
      end
    end
end
