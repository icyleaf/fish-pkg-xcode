function xcsel -d "Set the path to the active developer directory"
  set -l default_path "/Applications/Xcode.app/Contents/Developer/"
  set -l path $default_path
  if not [ -z $argv[1] ]
    set path $argv[1]
  else
    echo "Not set path, using default: $path"
  end

  sudo xcode-select --switch $path
end