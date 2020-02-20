{
  "resource": {
    "aws_route_table": {
      "rt-public": {
        "vpc_id": "${aws_vpc.vpc.id}",
        "depends_on": [
          "aws_internet_gateway.igw"
        ],
        "tags": {
          "Name": "route_table-public",
          "vpc": "${var.vpc-name}"
        },
        "route": [
          {
            "cidr_block": "0.0.0.0/0",
            "gateway_id": "${aws_internet_gateway.igw.id}"
          },
          {
            "cidr_block": "0.0.0.0/2",
            "gateway_id": "${aws_internet_gateway.igw.id}"
          },
          {
            "cidr_block": "64.0.0.0/2",
            "gateway_id": "${aws_internet_gateway.igw.id}"
          },
          {
            "cidr_block": "128.0.0.0/2",
            "gateway_id": "${aws_internet_gateway.igw.id}"
          },
          {
            "cidr_block": "192.0.0.0/2",
            "gateway_id": "${aws_internet_gateway.igw.id}"
          },
          {
            "cidr_block": "10.0.0.0/8",
            "gateway_id": "${aws_vpn_gateway.vpg.id}"
          },
          {
            "cidr_block": "10.16.0.0/16",
            "gateway_id": "${aws_vpn_gateway.vpg.id}"
          },
          {
            "cidr_block": "172.16.0.0/12",
            "gateway_id": "${aws_vpn_gateway.vpg.id}"
          },
          {
            "cidr_block": "172.23.0.0/17",
            "vpc_peering_connection_id": "pcx-c67c30af"
          },
          {
            "cidr_block": "172.29.192.0/22",
            "vpc_peering_connection_id": "pcx-307e7159"
          },
          {
            "cidr_block": "172.24.0.0/18",
            "vpc_peering_connection_id": "pcx-02a3f81b92d4eb8aa"
          },
          {
            "cidr_block": "172.24.128.0/17",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_cvent-development-useast1.id}"
          },
          {
            "cidr_block": "172.29.0.0/17",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_cvent-sandbox-useast1.id}"
          },
          {
            "cidr_block": "172.25.0.0/17",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_cvent-production-useast1.id}"
          },
          {
            "cidr_block": "172.24.64.0/18",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_cvent-integration-useast1.id}"
          },
          {
            "cidr_block": "172.31.0.0/17",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_cvent-production-legacy-useast1.id}"
          },
          {
            "cidr_block": "172.29.128.0/23",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_corpsys-development-useast1.id}"
          },
          {
            "cidr_block": "172.31.128.0/17",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_corpsys-production-useast1.id}"
          },
          {
            "cidr_block": "172.29.132.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_conference-development-useast1.id}"
          },
          {
            "cidr_block": "172.29.136.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_conference-production-useast1.id}"
          },
          {
            "cidr_block": "172.30.2.0/23",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_emi-development-useast1.id}"
          },
          {
            "cidr_block": "172.30.0.0/23",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_emi-production-useast1.id}"
          },
          {
            "cidr_block": "172.29.130.0/24",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_sandbox-infrastructure-test-useast1.id}"
          },
          {
            "cidr_block": "172.30.28.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_crowdcompass-CC-Admin-West-uswest2.id}"
          },
          {
            "cidr_block": "172.30.8.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_crowdcompass-CCWestProd-Hotfix-uswest2.id}"
          },
          {
            "cidr_block": "172.26.192.0/20",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-preprod-core-services-useast1.id}"
          },
          {
            "cidr_block": "172.26.16.0/20",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-prod-core-services-useast1.id}"
          },
          {
            "cidr_block": "172.28.16.0/20",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-infrastructurecorevpc-uswest-uswest2.id}"
          },
          {
            "cidr_block": "172.26.64.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyonprodebs-useast1.id}"
          },
          {
            "cidr_block": "172.31.0.0/16",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyonprodebs-uswest2.id}"
          },
          {
            "cidr_block": "172.26.96.0/20",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-rol-preprod-useast1.id}"
          },
          {
            "cidr_block": "172.26.80.0/21",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-rol-prod-useast1.id}"
          },
          {
            "cidr_block": "172.28.80.0/21",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-rol-prod-uswest2.id}"
          },
          {
            "cidr_block": "172.26.8.0/21",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-corp-it-useast1.id}"
          },
          {
            "cidr_block": "172.28.64.0/21",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-conferencedr-uswest2.id}"
          },
          {
            "cidr_block": "10.0.0.0/16",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyonmobile-devopstest-useast1.id}"
          },
          {
            "cidr_block": "172.26.52.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyonmobile-mobile-preprod-useast-useast1.id}"
          },
          {
            "cidr_block": "172.26.48.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyonmobile-mobile-prod-useast-useast1.id}"
          },
          {
            "cidr_block": "172.28.48.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyonmobile-mobile-prod-usoregon-uswest2.id}"
          },
          {
            "cidr_block": "172.28.52.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyonmobile-mobile-preprod-usoregon-uswest2.id}"
          },
          {
            "cidr_block": "172.30.0.0/16",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyonmobile-mobile-legacy-uswest2.id}"
          },
          {
            "cidr_block": "172.25.0.0/16",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-passkey-group-corporate-useast1.id}"
          },
          {
            "cidr_block": "172.26.32.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-passkey-ebs-preprod-useast1.id}"
          },
          {
            "cidr_block": "172.27.0.0/16",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-passkey-prod-dr-uswest2.id}"
          },
          {
            "cidr_block": "172.23.192.0/20",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_cvent-sandbox-uswest2.id}"
          },
          {
            "cidr_block": "172.18.34.0/24",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-cb-prod-euwest1.id}"
          },
          {
            "cidr_block": "172.18.0.0/19",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-app-prod-euwest1.id}"
          },
          {
            "cidr_block": "172.29.160.0/23",
            "vpc_peering_connection_id": "pcx-0f960334aafc6457d"
          },
          {
            "cidr_block": "172.29.164.0/23",
            "vpc_peering_connection_id": "pcx-094c4265665cb2d6d"
          },
          {
            "cidr_block": "172.19.0.0/19",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-app-prod-eucentral1.id}"
          },
          {
            "cidr_block": "172.18.44.0/23",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-tst-prod-euwest1.id}"
          },
          {
            "cidr_block": "172.19.44.0/23",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-tst-prod-eucentral1.id}"
          },
          {
            "cidr_block": "172.29.180.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-reinforce-prod-useast1.id}"
          },
          {
            "cidr_block": "172.29.196.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-reinforce-prod-uswest2.id}"
          },
          {
            "cidr_block": "172.29.176.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-reinforce-dev-useast1.id}"
          },
          {
            "cidr_block": "10.160.0.0/18",
            "vpc_peering_connection_id": "pcx-055db6d709776621c"
          },
          {
            "cidr_block": "10.160.64.0/18",
            "vpc_peering_connection_id": "pcx-006e3cf3ef9eda225"
          },
          {
            "cidr_block": "172.19.34.0/24",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-cb-prod-eucentral1.id}"
          },
          {
            "cidr_block": "172.19.38.0/24",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-rmq-prod-eucentral1.id}"
          },
          {
            "cidr_block": "172.19.56.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-cdt-prod-eucentral1.id}"
          },
          {
            "cidr_block": "172.19.33.128/25",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-dbu-prod-eucentral1.id}"
          },
          {
            "cidr_block": "172.19.36.0/24",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-els-prod-eucentral1.id}"
          },
          {
            "cidr_block": "172.19.40.0/23",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-fnd-prod-eucentral1.id}"
          },
          {
            "cidr_block": "172.19.42.0/24",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-sec-prod-eucentral1.id}"
          },
          {
            "cidr_block": "172.19.48.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_eu-ecommerce-prod-eucentral1.id}"
          },
          {
            "cidr_block": "172.29.184.0/23",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-tst-prod-useast1.id}"
          },
          {
            "cidr_block": "10.64.8.0/21",
            "vpc_peering_connection_id": "pcx-04d54ab322117d022"
          },
          {
            "cidr_block": "10.64.16.0/21",
            "vpc_peering_connection_id": "pcx-079945734fc94dc1a"
          },
          {
            "cidr_block": "10.99.159.0/24",
            "vpc_peering_connection_id": "pcx-0952a59dcddb091c3"
          },
          {
            "cidr_block": "10.64.24.0/21",
            "vpc_peering_connection_id": "pcx-019585c1b8d08a448"
          },
          {
            "cidr_block": "10.72.8.0/21",
            "vpc_peering_connection_id": "pcx-0045b9ae949e35107"
          },
          {
            "cidr_block": "10.72.0.0/21",
            "vpc_peering_connection_id": "pcx-0c878fb9eaa4c1957"
          },
          {
            "cidr_block": "10.103.184.0/23",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-tst-prod-uswest2.id}"
          },
          {
            "cidr_block": "10.96.8.0/21",
            "vpc_peering_connection_id": "pcx-06302508c57d16a40"
          },
          {
            "cidr_block": "10.100.8.0/21",
            "vpc_peering_connection_id": "pcx-00647078d285f654f"
          },
          {
            "cidr_block": "10.64.32.0/21",
            "vpc_peering_connection_id": "pcx-0cae35793440a8d31"
          },
          {
            "cidr_block": "10.96.16.0/21",
            "vpc_peering_connection_id": "pcx-088b7fd8bd142a978"
          },
          {
            "cidr_block": "10.100.16.0/21",
            "vpc_peering_connection_id": "pcx-01a10563da0096dfc"
          },
          {
            "cidr_block": "172.30.24.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_cc-qa51-uswest2.id}"
          },
          {
            "cidr_block": "10.64.40.0/21",
            "vpc_peering_connection_id": "pcx-048b02cdca4d13fe4"
          },
          {
            "cidr_block": "10.96.24.0/21",
            "vpc_peering_connection_id": "pcx-044cd282cdcc7d972"
          },
          {
            "cidr_block": "10.100.24.0/21",
            "vpc_peering_connection_id": "pcx-09de58ea11f023aaf"
          },
          {
            "cidr_block": "10.64.48.0/21",
            "vpc_peering_connection_id": "pcx-03d805eb92f9a077e"
          }
        ]
      },
      "rt-private": {
        "count": "${var.az-count}",
        "vpc_id": "${aws_vpc.vpc.id}",
        "depends_on": [
          "aws_nat_gateway.nat-gw"
        ],
        "tags": {
          "Name": "route_table-private-${lookup(var.az, count.index)}",
          "vpc": "${var.vpc-name}"
        },
        "route": [
          {
            "cidr_block": "0.0.0.0/0",
            "nat_gateway_id": "${element(aws_nat_gateway.nat-gw.*.id,count.index)}"
          },
          {
            "cidr_block": "10.0.0.0/8",
            "gateway_id": "${aws_vpn_gateway.vpg.id}"
          },
          {
            "cidr_block": "10.16.0.0/16",
            "gateway_id": "${aws_vpn_gateway.vpg.id}"
          },
          {
            "cidr_block": "172.16.0.0/12",
            "gateway_id": "${aws_vpn_gateway.vpg.id}"
          },
          {
            "cidr_block": "172.23.0.0/17",
            "vpc_peering_connection_id": "pcx-c67c30af"
          },
          {
            "cidr_block": "172.29.192.0/22",
            "vpc_peering_connection_id": "pcx-307e7159"
          },
          {
            "cidr_block": "172.24.0.0/18",
            "vpc_peering_connection_id": "pcx-02a3f81b92d4eb8aa"
          },
          {
            "cidr_block": "172.24.128.0/17",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_cvent-development-useast1.id}"
          },
          {
            "cidr_block": "172.29.0.0/17",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_cvent-sandbox-useast1.id}"
          },
          {
            "cidr_block": "172.25.0.0/17",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_cvent-production-useast1.id}"
          },
          {
            "cidr_block": "172.24.64.0/18",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_cvent-integration-useast1.id}"
          },
          {
            "cidr_block": "172.31.0.0/17",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_cvent-production-legacy-useast1.id}"
          },
          {
            "cidr_block": "172.29.128.0/23",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_corpsys-development-useast1.id}"
          },
          {
            "cidr_block": "172.31.128.0/17",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_corpsys-production-useast1.id}"
          },
          {
            "cidr_block": "172.29.132.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_conference-development-useast1.id}"
          },
          {
            "cidr_block": "172.29.136.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_conference-production-useast1.id}"
          },
          {
            "cidr_block": "172.30.2.0/23",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_emi-development-useast1.id}"
          },
          {
            "cidr_block": "172.30.0.0/23",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_emi-production-useast1.id}"
          },
          {
            "cidr_block": "172.29.130.0/24",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_sandbox-infrastructure-test-useast1.id}"
          },
          {
            "cidr_block": "172.30.28.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_crowdcompass-CC-Admin-West-uswest2.id}"
          },
          {
            "cidr_block": "172.30.8.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_crowdcompass-CCWestProd-Hotfix-uswest2.id}"
          },
          {
            "cidr_block": "172.26.192.0/20",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-preprod-core-services-useast1.id}"
          },
          {
            "cidr_block": "172.26.16.0/20",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-prod-core-services-useast1.id}"
          },
          {
            "cidr_block": "172.28.16.0/20",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-infrastructurecorevpc-uswest-uswest2.id}"
          },
          {
            "cidr_block": "172.26.64.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyonprodebs-useast1.id}"
          },
          {
            "cidr_block": "172.31.0.0/16",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyonprodebs-uswest2.id}"
          },
          {
            "cidr_block": "172.26.96.0/20",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-rol-preprod-useast1.id}"
          },
          {
            "cidr_block": "172.26.80.0/21",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-rol-prod-useast1.id}"
          },
          {
            "cidr_block": "172.28.80.0/21",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-rol-prod-uswest2.id}"
          },
          {
            "cidr_block": "172.26.8.0/21",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-corp-it-useast1.id}"
          },
          {
            "cidr_block": "172.28.64.0/21",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-conferencedr-uswest2.id}"
          },
          {
            "cidr_block": "10.0.0.0/16",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyonmobile-devopstest-useast1.id}"
          },
          {
            "cidr_block": "172.26.52.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyonmobile-mobile-preprod-useast-useast1.id}"
          },
          {
            "cidr_block": "172.26.48.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyonmobile-mobile-prod-useast-useast1.id}"
          },
          {
            "cidr_block": "172.28.48.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyonmobile-mobile-prod-usoregon-uswest2.id}"
          },
          {
            "cidr_block": "172.28.52.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyonmobile-mobile-preprod-usoregon-uswest2.id}"
          },
          {
            "cidr_block": "172.30.0.0/16",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyonmobile-mobile-legacy-uswest2.id}"
          },
          {
            "cidr_block": "172.25.0.0/16",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-passkey-group-corporate-useast1.id}"
          },
          {
            "cidr_block": "172.26.32.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-passkey-ebs-preprod-useast1.id}"
          },
          {
            "cidr_block": "172.27.0.0/16",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_lanyon-passkey-prod-dr-uswest2.id}"
          },
          {
            "cidr_block": "172.23.192.0/20",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_cvent-sandbox-uswest2.id}"
          },
          {
            "cidr_block": "172.18.34.0/24",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-cb-prod-euwest1.id}"
          },
          {
            "cidr_block": "172.18.0.0/19",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-app-prod-euwest1.id}"
          },
          {
            "cidr_block": "172.29.160.0/23",
            "vpc_peering_connection_id": "pcx-0f960334aafc6457d"
          },
          {
            "cidr_block": "172.29.164.0/23",
            "vpc_peering_connection_id": "pcx-094c4265665cb2d6d"
          },
          {
            "cidr_block": "172.19.0.0/19",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-app-prod-eucentral1.id}"
          },
          {
            "cidr_block": "172.18.44.0/23",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-tst-prod-euwest1.id}"
          },
          {
            "cidr_block": "172.19.44.0/23",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-tst-prod-eucentral1.id}"
          },
          {
            "cidr_block": "172.29.180.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-reinforce-prod-useast1.id}"
          },
          {
            "cidr_block": "172.29.196.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-reinforce-prod-uswest2.id}"
          },
          {
            "cidr_block": "172.29.176.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-reinforce-dev-useast1.id}"
          },
          {
            "cidr_block": "10.160.0.0/18",
            "vpc_peering_connection_id": "pcx-055db6d709776621c"
          },
          {
            "cidr_block": "10.160.64.0/18",
            "vpc_peering_connection_id": "pcx-006e3cf3ef9eda225"
          },
          {
            "cidr_block": "172.19.34.0/24",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-cb-prod-eucentral1.id}"
          },
          {
            "cidr_block": "172.19.38.0/24",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-rmq-prod-eucentral1.id}"
          },
          {
            "cidr_block": "172.19.56.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-cdt-prod-eucentral1.id}"
          },
          {
            "cidr_block": "172.19.33.128/25",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-dbu-prod-eucentral1.id}"
          },
          {
            "cidr_block": "172.19.36.0/24",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-els-prod-eucentral1.id}"
          },
          {
            "cidr_block": "172.19.40.0/23",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-fnd-prod-eucentral1.id}"
          },
          {
            "cidr_block": "172.19.42.0/24",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-sec-prod-eucentral1.id}"
          },
          {
            "cidr_block": "172.19.48.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_eu-ecommerce-prod-eucentral1.id}"
          },
          {
            "cidr_block": "172.29.184.0/23",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-tst-prod-useast1.id}"
          },
          {
            "cidr_block": "10.64.8.0/21",
            "vpc_peering_connection_id": "pcx-04d54ab322117d022"
          },
          {
            "cidr_block": "10.64.16.0/21",
            "vpc_peering_connection_id": "pcx-079945734fc94dc1a"
          },
          {
            "cidr_block": "10.99.159.0/24",
            "vpc_peering_connection_id": "pcx-0952a59dcddb091c3"
          },
          {
            "cidr_block": "10.64.24.0/21",
            "vpc_peering_connection_id": "pcx-019585c1b8d08a448"
          },
          {
            "cidr_block": "10.72.8.0/21",
            "vpc_peering_connection_id": "pcx-0045b9ae949e35107"
          },
          {
            "cidr_block": "10.72.0.0/21",
            "vpc_peering_connection_id": "pcx-0c878fb9eaa4c1957"
          },
          {
            "cidr_block": "10.103.184.0/23",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_core-tst-prod-uswest2.id}"
          },
          {
            "cidr_block": "10.96.8.0/21",
            "vpc_peering_connection_id": "pcx-06302508c57d16a40"
          },
          {
            "cidr_block": "10.100.8.0/21",
            "vpc_peering_connection_id": "pcx-00647078d285f654f"
          },
          {
            "cidr_block": "10.64.32.0/21",
            "vpc_peering_connection_id": "pcx-0cae35793440a8d31"
          },
          {
            "cidr_block": "10.96.16.0/21",
            "vpc_peering_connection_id": "pcx-088b7fd8bd142a978"
          },
          {
            "cidr_block": "10.100.16.0/21",
            "vpc_peering_connection_id": "pcx-01a10563da0096dfc"
          },
          {
            "cidr_block": "172.30.24.0/22",
            "vpc_peering_connection_id": "${aws_vpc_peering_connection.cvent-management-uswest2_cc-qa51-uswest2.id}"
          },
          {
            "cidr_block": "10.64.40.0/21",
            "vpc_peering_connection_id": "pcx-048b02cdca4d13fe4"
          },
          {
            "cidr_block": "10.96.24.0/21",
            "vpc_peering_connection_id": "pcx-044cd282cdcc7d972"
          },
          {
            "cidr_block": "10.100.24.0/21",
            "vpc_peering_connection_id": "pcx-09de58ea11f023aaf"
          },
          {
            "cidr_block": "10.64.48.0/21",
            "vpc_peering_connection_id": "pcx-03d805eb92f9a077e"
          }
        ]
      }
    },
    "aws_route_table_association": {
      "rt-association-dmz-elb": {
        "count": "${var.az-count}",
        "subnet_id": "${element(aws_subnet.dmz-elb-subnet.*.id,count.index)}",
        "route_table_id": "${aws_route_table.rt-public.id}",
        "depends_on": [
          "aws_subnet.dmz-elb-subnet",
          "aws_route_table.rt-public"
        ]
      },
      "rt-association-management": {
        "count": "${var.az-count}",
        "subnet_id": "${element(aws_subnet.management-subnet.*.id,count.index)}",
        "route_table_id": "${element(aws_route_table.rt-private.*.id,count.index)}",
        "depends_on": [
          "aws_subnet.management-subnet",
          "aws_route_table.rt-private"
        ]
      },
      "rt-association-services": {
        "count": "${var.az-count}",
        "subnet_id": "${element(aws_subnet.services-subnet.*.id,count.index)}",
        "route_table_id": "${element(aws_route_table.rt-private.*.id,count.index)}",
        "depends_on": [
          "aws_subnet.services-subnet",
          "aws_route_table.rt-private"
        ]
      },
      "rt-association-security": {
        "count": "${var.az-count}",
        "subnet_id": "${element(aws_subnet.security-subnet.*.id,count.index)}",
        "route_table_id": "${element(aws_route_table.rt-private.*.id,count.index)}",
        "depends_on": [
          "aws_subnet.security-subnet",
          "aws_route_table.rt-private"
        ]
      },
      "rt-association-net-management": {
        "count": "${var.az-count}",
        "subnet_id": "${element(aws_subnet.net-management-subnet.*.id,count.index)}",
        "route_table_id": "${element(aws_route_table.rt-private.*.id,count.index)}",
        "depends_on": [
          "aws_subnet.net-management-subnet",
          "aws_route_table.rt-private"
        ]
      }
    },
    "aws_vpn_gateway_route_propagation": {
      "route-propagation-public-rt": {
        "vpn_gateway_id": "${aws_vpn_gateway.vpg.id}",
        "route_table_id": "${aws_route_table.rt-public.id}",
        "depends_on": [
          "aws_route_table.rt-public"
        ]
      },
      "route-propagation-private-rt": {
        "count": "${var.az-count}",
        "vpn_gateway_id": "${aws_vpn_gateway.vpg.id}",
        "route_table_id": "${element(aws_route_table.rt-private.*.id,count.index)}",
        "depends_on": [
          "aws_route_table.rt-private"
        ]
      }
    }
  },
  "output": {
    "route-table-private": {
      "value": "${join(\",\",aws_route_table.rt-private.*.id)}"
    },
    "route-table-public": {
      "value": "${aws_route_table.rt-public.id}"
    }
  }
}
