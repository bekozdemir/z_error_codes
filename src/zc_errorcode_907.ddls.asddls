@EndUserText.label: 'Error Code - Maintain'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define view entity ZC_ErrorCode_907
  as projection on ZI_ErrorCode_907
{
  key ErrorCode,
  LastChangedAt,
  @Consumption.hidden: true
  LocalLastChangedAt,
  @Consumption.hidden: true
  SingletonID,
  _ErrorCodeAll : redirected to parent ZC_ErrorCode_S_907,
  _ErrorCodeText : redirected to composition child ZC_ErrorCodeText_907,
  _ErrorCodeText.Description : localized
  
}
