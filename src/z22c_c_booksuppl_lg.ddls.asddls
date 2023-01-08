@EndUserText.label: 'Con Supplements'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity Z22C_C_BOOKSUPPL_LG 
as projection on   Z22C_I_BOOKSUPPL_LG  {
  key travel_id,
  key booking_id,
  key booking_supplement_id,
      supplement_id,
      _SupplementText.Description,
      price,
      currency_code,
      /* Associations */
      _Booking : redirected to parent Z22C_C_BOOKING_LG,
      _SupplementText,
      _Travel  : redirected to Z22C_C_TRAVEL_LG  

}
