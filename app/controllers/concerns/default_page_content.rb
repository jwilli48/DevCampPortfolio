module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_filter :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Josh's DevCamp Portfolio"
    @seo_keywords = "Josh Williamson portfolio"
  end
end
