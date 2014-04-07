node['execrun']['commands'].each do |attrs|  
  counter = 0
  bash (attrs['command'] or "command_#{counter}") do
    attrs.each_pair do |attribute, value|
      method(attribute).call(value)
    end
  end
  counter += 1
end