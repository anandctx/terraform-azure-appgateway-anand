module "appgw" {
  source                   = "./appgateway"
  for_each                 = var.app_gateways
  location                 = each.key
  app_gateways             = each.value
  opgroup                  = var.opgroup
  subscription_id          = var.subscription_id
  landing_zone_environment = var.landing_zone_environment
  opco                     = var.opco

  
}
