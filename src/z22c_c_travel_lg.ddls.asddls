@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Con Travel'
@Metadata.allowExtensions: true
define root view entity Z22C_C_TRAVEL_LG 
as projection on Z22_I_TRAVEL_LG
   {
     key  travel_id,
          agency_id,
          customer_id,
          begin_date,
          end_date,
          booking_fee,
          total_price,
          currency_code,
          description,
          overall_status,
          created_by,
          created_at,
          last_changed_by,
          last_changed_at,
          @Semantics.amount.currencyCode: 'currency_code'
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_22C_VIRT_LOG'
  virtual DiscountPrice : /dmo/total_price,
          /* Associations */
          _Agency,
          _Booking : redirected to composition child Z22C_C_BOOKING_LG,
          _Customer
     
}
