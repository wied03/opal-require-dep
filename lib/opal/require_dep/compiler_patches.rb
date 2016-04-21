require 'opal/compiler'

module Opal
  module RequireDep
    module CompilerPatches
      def handle_require_dependency(*args)
        # was require_dependency, want 'require' to show up as method name in compiled code
        @sexp[2] = 'require'
        handle_require *args
      end
    end
  end
end

class Opal::Nodes::CallNode
  include Opal::RequireDep::CompilerPatches
  # ensure handler above is run
  SPECIALS[:require_dependency] = {}
end
