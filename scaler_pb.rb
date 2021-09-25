# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: scaler.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("scaler.proto", :syntax => :proto3) do
    add_message "scaler.ScaleRequest" do
      optional :name, :string, 1
      repeated :ingredients, :message, 2, "scaler.Ingredient"
    end
    add_message "scaler.ScaleResponse" do
      optional :recipe, :message, 1, "scaler.Recipe"
    end
    add_message "scaler.Ingredient" do
      optional :name, :string, 1
      optional :amount, :double, 2
      proto3_optional :bakersPercentage, :double, 3
    end
    add_message "scaler.Recipe" do
      optional :name, :string, 1
      repeated :ingredients, :message, 2, "scaler.Ingredient"
    end
  end
end

module Scaler
  ScaleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("scaler.ScaleRequest").msgclass
  ScaleResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("scaler.ScaleResponse").msgclass
  Ingredient = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("scaler.Ingredient").msgclass
  Recipe = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("scaler.Recipe").msgclass
end
