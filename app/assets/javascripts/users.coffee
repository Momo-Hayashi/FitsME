$ ->
  $("#user_postcode").jpostal({
    postcode : [ "#user_postcode" ],
    address  : {
                  "#user_prefecture_code" : "%3",
                  "#user_address_city"    : "%4",
                  "#user_address_street"  : "%5%6%7"
                }
  })
