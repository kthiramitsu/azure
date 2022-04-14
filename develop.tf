module "resource" {
    source = "./instance"
    location = "JapanEast"
}

output "location" {
   value = module.resource.id
}