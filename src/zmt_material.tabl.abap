@EndUserText.label : 'Material master data (custom)'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zmt_material {
  key client                 : abap.clnt not null;
  key material_id             : abap.char(20) not null;
  description                 : abap.char(80);
  unit                         : abap.unit(3);
  price                        : abap.curr(15,2);
  currency                     : abap.cuky(5);
  created_at                   : timestampl;
  created_by                   : abap.syuname;
  last_changed_at              : timestampl;
  last_changed_by              : abap.syuname;
  local_last_changed_at        : timestampl;

}
