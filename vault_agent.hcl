pid_file = "./pidfile"

exit_after_auth = true

auto_auth {
  method "azure" {
    config = {
      role = "vm"
      resource = "https://management.azure.com/"
    }
  }

  sink "file" {
    config = {
      path = ".vault-token"
    }
  }
}
