module Sniffer
	class Provider < Dhcp::Gateway::Provider::Base
		config :logger, Dhcp::Gateway.logger
		def log m
			logger.debug "#{m}"
		end
		%i{discover offer request decline ack nak release inform}.each do |message_type|
			define_method message_type do |message,reply|
				log message
			end
		end
	end
end