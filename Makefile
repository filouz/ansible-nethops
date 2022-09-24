REGISTRY = ghcr.io/filouz
TAG = local

##############################################
##############################################

play: build run

build:
	docker build . -t $(REGISTRY)/ansible-nethops:$(TAG)


run:
	-@docker kill nethops-ansible
	
	@docker run --rm -it \
		--name nethops-ansible \
		-v $(shell pwd)/playbook:/playbook \
		-v $(shell pwd)/collection:/collection \
		-v openvpn-data:/openvpn \
		-w /playbook \
		--privileged \
		-v /var/run/docker.sock:/var/run/docker.sock \
		$(REGISTRY)/ansible-nethops:$(TAG) zsh -c "ansible-playbook main.yaml"