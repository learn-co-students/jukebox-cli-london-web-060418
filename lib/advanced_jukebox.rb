#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '<Users/lucymitchell/Development/code/jukebox-cli-london-web-060418/audio/Emerald-Park/01.mp3',
"LiberTeens" => '<Users/lucymitchell/Development/code/jukebox-cli-london-web-060418/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '<Users/lucymitchell/Development/code/jukebox-cli-london-web-060418/audio/Emerald-Park/03.mp3',
"Guiding Light" => '<Users/lucymitchell/Development/code/jukebox-cli-london-web-060418/Emerald-Park/04.mp3',
"Wolf" => '<Users/lucymitchell/Development/code/jukebox-cli-london-web-060418/audio/Emerald-Park/05.mp3',
"Blue" => '<Users/lucymitchell/Development/code/jukebox-cli-london-web-060418/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '< Users/lucymitchell/Development/code/jukebox-cli-london-web-060418/audio/Emerald-Park/07.mp3'
}

def help
  #this method should be the same as in jukebox.rb
    puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  song_list = []
  my_songs.collect do |name, location|
    song_list << name
  end
  return song_list
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name:"
  choice = gets.chomp
    if my_songs[choice]
    system "open #{my_songs[choice]}"
  else
    puts "Invalid input, please try again"
    end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
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
