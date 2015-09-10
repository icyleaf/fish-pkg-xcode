function xc -d "Find & Open Xcode project or workspace"
  set -l xcode_proj (ls | grep "\.xc" | sort -r | head -1)
  if [ -n $xcode_proj ]
    echo "Found $xcode_proj"
    open "$xcode_proj"
  else
    echo "No xcworkspace/xcodeproj file found in the current directory."
  end
end

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

function xcp -d 'Show the path to the active developer directory'
  xcode-select --print-path
end

function xcdd -d "Clear xcode derived daata"
  rm -rf ~/Library/Developer/Xcode/DerivedData/*
end

function simulator -d "Open iPhone Simulator app"
  if [ -d (xcode-select -p)/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app ]
    open (xcode-select -p)/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app
  else
    open (xcode-select -p)/Applications/iOS\ Simulator.app
  end
end

function xcb -d "Alias to xcodebuild"
  xcodebuild
end
