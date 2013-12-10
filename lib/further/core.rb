module Further

  module Core
    extend ActiveSupport::Concern

    included do
    end
    
    module ClassMethods

      def further(name, options = {})
        has_one :further_information, as: :furtherable
        include Core::LocalInstanceMethods
        alias_method name, :further_info
        alias_method "#{name}=", :further_info
        attr_accessible name
      end

    end

    module LocalInstanceMethods

      def further_info(attributes = {})
        further = self.further_information
        info = {}
        
        if attributes.present? # Set
          
          if further
            attributes.each_pair do |key, value|
              further.info[key] = value
            end
            further.save
          else
            further = self.build_further_information info: attributes
            further.save
          end
          info = further.info

        else # Get          
          info = further.info if further
        end
        info
      end

    end

  end

end
