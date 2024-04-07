variable "sample" {
  default = "Hello World"
}

output "sample-op" {
    value = var.sample 
}