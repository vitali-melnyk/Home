data "external" "echo" {
  program = ["bash", "-c", "cat test.crt"]
  query = {
    "foo1" = "bar1", "foo3" = "bar3"
  }
}

output "echo" {
  value = data.external.echo.result
}

output "echo_foo" {
  value = data.external.echo.result.foo2
}
