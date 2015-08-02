require "dhcp/gateway/provider/base"
require "dhcp/gateway/provider/sniffer/version"
require "sniffer/provider"

Dhcp::Gateway::Provider.add :Sniffer, Sniffer::Provider