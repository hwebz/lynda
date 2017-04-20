# Absolute paths

# Use forward slashes, even on Windows
puts "/Users/ha.do/Downloads/Compressed"
# File.join ensures platform independence
puts File.join('', 'Users', 'ha.do', 'Downloads', 'Compressed')

# Relative paths

# __FILE__ is THIS file
puts __FILE__

# expand_path will convert a rlative path to an absolute path
# in this case, it returns the full path the file
puts File.expand_path(__FILE__)

# relative paths are easiest when you start with
# this file's directory
puts File.dirname(__FILE__)

# .. "moves back" on directory
puts File.join(File.dirname(__FILE__), '..', 'angular-2-essential-training')