output ips {
  value       = "${aws_instance.dev5.public_ip}"
}

output dev0 {
  value       = "${aws_instance.dev[0].public_ip}"
}