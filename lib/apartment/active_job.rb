module Apartment
  module ActiveJob
    extend ActiveSupport::Concern

    class_methods do
      def execute(job_data)
        Apartment::Tenant.switch(job_data['tenant']) do
          super
        end
      end
    end

    def initialize(*_args, **_kargs)
      @tenant = Apartment::Tenant.current
      super
    end

    def enqueue(*_args, **_kargs)
      Apartment::Tenant.switch('public') do
        super
      end
    end

    def serialize
      super.merge('tenant' => @tenant)
    end
  end
end
