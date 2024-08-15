class Genre < ActiveRecord::Base
  has_many :songs

  def genre_id_change=(name)
    self.genre = Genre.find_or_create_by(name: name)
  end

  def genre_id_change
     self.genre ? self.genre.name : nil
  end
end
