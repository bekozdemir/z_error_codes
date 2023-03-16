@EndUserText.label: 'Error Code Singleton - Maintain'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@ObjectModel.semanticKey: [ 'SingletonID' ]
define root view entity ZC_ErrorCode_S_907
  provider contract transactional_query
  as projection on ZI_ErrorCode_S_907
{
  key SingletonID,
  LastChangedAtMax,
  TransportRequestID,
  HideTransport,
  _ErrorCode : redirected to composition child ZC_ErrorCode_907
  
}
