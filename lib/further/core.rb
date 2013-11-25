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
        if self.further_information.present?
          if attributes.present?
            self.further_information.update_attributes info: attributes
          else
            self.further_information.info
          end
        else
          if attributes.present?
            info = self.build_further_information info: attributes
            info.save
          else
            {}
          end
        end
      end

    end

  end

end
