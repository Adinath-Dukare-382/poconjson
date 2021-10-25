variable "plan_name"{
    type = string
}
variable "resource_group_name" {
  type = string
}
variable "location" {
  type = string
}
variable "tags" {
  type = map()
}
variable "apps" {
  type = map(object({
      app_name = string
      version = string
  }))
}