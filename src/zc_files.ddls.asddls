@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_FILES'
define root view entity ZC_FILES
  as projection on ZR_FILES
{
  key ID,
  Memo,
  Attachment,
  Filename,
  Filetype,
  LocalLastChangedAt
  
}
