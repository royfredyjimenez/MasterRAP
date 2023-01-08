@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel'
define root view entity Z22_I_TRAVEL_LG 
as select from z22c_dv_tra_lg as Travel
  composition [0..*] of Z22C_I_BOOKING_LG  as _Booking
  association [0..1] to /DMO/I_Agency      as _Agency   on $projection.agency_id = _Agency.AgencyID
  association [0..1] to /DMO/I_Customer    as _Customer on $projection.customer_id = _Customer.CustomerID
  association [0..1] to I_Currency         as _Currency on $projection.currency_code = _Currency.Currency
 {
    
    key travel_id,
      agency_id,
      customer_id,
      begin_date,
      end_date,
      @Semantics.amount.currencyCode: 'currency_code'
      booking_fee,
      @Semantics.amount.currencyCode: 'currency_code'
      total_price,
      currency_code,
      description,
      overall_status,
      created_by,
      created_at,
      last_changed_by,
      last_changed_at,
      _Booking,
      _Agency,
      _Customer,
      _Currency
    
}
