function xc -d "Find & Open Xcode project or workspace"
  set -l xcode_proj (ls | grep "\.xc" | sort -r | head -1)
  if [ -n $xcode_proj ]
    echo "Found $xcode_proj"
    open "$xcode_proj"
  else
    echo "No xcworkspace/xcodeproj file found in the current directory."
  end
end