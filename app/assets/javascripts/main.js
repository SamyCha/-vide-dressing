/**
 * jTinder initialization
 */
$("#tinderslide").jTinder({
  // dislike callback
    onDislike: function (item) {
      // set the status text
        $('#status').html('article précent non retenu');
    },
  // like callback
    onLike: function (item) {
      // set the status text
        $('#status').html('article précèdent dans vos coups de coeur');
    },
  animationRevertSpeed: 200,
  animationSpeed: 400,
  threshold: 1,
  likeSelector: '.like',
  dislikeSelector: '.dislike'
});

/**
 * Set button action to trigger jTinder like & dislike.
 */
$('.actions .like, .actions .dislike').click(function(e){
  e.preventDefault();
  $("#tinderslide").jTinder($(this).attr('class'));
});
