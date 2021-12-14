#!/usr/bin/env nextflow

params.foo = "String"
params.bar = 5

println params.foo.size()

process TEST{

    echo true

    input:
    val(foo) from params.foo
    val(bar) from params.bar

    script:
    """
    echo "Script body printing foo: $foo, bar: $bar"
    """
}