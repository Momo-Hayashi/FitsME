$(function() {
  var address_num = $('.js-user_address').length;
  // $('#add_item_button').on('click', function() {
  //   var input =
  //       '<div class="js-user_address" id="add_address_' + address_num + '">'
  //       + '<input class="form-control" placeholder="メンバーの名前を入力して下さい" type="text" name="team[members_attributes][' + member_num + '][name]" id="team_members_attributes_' + member_num + '_name" required>'
  //       + '<input class="form-control" placeholder="メンバーの年齢を入力して下さい" type="text" name="team[members_attributes][' + member_num + '][grade]" id="team_members_attributes_' + member_num + '_grade" required>'
  //       + '<span class="member_delete" data-id="' + address_num + '">'
  //       +   'Delete'
  //       + '</span>'
  //       +'</div>'
  //   $('#team_members_box').append(input);
  //   member_num ++;
  // });

  $('.js-user_address').on('click', '.address_delete', function() {
    var inputId = $(this).data('id');
    var defaultData = $(this).data('default');
    if (defaultData == 'default') {
      $(this).prev().prop('checked', true);
      $('#add_address_' + inputId).hide();
    }else{
      $('#add_address_' + inputId).remove();
    }
  });
});
