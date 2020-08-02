start:
	@docker run \
		--name gitlab \
		-d \
		-p 3000:80 \
		-v $(PWD)/config:/etc/gitlab \
		-v $(PWD)/data:/var/opt/gitlab \
		-v $(PWD)/logs:/var/log/gitlab \
		gitlab/gitlab-ce:13.2.2-ce.0

stop:
	@docker stop gitlab
	@docker rm gitlab
