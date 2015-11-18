module ActionDispatch::Routing
  class Mapper

    def with_tenant *args
      constraints = Peephole::TenantSubdomainConstraint.new *args
      scope constraints: constraints do
        yield if block_given?
      end
    end
    alias_method :for_tenant, :with_tenant

    def without_tenant *args
      constraints = Peephole::WithoutSubdomainConstraint.new *args
      scope constraints: constraints do
        yield if block_given?
      end
    end

  end
end
