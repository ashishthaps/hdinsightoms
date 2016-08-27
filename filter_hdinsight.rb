module Fluent
  require_relative 'omslog'
  require 'json'

  class HdinsightFilter < Filter
    Fluent::Plugin.register_filter('filter_hdinsight', self)

    config_param :clustername, :string
    config_param :clustertype, :string

    def configure(conf)
      super
    end

    def start
      super
    end

    def shutdown
      super
    end

    def filter(tag, time, record)
      record["ClusterName"]=@clustername
      record["ClusterType"]=@clustertype
      record
    end
  end
end