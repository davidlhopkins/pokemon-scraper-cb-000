class Pokemon
  attr_accessor :name, :type, :db

  def initialize(name: name, type: type, db: db)
    @name = name
    @type = type
    @db = db
  end

end
