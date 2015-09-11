function simulator -d "Open iPhone Simulator app"
  if [ -d (xcode-select -p)/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app ]
    open (xcode-select -p)/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app
  else
    open (xcode-select -p)/Applications/iOS\ Simulator.app
  end
end