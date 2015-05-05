module Peephole
  class WithoutSubdomainConstraint
    attr_accessor :includes

    def initialize includes: ['www', '']
      @includes = includes
    end

    def matches? request
      includes.include?(request.subdomain)
    end
  end
end
