@EndUserText.label: 'Error Code Text'
@AccessControl.authorizationCheck: #CHECK
@ObjectModel.dataCategory: #TEXT
define view entity ZI_ErrorCodeText_907
  as select from ZERRCODET_907
  association [1..1] to ZI_ErrorCode_S_907 as _ErrorCodeAll on $projection.SingletonID = _ErrorCodeAll.SingletonID
  association to parent ZI_ErrorCode_907 as _ErrorCode on $projection.ErrorCode = _ErrorCode.ErrorCode
  association [0..*] to I_LanguageText as _LanguageText on $projection.Langu = _LanguageText.LanguageCode
{
  @Semantics.language: true
  key LANGU as Langu,
  key ERROR_CODE as ErrorCode,
  @Semantics.text: true
  DESCRIPTION as Description,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LOCAL_LAST_CHANGED_AT as LocalLastChangedAt,
  1 as SingletonID,
  _ErrorCodeAll,
  _ErrorCode,
  _LanguageText
  
}
