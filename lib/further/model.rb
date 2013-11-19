module Further
  module ActiveRecord
    class Information < ::ActiveRecord::Base
      set_table_name 'further_informations'
      belongs_to :furtherable, polymorphic: true
      attr_accessible :info

      store :info


      def [](key)
        puts "get #{key} Value"
      end

      def []=(key, value)
        puts "Set #{key} to #{value}"
      end
    end
  end
end
