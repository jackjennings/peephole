require "peephole/engine"

module Peephole
  autoload :TenantSubdomainConstraint,  'peephole/tenant_subdomain_constraint'
  autoload :WithoutSubdomainConstraint, 'peephole/without_subdomain_constraint'
end
