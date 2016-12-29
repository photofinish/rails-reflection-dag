class ReflectionsController < ApplicationController

  def index

  end

  def show
    @nodes = ActiveRecord::Base.connection.tables
    @edges = Array.new
    model = nil
    @nodes.each do |table|
      begin
        model = table.classify.constantize
      rescue NameError
        next
      end
      model.reflections.each do |item|
        begin
          name, reflection = item
          next if reflection.polymorphic?
          case reflection
            when ActiveRecord::Reflection::BelongsToReflection
              @edges << [reflection.table_name, table]
            when ActiveRecord::Reflection::HasManyReflection
              @edges << [reflection.table_name, table]
            when ActiveRecord::Reflection::HasOneReflection
              @edges << [reflection.table_name, table]
            when ActiveRecord::Reflection::HasAndBelongsToManyReflection

            when ActiveRecord::Reflection::ThroughReflection

            else
              raise "#{reflection}"
          end
        rescue NameError
          next
        end
      end
    end
    render 'reflections/show'
  end

  def edit
    ActiveRecord::Base.table_name
  end

end
