module Slugifiable
  def slug(name)
    slug = name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    slug
  end

  def find_by_slug(slug)
    self.all.find do |value|
      slug(value.name) == slug
    end
  end
end
