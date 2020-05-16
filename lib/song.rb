class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song=self.new
    song.save
    song
  end
  
  
  def self.new_by_name(name)
    song =self.new 
    song.name =name
    song
  end
  
  def self.create_by_name(name)
    song =self.new
    song.name =name
    song.save
    song
  end
  
  def self.find_by_name(name)
    song =self.new
    # song =self.all.find {|x| x.name==name} ? song : false
    self.all.each do |x|
      if x.name==name
        return x
      elsif self.all.find {|y| x.name==name}==nil
        return false 
      end
    end
  end

end
