@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z22C_I_BOOKING_LG
 as select from z22c_dev_boo_lg as Booking
  composition [0..*] of Z22C_I_BOOKSUPPL_LG as _BookingSuplement
  association        to parent Z22_I_TRAVEL_LG    as _Travel   on $projection.travel_id = _Travel.travel_id
  association [1..1] to /DMO/I_Customer      as _Customer      on $projection.customer_id = _Customer.CustomerID
  association [1..1] to /DMO/I_Carrier       as _Carrier       on $projection.carrier_id = _Carrier.AirlineID
  association [1..1] to /DMO/I_Connection    as _Conection     on $projection.connection_id = _Conection.ConnectionID
{
  key travel_id,
  key booking_id,
      booking_date,
      customer_id,
      carrier_id,
      connection_id,
      flight_date,
      @Semantics.amount.currencyCode: 'currency_code'
      flight_price,
      currency_code,
      booking_status,
      last_changed_at,
      _Travel,
      _BookingSuplement,
      _Customer,
      _Carrier,
      _Conection

}

