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

def help()
  puts "#{"I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"}"
end

def play(songs)
  
  puts "Please enter a song name or number:"
  song_reference = gets.chomp
  if((song_reference.to_i > 0 && song_reference.to_i < songs.length))
      puts "#{songs[song_reference.to_i-1]}"
  elsif(songs.include?(song_reference))
    puts "#{song_reference}"
  else
    puts "Invalid input, please try again"
  end
  
end

def list(songs_array)
  songs_array.each_with_index do |value, index|
    puts "#{index + 1}. #{value}"
  end
  
end

def exit_jukebox
  puts "Goodbye"
  return false
end

def run(songs)
  jukebox_on = true
  while(jukebox_on) do
    puts "Please enter a command:"
    user_input = (gets.chomp).downcase
    case user_input
    when "play"
      play(songs)
    when "help"
      help()
    when "list"
      list()
    when "exit"
      jukebox_on = exit_jukebox()  
    end
  end
end

