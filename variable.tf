variable "identifier" {

type = string
description = "cluster identifier for the database"

}

variable "engine" {

type = string
description = "engine type for the database"

}

variable "engine_version" {

type = number
description = "engine version for the database"

}

variable "master_username" {

type = string
description = "username for the database"

}

variable "master_password" {

type = string
description = "password for the username"
sensitive = true


}

variable "skip_final_snapshot" {

type = bool
description = "skip final snapshot"

}

variable "backup_retention_period" {

type = number
description = "backup retention period"

}

variable "apply_immediatly" {

  type = bool
  description = "apply immediatly"

}

variable "allow_major_upgrade" {

type = bool
description = "allow major version upgrade"

}
