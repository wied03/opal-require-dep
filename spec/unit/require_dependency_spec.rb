require 'opal-require-dep'

describe Opal::RequireDep::CompilerPatches do
  let(:compiler) { Opal::Compiler.new(source) }
  before { @compiled = compiler.compile }

  context 'normal require' do
    let(:source) { 'require "foo"' }

    describe 'JS' do
      subject { @compiled }

      it { is_expected.to include 'self.$require("foo")' }
    end

    describe 'requires' do
      subject { compiler.requires }

      it { is_expected.to eq ['foo'] }
    end
  end

  context 'require_dependency' do
    let(:source) { 'require_dependency "foo"' }

    describe 'JS' do
      subject { @compiled }

      it { is_expected.to include 'self.$require("foo")' }
    end

    describe 'requires' do
      subject { compiler.requires }

      it { is_expected.to eq ['foo'] }
    end
  end
end
