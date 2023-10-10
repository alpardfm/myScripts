#!/bin/bash

version=$(cat go.mod | grep gqlgen | cut -d ' ' -f 2)

go run github.com/99designs/gqlgen generate --verbose 2>> generate.log

if [ $? -eq 0 ]; then
    echo "Success generate graphql"
else
    echo "Failed generate graphql"
    go get github.com/99designs/gqlgen@$version
    go run github.com/99designs/gqlgen generate --verbose 2>> generate.log
    echo "Success get and generate gqlgen version $version"
fi
    