REGISTRY := 
IMAGE := m3t0r/makepkg
TAG := latest

DOCKER := docker

build:
	${DOCKER} build -t ${REGISTRY}${IMAGE}:${TAG} .

