class Pokemon
  attr_accessor :id, :name, :type, :hp, :db

  def initialize(id:, name:, type:, hp: nil db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, hp, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?, ?)", name, type, hp)
  end

  def self.find(id, db)
    result = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    Pokemon.new(id: info[0], name: info[1], type: info[2], hp: info[3], db: db)
  end

  def alter_hp(new_hp, db)
    db.execute("UPDATE pokemon SET hp = ? WHERE id= ?", new_hp, self.id)
  end
end
