module Peephole
  class TenantSubdomainConstraint
    attr_accessor :excludes

    def initialize excludes: ['www', '']
      @excludes = excludes
    end

    def matches? request
      excludes.exclude?(request.subdomain)
    end
  end
end
