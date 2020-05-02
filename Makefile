SERVERFLAGS=--debug
SERVERCONFIG=./ocsigenserver.xml

all: extract_info srvbuild clntbuild

extract_info:
	eliomc -ppx -infer hello_world.eliom

srvbuild:
	eliomc -ppx -c hello_world.eliom # get bytecode
	eliomc -ppx -a -o hello_world.cma _server/hello_world.cmo # build library for ocsigenserver

clntbuild:
	js_of_eliom -ppx -c hello_world.eliom # get bytecode
	js_of_eliom -ppx -a -o hello_world.js _client/hello_world.cmo

serve:
	ocsigenserver $(SERVERFLAGS) -c $(SERVERCONFIG)

