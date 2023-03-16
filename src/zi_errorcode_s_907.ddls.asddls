@EndUserText.label: 'Error Code Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZI_ErrorCode_S_907
  as select from I_Language
    left outer join ZERRCODE_907 on 0 = 0
  composition [0..*] of ZI_ErrorCode_907 as _ErrorCode
{
  key 1 as SingletonID,
  _ErrorCode,
  max( ZERRCODE_907.LAST_CHANGED_AT ) as LastChangedAtMax,
  cast( '' as SXCO_TRANSPORT) as TransportRequestID,
  cast( 'X' as ABAP_BOOLEAN preserving type) as HideTransport
  
}
where I_Language.Language = $session.system_language
