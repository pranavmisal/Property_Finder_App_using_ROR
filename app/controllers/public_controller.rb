class PublicController < ApplicationController
	def main
		if account_signed_in?
			redirect_to dashboard_path, flash: { success: "Successfully singed in. Welcome to Property Finder!" } and return
		end

		@properties = Property.latest
	end
end
