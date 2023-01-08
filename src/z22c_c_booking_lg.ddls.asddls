@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Bookings'
@Metadata.allowExtensions: true
define view entity Z22C_C_BOOKING_LG 
 as projection on Z22C_I_BOOKING_LG
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
          /* Associations */
          _Travel           : redirected to parent Z22C_C_TRAVEL_LG,
         _BookingSuplement  : redirected to composition child Z22C_C_BOOKSUPPL_LG,
          _Carrier,
          _Customer 
   
   
  }  
