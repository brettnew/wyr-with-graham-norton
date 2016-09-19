jQuery.fn.submitOnClick = function() {
  this.find('input[type=submit]').click(function(){
    $(this).parent('form').submit();
    $(this).parents('form').find('div').addClass('selected-option')
  });
  return this;
}

$(function(){
  $('.edit_question').submitOnClick();
});
