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

variable "example-map" {
    default = {
        technology = "Devops",
        age = 34,
        city="Hyderabad",
        time="5 years",
        Name="shashidhar"

}  
}

output "ex-map" {
  value = "My name is ${var.example-map["Name"]} and i have ${var.example-map["time"]} experience in ${var.example-map["technology"]}"
}

variable "state" {}

output "state-name" {
  value = "Name of the state where  you live: ${var.state}"
}

variable "country" {}
output "country-name" {
  value = "Country where you live : ${var.country}"
}
