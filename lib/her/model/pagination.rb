module Her
  module Model
    class Pagination
    		
    	extend ActiveSupport::Concern

		  included do
		    #self.send(:include, Her::Model::Relation)

		    # Fetch the values at the specified page number
		    #   Model.page(5)
	      def per(num)
	      	@params.merge(:per => num)
	      end
		  end
    end
	end
end
