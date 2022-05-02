$('#bookmark_movie_title').autocomplete({
  source: JSON.parse($('#bookmark_movie_title').data('autocomplete-source'))
});
