resource "local_file" "my_pets"{

    filename = "var.txt"
    content  =  "bengal tiger is the rarest species "

    lifecycle {
      ignore_changes = [ content ]
    }
}

resource "random_pet" "my_pets" {
  prefix ="MR"
  separator = "."
  length = "1"
}
