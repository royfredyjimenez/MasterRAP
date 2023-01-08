@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Master Data'
define root view entity Z22C_M_DATA_LG 
  as select from z22c_tb_data_log
{
  key e_number,
      e_name,
      e_department,
      status,
      job_title,
      start_date,
      end_date,
      email,
      m_number,
      m_name,
      m_department,
      crea_date_time,
      crea_uname,
      lchg_date_time,
      lchg_uname
}
