###
# @license
# jqAwesomeStarRating  0.1.0
# http://github.com/rcugut/jqAwesomeStarRating
#
# Copyright 2014, Radu Cugut <rcugut@gmail.com>
# Licensed under MIT license.
###
do ($ = jQuery) ->

  toggleStarEl = ($star, state) ->
    if state
      $star.removeClass('fa-star-o').addClass('fa-star')
    else
      $star.removeClass('fa-star').addClass('fa-star-o')


  $.fn.awesomeStarRating = (options) ->
    $ratingContainer = this

    inputName = options['name'] || $ratingContainer.attr('data-name') || 'rating_score'
    ratingScore = parseInt(options['score'] || $ratingContainer.attr('data-score') || 0)
    onChangeCallback = options['onChange']

    $inputScore = $('<input />', { type: 'hidden', value: ratingScore, name: inputName })
    $ratingContainer.append($inputScore)

    stars = []
    for i in [1..5]
      $star = $('<i class="fa"></i>')
      toggleStarEl($star, i <= ratingScore)
      $ratingContainer.append($star)

      stars[i] = $star

      $star.on 'click', { idx: i } , (ev) ->
        idx = ev.data.idx
        $inputScore.val(idx)
        for s in [1..5]
          toggleStarEl(stars[s], s <= idx)

        onChangeCallback.call($ratingContainer, idx) if onChangeCallback
