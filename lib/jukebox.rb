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
puts 'I accept the following commands:'
puts '- help : displays this help message'
puts '- list : displays a list of songs you can play'
puts '- play : lets you choose a song to play'
puts '- exit : exits this program'
end

def play(songs)
  puts "Please enter a song name or number:"
  users_input = gets.chomp 
  
  songs.each_with_index do |song, index|
    if song.include?(users_input)
      puts "Playing #{song}"
    else 
      puts "Invalid input, please try again"
    end 
  end 
end 

def list(songs)
  songs.each_with_index do |item, index|
    puts "#{index + 1}. #{item}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  help 
  puts "Please enter a command:"
  users_input = gets.chomp 
  
    if users_input == "list"
      list(songs)
      run(songs)
    elsif users_input == "play"
      play(songs) 
      run(songs)
    elsif users_input == "help"
      run(songs)
    elsif users_input == "exit"
      exit_jukebox
    end
end 