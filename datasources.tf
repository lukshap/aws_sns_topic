data "template_file" "delivery_policy" {
  template = "${file("${path.module}/user_data/delivery_policy.json")}"
  }
