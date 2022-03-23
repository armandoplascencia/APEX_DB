#!/bin/ksh

function prettyjson_s() {
	    echo "$1" | python -m json.tool
    }

function prettyjson_f() {
	    python -m json.tool "$1"
    }

function prettyjson_w() {
	    curl "$1" | python -m json.tool
    }
