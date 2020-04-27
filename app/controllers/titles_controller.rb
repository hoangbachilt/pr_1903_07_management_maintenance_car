class TitlesController < ApplicationController

  def index
    @automotive_parts = AutomotivePart.all
    @automotive_part_by_title = @automotive_parts.filter_by_title(params[:title])
    @automotive_part_by_title = @automotive_part_by_title.paginate(page: params[:page], per_page: Settings.per_page)
    @service_packs = ServicePack.all
    @service_pack_by_title = @service_packs.filter_by_title(params[:title])
    @service_pack_by_title = @service_pack_by_title.paginate(page: params[:page], per_page: Settings.per_page)
    add_breadcrumb "#{params[:title]}", :titles_path
  end
end
