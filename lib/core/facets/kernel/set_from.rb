module Kernel

  # Set setter methods using a another object.
  #
  #   class X
  #     attr_accessor :a, :b
  #     def initialize( a, b )
  #        @a,@b = a,b
  #     end
  #   end
  #
  #   obj1 = X.new( 1, 2 )
  #   obj2 = X.new
  #
  #   obj2.set_from(obj1)
  #
  #   obj2.a  #=> 1
  #   obj2.b  #=> 2
  #
  # TODO: populate_from(obj) ?

  def set_from(obj, *fields)
    unless fields.empty?
      fields.each do |k|
        send( "#{k}=", obj.send("#{k}") )  #if self.respond_to?("#{k}=") && obj.respond_to?("#{k}")
      end
    else
      setters = methods.collect { |m| m =~ /=$/ }
      setters.each do |setter|
        getter = setter.chomp('=')
        if obj.respond_to?(getter)
          send( setter, obj.send(getter) )
          fields < getter
        end
      end
    end
    fields
  end

end

