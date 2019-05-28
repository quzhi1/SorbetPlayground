# frozen_string_literal: true

# typed: strong
require 'sorbet'
require 'sorbet-runtime'

# class A
class A
  extend T::Sig

  sig { params(int_in: Integer).returns(String) }
  def to_string(int_in)
    int_in.to_s
  end
end

puts A.new.to_string 34
