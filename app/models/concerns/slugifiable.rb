module Slugifiable
<<<<<<< HEAD
  def slug(text)
    text.downcase.strip.gsub(' ', ' - ').gsub(/[^\w-]/, '')
  end

  def find_by_slug(slug)
     self.all.find do |word|
      slug(word.name) == slug
=======
  def slug(name)
    slug = name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    slug
  end

  def find_by_slug(slug)
    self.all.find do |value|
      slug(value.name) == slug
>>>>>>> origin/tony
    end
  end
end
