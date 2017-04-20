# Two ways to open files for eading/writing

#1. Instantiate a file object, give it instructions
file = File.new("output.txt", "w")
# write data to the file
file.puts "First line"
file.puts "Second line"
file.print "Third line. "
file.write "In the third line also. "
file.write "Still in the third line."
file.close

#2. Provide a file with a block of instructions
File.open("output.txt", "r") do |file|
  #read data from the file
  # puts file.readlines()
  while line = file.gets
    puts "** " + line.chomp.reverse + " **"
  end
end

file = File.open("output.txt", "r")
file.each_line{|line| puts line.upcase}
# puts file.gets
# puts file.read(4)
# puts file.pos # return position of pointer
# file.pos -= 2
# puts file.eof?
# puts file.readline
# puts file.readlines
# puts file.rewind # reset pointer to 0
# puts file.lineno # return line number
file.close

file = File.new("file_to_rename.txt", "w")
file.puts "This is a file for renaming and then deleting."
file.close

File.rename("file_to_rename.txt", "file_to_delete.txt")
# File.delete("file_to_delete.txt")

file = File.new("file_to_copy.txt", "w")
file.puts "This is a file for copying"
file.close

require 'fileutils'
FileUtils.copy("file_to_copy.txt", "copied_file.txt")

file = 'file_to_copy.txt'
puts File.exist?(file)
puts File.file?(file)
puts File.directory?(file)
puts File.readable?(file)
puts File.writable?(file)
puts File.executable?(file)
puts File.size(file) # in bytes
puts File.dirname(file)
puts File.expand_path(file)
puts File.basename(file)
puts full_path = File.expand_path(file)
puts File.basename(full_path)
puts File.extname(file)
puts File.atime(file)
puts File.mtime(file)
puts File.ctime(file)

file = File.new('file_to_copy.txt', 'r')
puts file.stat # all information about this file

# Directory
puts File.dirname(__FILE__)
puts File.expand_path(File.dirname(__FILE__))
puts Dir.pwd
Dir.chdir("..")
puts Dir.pwd
Dir.chdir(File.join('', 'wamp64', 'www', 'lynda', 'ruby-essential-training'))
puts Dir.pwd
puts Dir.entries(".")

Dir.entries(".").each do |entry|
  print entry + ": "
  if File.file?(entry) && File.readable?(entry)
    File.open(entry, 'r') do |file|
      puts file.gets
    end
  else
    puts
  end
end

Dir.foreach('.') {|entry| puts entry}
Dir.mkdir('temp_directory') unless Dir.exist?('temp_directory')
Dir.delete('temp_directory')
# second argument is the 'mode': r, w, a, r+, w+, a+