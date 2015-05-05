module ActionDispatch::Routing
  class Mapper

    def with_tenant
      scope constraints: Peephole::TenantSubdomainConstraint.new do
        yield if block_given?
      end
    end
    alias_method :for_tenant, :with_tenant

    def without_tenant
      scope constraints: Peephole::WithoutSubdomainConstraint.new do
        yield if block_given?
      end
    end

  end
end
