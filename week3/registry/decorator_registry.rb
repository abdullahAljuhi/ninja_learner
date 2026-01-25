# DecoratorRegistry manages decorator registration and selection
class DecoratorRegistry
  @registry = []

  def self.register(decorator_class, condition_proc)
    @registry << { decorator: decorator_class, condition: condition_proc }
  end

  def self.decorators_for(options)
    @registry.select { |entry| entry[:condition].call(options) }.map { |entry| entry[:decorator] }
  end
end
