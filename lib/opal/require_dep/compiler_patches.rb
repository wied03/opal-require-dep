require 'opal/compiler'

module Opal
  module RequireDep
    module CompilerPatches
      def handle_require_dependency(*args)
        # was require_dependency
        @sexp[2] = 'require'
        handle_require *args
      end
    end
  end
end

class Opal::Nodes::CallNode
  include Opal::RequireDep::CompilerPatches
  SPECIALS[:require_dependency] = {}
end
