variable "fruit" {
  default = ["apple", "banana"]
}

Output "fruits" {
  //value = var.fruit[2]
 value = element(var, fruit, 2)
}
