module AutomotivePartsHelper
  def titles automotive_part
    titles = []
    @automotive_parts.each do |automotive_part|
      titles.push automotive_part.title
    end
    titles = titles.uniq
  end
end
