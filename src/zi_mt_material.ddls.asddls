@AbapCatalog.sqlViewName: 'ZIMT_MATERIAL'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Material'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_MT_MATERIAL
  as select from zmt_material
{
  key material_id                    as MaterialId,
      description                    as Description,
      unit                           as Unit,

      @Semantics.amount.currencyCode: 'Currency'
      price                          as Price,

      @Semantics.currencyCode: true
      currency                       as Currency,

      created_at                     as CreatedAt,
      created_by                     as CreatedBy,
      last_changed_at                as LastChangedAt,
      last_changed_by                as LastChangedBy,
      local_last_changed_at          as LocalLastChangedAt
}
