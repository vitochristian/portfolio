module SetPageDefaults
	extend ActiveSupport::Concern

	included do
		before_action :set_page_defaults
	end
	def set_page_defaults
		@page_title = "Portfolio of Me"
		@seo_keywords = "Vito Christian G."
	end
end