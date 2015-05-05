module ActionDispatch::Routing
  class Mapper

    def for_tenant
      scope constraints: Peephole::TenantSubdomainConstraint.new do
        yield if block_given?
      end
    end

  end
end