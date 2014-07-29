require 'active_record/acts_as/version'
require 'active_record/acts_as/relation'
require 'active_record/acts_as/migration'
require 'active_record/acts_as/instance_methods'

module ActiveRecord
  class Base
    include ActsAs::Relation
  end

  module ConnectionAdapters
    class TableDefinition
      include ActsAs::Migration::TableDefinition
    end
  end

  module ConnectionAdapters
    class Table
      include ActsAs::Migration::Table
    end
  end
end
