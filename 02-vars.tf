variable "sample" {
  type = "Hello World"
}

output "sample-op" {
    value = "${var.sample}" 
}