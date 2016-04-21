require_dependency 'foo'

describe Foo do
  subject { Foo.howdy }

  it { is_expected.to eq 123 }
end
