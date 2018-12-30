module Spree
  module Admin
    class PagesController < ResourceController
      private

      def permitted_resource_params
        params.require(:page).permit(%i[title body slug meta_title meta_description published template])
      end
    end
  end
end