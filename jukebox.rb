songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight",
  "Lovelytheband - Broken"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(arr)
  arr.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(arr)
  puts "Please enter a song name or number:"
  song = gets.chomp

  arr.each_with_index do |song, index|
    song_name = ""
    song.split("").each_with_index do |char, index|
      if char == "-"
        song_name = song.slice(index + 1, song.length)
      end
    end

    if song == index || song_name == name
      puts "Playing #{song_name}"
      break
    end
  end

  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run
  help
  puts "Please enter a command: "
  response = gets.chomp
  if response == "exit"
    exit_jukebox
  elsif response == "list"
    list(arr)
  elsif response == "play"
    play(arr)
  elsif response == "help"
    help
  else
    puts "That isn't a valid command"
    help
  end
end
