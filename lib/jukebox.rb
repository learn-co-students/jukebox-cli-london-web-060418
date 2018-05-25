songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]




def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
 songs.each_with_index do |song, index|
   puts "#{index + 1}. #{song}"
 end
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  songs.each_with_index do |song, index|
    if song.include?(choice) || choice == (index + 1)
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp

    if user_input == "play"
      play(songs)
    elsif user_input == "list"
      list(songs)
    elsif user_input == "help"
      help
    else
      puts "Invalid input, please try again"
    end
    puts "Please enter a command:"
    user_unput = gets.chomp
    if user_input == "exit"
      exit_jukebox
    end
end
