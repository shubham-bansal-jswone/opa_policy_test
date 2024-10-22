package app.abac

import rego.v1

default allow := false
default user_city_manaus := false

allow if {
	user_city_manaus
}

user_city_manaus if data.users[input.username].metadata.location.city == "manaus"
