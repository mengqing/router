require 'lotus/routing/resource'
require 'lotus/routing/resources/action'

module Lotus
  module Routing
    # Set of RESTful resources routes
    # Implementation of Lotus::Router#resources
    #
    # @since 0.1.0
    #
    # @api private
    #
    # @see Lotus::Router#resources
    class Resources < Resource
      # Set of default routes
      #
      # @api private
      # @since 0.1.0
      self.actions = [:index, :new, :create, :show, :edit, :update, :destroy]

      # Action class
      #
      # @api private
      # @since 0.1.0
      self.action = Resources::Action

      # Member action class
      #
      # @api private
      # @since 0.1.0
      self.member = Resources::MemberAction

      # Collection action class
      #
      # @api private
      # @since 0.1.0
      self.collection = Resources::CollectionAction
    end
  end
end
