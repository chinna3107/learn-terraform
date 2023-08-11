variable "fruit" {
  default = ["apple", "banana"]
}

output "fruits" {
  //value = var.fruit[2]
 value = element(var.fruit, 2)
}
