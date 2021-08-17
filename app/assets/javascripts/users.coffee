$ ->
  $("#user_postcode").jpostal({
    postcode : [ "#user_postcode" ],
    address  : {
                  "#user_addresses_attributes_0_prefecture_code" : "%3",
                  "#address_city"    : "%4",
                  "#address_street"  : "%5%6%7"
                }
  })
