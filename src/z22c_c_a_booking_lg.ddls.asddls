@EndUserText.label: 'Bookings'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity Z22C_C_A_BOOKING_LG 
as projection on  Z22C_I_BOOKING_LG 
{
  key travel_id,
  key booking_id,
      booking_date,
      customer_id,
      carrier_id,
      connection_id,
      flight_date,
      flight_price,
      currency_code,
      booking_status,
      last_changed_at,
      _Travel : redirected to parent Z22C_C_A_TRAVEL_LG, 
      _Customer,
      _Carrier
 }  
