variable "sample" {
  default = "Hello World"
}

output "sample-op" {
    value = var.sample 
}

output "sample-op1" {
    value = "Value is ${var.sample}" 
}

variable "number" {
  default = 100
}

output "number" {
value = var.number  
}

variable "example-list"{
    default =  [
        "Devops",
        100,
        false,
        "shashi"
    ]
}

output "example_list" {
    value = "Welcome to ${var.example-list[0]} Terraform Lab My name is ${var.example-list[3]} "
}