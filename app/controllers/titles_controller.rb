class TitlesController < ApplicationController
  def index
    @automotive_parts = AutomotivePart.all
    @automotive_part_by_title = @automotive_parts.filter_by_title(params[:title])
    @automotive_part_by_title = @automotive_part_by_title.paginate(page: params[:page], per_page: Settings.per_page)
  end
end
