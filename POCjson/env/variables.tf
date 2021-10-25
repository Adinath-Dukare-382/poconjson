variable "plan_name"{
    type = string
}
variable "plan_id"{
    type = string
}
variable "resource_group_name" {
  type = string
}
variable "location" {
  type = string
}
variable "tags" {
  type = map(string)
}
variable "apps" {
  type = map(object({
      app_name = string
      version = string
  }))
}