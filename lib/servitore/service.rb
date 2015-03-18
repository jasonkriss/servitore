module Servitore
  module Service
    extend ActiveSupport::Concern

    included do
      attr_reader :_params

      class << self
        alias_method :_new, :new

        def new(*args)
          raise NotImplementedError, "Service objects cannot be instantiated."
        end
      end
    end

    def initialize(params)
      @_params = params || {}
    end

    def call
      raise NotImplementedError, "Service objects must implement #call."
    end

    class_methods do
      def call(params = {})
        _new(params).call
      end

      def param_reader(*names)
        names.each do |name|
          define_method(name) do
            _params[name]
          end
        end
      end
    end
  end
end
