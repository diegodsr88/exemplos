@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '##GENERATED ZFILES'
define root view entity ZR_FILES
  as select from zfiles
{
  key id                    as ID,
      memo                  as Memo,
      @Semantics.largeObject: {
        mimeType: 'Filetype',
        fileName: 'Filename',
        contentDispositionPreference: #INLINE
//        acceptableMimeTypes: [ 'APPLICATION/PDF' ]
      }
      attachment            as Attachment,
      filename              as Filename,
      filetype              as Filetype,
      @Semantics.user.createdBy: true
      local_created_by      as LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      local_created_at      as LocalCreatedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt

}
