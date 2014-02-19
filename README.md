jqAwesomeStarRating
===================

jQuery plugin for star rating input using FontAwesome

### Demo
http://rcugut.github.io/jqAwesomeStarRating/


# Usage

```
  <div class="star-rating" data-name="rating" data-score="3"></div>
```

```
  $('.star-rating').awesomeStarRating(options)
```

### options

`name`: the name of the hidden input field generated (not needed if data-name is used)

`score`: default number of stars selected (similar effect as data-score)

`onChange`: event callback function with one argument representing the selected/current rating (value between 1..5)
