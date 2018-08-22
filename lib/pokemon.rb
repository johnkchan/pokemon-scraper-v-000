class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
 def self.find(id, database)
    new_pokemon = database.execute("SELECT * FROM pokemon WHERE id = (?)", id)
    binding.pry
    new_pokemon = new_pokemon[0]
    Pokemon.new(id: new_pokemon[0], name: new_pokemon[1], type: new_pokemon[2], db: database)
  end
  
  def alter_hp(hp)
    
    
  end
  
end
