#!/bin/bash

if [[ -v POD_NAME ]]; then
  service_host="${POD_NAME}_NAMESERVER_SERVICE_HOST"
  service_port="${POD_NAME}_NAMESERVER_SERVICE_PORT"
  dns_ips="${!service_host}:${!service_port}"
else
  dns_ips=$(getent hosts recursor | awk 'BEGIN{ORS=":5353 ";}{print $1}')
fi

if [[ -v DEBUG ]]; then
  dnsdist -v --supervised --uid 1033 $dns_ips
else
  dnsdist --supervised --uid 1033 $dns_ips
fi
    {
	"app": {
		"first_open": 1665762853507,
		"first_open_last_version": 1665762853507,
		"last_open": 1665762853507,
		"last_version": "3.0.2",
		"last_version_relnotes": "3.0.2"
	},
	"clientId": "fef4d6e1-9971-43bb-ac71-c5acd699ef07",
	"lang": "en-US",
	"systemLanguage": true,
	"agentInfo": {
		"agentVersion": "3.0.2",
		"clientId": "DW-DA:6E:CA:E3:96:45",
		"clientName": "CINBERKPORSCHE",
		"clientPlatform": "Windows",
		"clientPlatformVer": "11 Pro",
		"clientPlatformBuild": "22623",
		"recogPort": "61584",
		"fingEndpoint": "api.fing.com",
		"production": "true",
		"needWiFiPermission": "false"
	},
	"userProfile": {
		"anonUserId": "R7tzrcVrFilwGFmPAuynQxFuT+P4K/J9SuC8xLjO8+7iGH+w/WNKeuP/jlqO6Ivsg7Oe9onFS1lU1OAbaA5QEA==",
		"accountType": "PREMIUM",
		"techAttitudeType": "TA_FEARS_TECH",
		"purchaseState": "TRIAL_ACTIVE"
	},
	"app_modals": {
		"delay_update_from": 0
	},
	"locationInfo": {
		"country_code": "TR",
		"country_region": "Izmir",
		"country_city": "Izmir",
		"country_name": "Turkey"
	},
	"notify": {
		"last_read_timestamp": 1665766047741
	},
	"ui": {
		"discovery": {
			"total": 8
		}
	}
}
    
