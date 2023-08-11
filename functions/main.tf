variable "fruit" {
  default = ["apple", "banana"]
}

output "fruits" {
  //value = var.fruit[2]
  value = element(var.fruit, 2)
}

variable "fruits_with_stock" {
default = {
  apple = 100
}
}

output "fruit_stock" {
  value = try(var.fruits_with_stock["banana"], 0)
}

output "fruit_stock_price" {
  value = lookup(var.fruits_with_stock["apple"], "price", 2)
           //try(var.fruits_with_stock["banana"], 2)
}