class ApplicationController < ActionController::Base
	include DeviseWhitelist
	include SetSource
	include CurrentUserConcern
	include SetPageDefaults
	
	before_action :set_copyright

	def set_copyright
		@copyright = VcViewTool::Renderer.copyright 'Vito Christian', 'All Rights Reserved'
	end
end


module VcViewTool
	class Renderer
		def self.copyright name,msg
			"&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
		end
	end
end