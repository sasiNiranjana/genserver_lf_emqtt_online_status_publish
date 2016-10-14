PROJECT = emq_plugin_template
PROJECT_DESCRIPTION = EMQ Plugin Template
PROJECT_VERSION = 3.0

BUILD_DEPS = emqttd
dep_emqttd = git https://github.com/emqtt/emqttd emq30

TEST_DEPS = cuttlefish
dep_cuttlefish = git https://github.com/basho/cuttlefish master

COVER = true

include erlang.mk

app:: rebar.config

app.config::
	cuttlefish -l info -e etc/ -c etc/emq_plugin_template.conf -i priv/emq_plugin_template.schema -d data