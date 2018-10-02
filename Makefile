build:
	hugo -t hyde-hyde

deploy: build
	sh deploy.sh
