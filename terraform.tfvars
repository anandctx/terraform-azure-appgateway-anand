subscription_id          = "6e54aa79-9b0b-40ed-ae27-91fdffa0a565"
landing_zone_environment = "Development"
opco                     = "wppit"
opgroup = "wintel"

app_gateways = {
  "uksouth" = {
    appgw01 = {
      basename          = "stdvtwo"
      instancenumber    = "01"
      rgname            = "appgw-01"
      sku               = "Standard_v2"
      waf_configuration = {}
      public_frontend_ip_configuration = {
        fullname             = "public_frontend_ip_configuration_fullname"
        public_ip_address_id = "/subscriptions/4c775028-7785-4cfe-a3e0-ca900ee3ff6a/resourceGroups/rg-wppit-uks-x-appgwocr-01/providers/Microsoft.Network/publicIPAddresses/pip-wpp-wppit-appgw-02"
      }
      private_frontend_ip_configuration = {
        private_ip_address = "10.1.1.6"
        vnet_rgname        = "rg-wppit-wppit-uks-d-network-01"
        vnet_name          = "paas-01"
        snet_name          = "appservices-01"
      }
      applications = {
        myapp = {
          backendpools = [{
            name = "bpool-01", fqdns = ["test.com"]
          }]
          backend_http_settings = [{
            name = "http_settings-01"
          }]
          http_listeners = [{
            name          = "mylistener-01" #"listener01"
            frontend_port = 80

          }]
          request_routing_rules = [
            {
              name                       = "rule-01"
              priority                   = "100"
              backend_address_pool_name  = "bpool-01"
              backend_http_settings_name = "http_settings-01"
              http_listener_name         = "mylistener-01"
            }
        ] }
        myapptwo = {
          backendpools = [{
            name = "bpool-02", fqdns = ["test2.com"]
          }]
          backend_http_settings = [{
            name = "http_settings-02"
          }]
          http_listeners = [{
            name          = "mylistener-02" #"listener01"
            frontend_port = 80

          }]
          request_routing_rules = [
            {
              name                       = "rule-02"
              priority                   = "100"
              backend_address_pool_name  = "bpool-02"
              backend_http_settings_name = "http_settings-02"
              http_listener_name         = "mylistener-02"
            }
        ] }
      }


    }
    # appgw02 = {
    #   basename          = "stdvtwo"
    #   instancenumber    = "02"
    #   rgname            = "rg-wppit-uks-x-appgwocr-01"
    #   sku               = "Standard_v2"
    #   waf_configuration = {}
    #   public_frontend_ip_configuration = {
    #     fullname             = "public_frontend_ip_configuration_fullname"
    #     public_ip_address_id = "/subscriptions/4c775028-7785-4cfe-a3e0-ca900ee3ff6a/resourceGroups/rg-wppit-uks-x-appgwocr-01/providers/Microsoft.Network/publicIPAddresses/pip-wpp-wppit-appgw-02"
    #   }
    #   private_frontend_ip_configuration = {
    #     private_ip_address = "10.1.1.6"
    #     vnet_rgname        = "rg-wppit-uks-x-appgwocr-01"
    #     vnet_name          = "vnet-wpp-wppit-appgw-x-01"
    #     snet_name          = "snet-wpp-wppit-apgw-x-01"
    #   }
    #   applications = {
    #     myapp = {
    #       backendpools = [{
    #         name = "bpool-01"
    #       }]
    #       backend_http_settings = [{
    #         name = "http_settings-01"
    #       }]
    #       http_listeners = [{
    #         name          = "rule-01" #"listener01"
    #         frontend_port = 80

    #       }]
    #       request_routing_rules = [
    #         {
    #           name                       = "rule-01"
    #           priority                   = "100"
    #           backend_address_pool_name  = "bpool-01"
    #           backend_http_settings_name = "http_settings-01"
    #           http_listener_name         = "rule-01"
    #         }
    #     ] }
    #   }


    # }
  }
}