$ () ->
  project_list = $('ul.projects li')

  for project in project_list
    targets = $('ul.images li', project)
    if targets.length > 1
      targets.append('<nav><div>←</div><div>→</div></nav>')
      targets.hide()
      targets.first().show()

    targets.children('nav').hide() if targets.length == 1
    if targets.length > 1
      for target in targets
        nav_previous = $('nav div', target).first()
        nav_next = $('nav div', target).last()

        nav_previous.click (event) ->
          target = $(event.target)
          current = target.closest('li')
          next = current.next('li')
          next = current.closest('ul').children('li').first() unless next.length > 0
          current.hide()
          next.show()

        nav_next.click (event) ->
          target = $(event.target)
          current = target.closest('li')
          prev = current.prev('li')
          prev = current.closest('ul').children('li').last() unless prev.length > 0
          current.hide()
          prev.show()

