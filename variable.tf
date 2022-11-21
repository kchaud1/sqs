variable "queue_names" {
        type = list
}

variable "fifo_queue" {
        type = list
}

variable "fifo_throughput_limit" {
        type = list
}

variable "delay_seconds" {
        type = list
}

variable "max_message_size" {
        type = list
}

variable "message_retention_seconds" {
        type = list
}

variable "receive_wait_time_seconds" {
        type = list
}

variable "visibility_timeout_seconds" {
        type = list
}

variable "content_based_deduplication" {
        type = list
}

variable "deduplication_scope" {
        type = list
}
