namespace :drivers do

  task :generate_drivers => :environment do
    puts "Generating taxi drivers.."
    names = [
      { :fname => "Mike",   :lname => 'Azra', :lat => 3.117701, :long => 101.677870 },      
      { :fname => "Ahmad",  :lname => 'Ezra' , :lat => 3.117701, :long => 101.677870 },      
      { :fname => "Ali",    :lname => 'Alju', :lat => 3.117701, :long => 101.677870 },      
      { :fname => "Shak",   :lname => 'Nida', :lat => 3.117701, :long => 101.677870 },      
      { :fname => "Shafik", :lname => 'Toni', :lat => 3.117701, :long => 101.677870 },      
      { :fname => "Sargz",  :lname => 'Xmen', :lat => 3.117701, :long => 101.677870 },      
      { :fname => "Agor",   :lname => 'Grey', :lat => 3.117701, :long => 101.677870 },      
      { :fname => "Igoyk",  :lname => 'Tonik', :lat => 3.117701, :long => 101.677870 },      
      { :fname => "Dolpo",  :lname => 'Ashra', :lat => 3.117701, :long => 101.677870 },      
      { :fname => "Moyko",  :lname => 'Zebra', :lat => 3.117701, :long => 101.677870 }
    ]

    names.each do |name|
      Driver.create!(:firstname  => name[:fname],
                     :lastname  => name[:lname],
                     :mobileno  => rand(99999).to_s.rjust(9, '014'),
                     :longitude => name[:lat],
                     :latitude  => name[:long],
                     :status    => Driver::STATUS[:active] )
    end
  end

end
