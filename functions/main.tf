variable "fruit" {
  default = ["apple", "banana"]
}

Output "fruit" {
  //value = var.fruit[2]
 value = element(var, fruit, 2)
}
