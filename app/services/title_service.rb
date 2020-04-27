class TitleService
  def initialize object
    @object = object
  end

  def call
    titles = []
    @object.each do |object|
      titles.push object.title
    end
    titles.uniq
  end
end
