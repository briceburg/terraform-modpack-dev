output "x_larry" {
    value = module.larry
}

output "x_curly" {
    value = module.curly
    sensitive = true
}

output "x_moe" {
    value = module.moe
    sensitive = true
}