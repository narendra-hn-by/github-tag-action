FROM alpine
LABEL "repository"="https://github.com/narendra-hn-by/github-tag-action"
LABEL "homepage"="https://github.com/narendra-hn-by/github-tag-action"
LABEL "maintainer"="Narendra H N"

COPY entrypoint.sh /entrypoint.sh

RUN apk update && apk add bash git curl jq && apk add --update nodejs npm && npm install -g semver

ENTRYPOINT ["/entrypoint.sh"]
