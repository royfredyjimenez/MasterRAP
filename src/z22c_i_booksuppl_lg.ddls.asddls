@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOOKS SUPPL'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
/*+[hideWarning] { "IDS" : [ "CARDINALITY_CHECK" ]  } */
define view entity Z22C_I_BOOKSUPPL_LG 
as select from z22c_dev_sbo_log as BookingSupplement 
  association to parent Z22C_I_BOOKING_LG as _Booking               on  $projection.travel_id  = _Booking.travel_id
                                                                     and $projection.booking_id = _Booking.booking_id
  association [1..1] to Z22_I_TRAVEL_LG          as _Travel         on  $projection.travel_id  = _Travel.travel_id
  association [1..1] to /DMO/I_Supplement         as _Product        on  $projection.supplement_id = _Product.SupplementID
  association [1..1] to /DMO/I_SupplementText     as _SupplementText on  $projection.supplement_id = _SupplementText.SupplementID
  
 {
  key travel_id,
  key booking_id,
  key booking_supplement_id,
      supplement_id,
      @Semantics.amount.currencyCode: 'currency_code'
      price,
      currency_code,
      last_changed_at,
      _Booking,
      _Travel,
      _Product,
      _SupplementText  
   
}
