suite 'Debugger', ->

  setup ->
    @shouldParse = (input) -> doesNotThrow -> parse input
    @shouldNotParse = (input) -> throws -> parse input

  test 'should parse', ->
    @shouldParse 'debugger'

  test 'cannot be used as value', ->
    @shouldNotParse 'x = debugger'
