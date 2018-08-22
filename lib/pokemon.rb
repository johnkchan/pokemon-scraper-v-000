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
  
 def self.find(id, db)
    new_pokemon = database.execute("SELECT * FROM pokemon WHERE id = (?)", id)
    new_pokemon = new_pokemon[0]
    Pokemon.new(id: new_pokemon[0], name: new_pokemon[1], type: new_pokemon[2], db: db)
  end
  
  def alter_hp(hp, db)
    
    
  end
  
end
