resource "aws_sns_topic" "alarm" {
  name = "alarms-topic"
  delivery_policy = "${data.template_file.delivery_policy.rendered}"
  provisioner "local-exec" {
    command = "aws sns subscribe --topic-arn ${self.arn} --protocol email --notification-endpoint ${var.alarm_email} --region ${var.region}"
  }
}