variable "name" {
  description = "Name of the resource"
  type        = string
  default     = "default-name"
}

variable "message" {
  description = "Custom message to include in the file"
  type        = string
  default     = "This is a default message."
}

variable "input_list" {
  description = "A list of values to be printed"
  type        = list(string)
  default     = ["value1", "value2", "value3"]  # Default values
}
