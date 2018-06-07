module Slugifiable
  def slug(text)
    text.downcase.strip.gsub(' ', ' - ').gsub(/[^\w-]/, '')
  end

  def find_by_slug(slug)
     self.all.find do |word|
      slug(word.name) == slug
    end
  end
end
