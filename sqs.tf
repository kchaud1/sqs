# Create multiple SQS Queue without any integration

resource "aws_sqs_queue" "multi_terraform_queue" {
  count		      	= length(var.queue_names)
  name                       	= var.queue_names[count.index]
  fifo_queue			= var.fifo_queue[count.index]
  fifo_throughput_limit	= var.fifo_throughput_limit[count.index]
  delay_seconds              	= var.delay_seconds[count.index]
  max_message_size           	= var.max_message_size[count.index]
  message_retention_seconds  	= var.message_retention_seconds[count.index]
  receive_wait_time_seconds  	= var.receive_wait_time_seconds[count.index]
  visibility_timeout_seconds 	= var.visibility_timeout_seconds[count.index]
  content_based_deduplication	= var.content_based_deduplication[count.index]
  deduplication_scope		= var.deduplication_scope[count.index]
  policy 			= file("./sqs-policy.json")
  tags = {
    Environment = "uat"
  }
}



