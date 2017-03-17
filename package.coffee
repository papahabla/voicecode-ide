pack = Packages.register
  name: 'ide'
  description: 'Common commands for IDEs'
  scope: 'abstract'

pack.commands
  'build':
    spoken: 'builder'
    description: 'Build current or spoken target'
    tags: ['IDE']
    action: (input) ->
      @key 'b', 'command'
      if value
        @string input

  'run':
    spoken: 'runner'
    description: 'Build and run the current or spoken target.'
    tags: ['IDE']
    action: (input) ->
      #@key 'b', 'command'
      #@enter()
      #if value
      #  @string input
      @key 'p', 'command shift'
      @string 'SublimeREPL: Python - RUN current file'
      @enter()
      if value
        @string input
        @enter()

  'debug':
    spoken: 'bugger'
    description: 'SublimeREPL: Python - Debug current file or target'
    tags: ['IDE', 'debug']
    action: (input) ->
      @key 'p', 'command shift'
      @string 'PDB current file'
      @enter()
      if value
        @string input
        @enter()
      else
        @string 'continue'
        @enter()

  'debug-breakpoint-toggle':
    spoken: 'breaker'
    description: 'open file wiith file name, function, objects, etc.'
    tags: ['IDE', 'debug']
    action: (input) ->
      @key 'b', 'control shift'
      if value
        @string input

  'debug-step-into':
    spoken: 'stin'
    description: 'Step debugger into function or next line'
    tags: ['IDE', 'debug']
    action: ->
      @key 'f7'

  'debug-step-out':
    spoken: 'stout'
    description: 'Run debugger until function returns'
    tags: ['IDE', 'debug']
    action: ->
      @key 'f8'

  'debug-step-over':
    spoken: 'stover'
    description: 'Step debugger over execution line'
    tags: ['IDE', 'debug']
    action: ->
      @key 'f6'

  'debug-continue':
    spoken: 'stin you'
    description: 'Continue debugging until the next breakpoint is reached'
    tags: ['IDE', 'debug']
    action: ->
      @key 'y', 'alt command'

  'command-pallet':
    spoken: 'commando'
    description: 'open a command pallet if it exists'
    tags: ['IDE']
    action: (input) ->
      @key 'p', 'command shift'
      if value
        @string input

  'find-all':
    spoken: 'polo'
    description: 'find all in project'
    tags: ['selection', 'IDE', 'find']
    action: ->
      @key 'f', 'command shift'

  'show-doc':
    spoken: 'donkey'
    description: 'show documentation for cursor position'
    tags: ['IDE']
    action: (input) ->
      @key 'p', 'command shift'
      @string 'anaconda:display object docs'
      @key 'enter'

  'show-completion':
    spoken: 'yada'
    description: 'Invoke auto completion'
    tags: ['IDE', 'show', 'auto complete']
    action: (input) ->
      @key 'space', 'control'

  'goto-file':
    spoken: 'coyle'
    description: 'Go to specified file'
    tags: ['IDE', 'show']
    action: (input) ->
      @key 'p', 'command'
      if value
        @string input

  'goto-any':
    spoken: 'ganny'
    description: 'Go to anything within project'
    tags: ['IDE', 'goto', 'navigation']
    action: (input) ->
      @key 'p', 'command'
      if value
        @string input

  'goto-symbol':
    spoken: 'gimbal'
    description: 'Go to symbol within file'
    tags: ['IDE', 'goto', 'navigation']
    action: (input) ->
      @key 'r', 'command'
      if value
        @string input

  'goto-symbol-project':
    spoken: 'gidget'
    description: 'Go to project symbol'
    tags: ['IDE', 'goto', 'navigation']
    action: (input) ->
      @key 'r', 'command shift'
      if value
        @string input

  'goto-definition':
    spoken: 'godef'
    description: 'Go to definition'
    tags: ['IDE', 'goto', 'navigation']
    action: (input) ->
      @key 'f12' #'down', 'command alt'
      if value
        @string input

  'group-new':
    spoken: 'groupie'
    description: 'Open a new group window or goto a group, creating if needed'
    tags: ['IDE', 'group']
    grammarType: 'integerCapture'
    action: (input) ->
      @key 'k', 'command'

  # 'polo':
  #   description: 'find in project'
  #   tags: dev_tags
  #   action: ->
  #     @key 'f', 'command shift'
  #
  # 'poloject':
  #   description: 'find and replace in file'
  #   tags: dev_tags
  #   action: ->
  #     @key 'f', 'command control'
  #
  # 'tauntaun':
  #   grammarType: 'textCapture'
  #   description: 'Placeholder'
  #   tags: dev_tags
  #   misspellings: ['ton ton', 'don don']
  #   triggerScopes: dev_scopes
  #   action: (input) ->
  #     @string 'tauntaun'
  #
  # 'wampa':
  #   grammarType: 'textCapture'
  #   description: 'Make the REPL/Debuger window active and run command if there is input'
  #   tags: dev_tags
  #   misspellings: ['whampoa']
  #   triggerScopes: dev_scopes
  #   action: (input) ->
  #     switch @currentApplication()
  #       when 'MATLAB'
  #         @key '0', 'command'
  #         if input
  #           @string input
  #           @enter()
  #       when 'Xcode'
  #         @key 'C', 'command shift'
  #         if input
  #           @string input
  #           @enter()
  #
  # 'bantha':
  #   grammarType: 'textCapture'
  #   description: 'Build target'
  #   tags: dev_tags
  #   misspellings: ['band the']
  #   triggerScopes: dev_scopes
  #   action: (input) ->
  #     switch @currentApplication()
  #       when 'Xcode'
  #         @key 'B', 'command'
  #
  # 'gungan':
  #   grammarType: 'textCapture'
  #   description: 'Placeholder'
  #   tags: dev_tags
  #   misspellings: ['gungan', 'duncan']
  #   triggerScopes: dev_scopes
  #   action: (input) ->
  #     @string 'Gungan'
  #
  # 'jawa':
  #   grammarType: 'textCapture'
  #   description: 'Placeholder'
  #   tags: dev_tags
  #   misspellings: ['java', 'jala']
  #   triggerScopes: dev_scopes
  #   action: (input) ->
  #     @string 'Jawa'
  #
  # 'nerf':
  #   grammarType: 'textCapture'
  #   description: 'Placeholder'
  #   tags: dev_tags
  #   misspellings: ['java']
  #   triggerScopes: dev_scopes
  #   action: (input) ->
  #     @string 'Nerf as in herder'
  #
  # 'rancor':
  #   grammarType: 'textCapture'
  #   description: 'Placeholder'
  #   tags: dev_tags
  #   misspellings: ['rants are']
  #   triggerScopes: dev_scopes
  #   action: (input) ->
  #     @string 'Rancor'
  #
  # 'wookie':
  #   grammarType: 'textCapture'
  #   description: 'Placeholder'
  #   tags: dev_tags
  #   misspellings: ['wookie']
  #   triggerScopes: dev_scopes
  #   action: (input) ->
  #     @string 'Wookie'
