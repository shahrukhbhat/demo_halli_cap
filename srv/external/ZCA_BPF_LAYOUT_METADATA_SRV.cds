/* checksum : b12cb4307a644f5e7a25b384922c8c4d */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZCA_BPF_LAYOUT_METADATA_SRV {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Delivery Process Flow - Node Billing Document'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_DelivProcFlowBillingDoc {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Document'
  key BillingDocument : String(10) not null;
  @sap.label : 'SD Document Category'
  SDDocumentCategory : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Type'
  BillingDocumentType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'SD Billing Status'
  OverallBillingStatus : String(1);
  @sap.display.format : 'Date'
  @sap.label : 'Billing Date'
  BillingDocumentDate : Date;
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Net Value'
  @sap.quickinfo : 'Net Value in Document Currency'
  TotalNetAmount : Decimal(16, 3);
  @sap.label : 'Document Currency'
  @sap.quickinfo : 'SD document currency'
  @sap.semantics : 'currency-code'
  TransactionCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  SalesOrganization : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Delivery Process Flow - Node Inbound Delivery'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_DelivProcFlowInbDeliv {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery'
  key InboundDelivery : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shipping Point'
  @sap.quickinfo : 'Shipping Point / Receiving Point'
  ShippingPoint : String(4);
  @sap.label : 'Language Key'
  Language : String(2);
  @sap.label : 'SD Document Category'
  SDDocumentCategory : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Goods Movement Sts'
  @sap.quickinfo : 'Goods Movement Status (All Items)'
  OverallGoodsMovementStatus : String(1);
  @sap.display.format : 'Date'
  @sap.label : 'Goods Issue Date'
  GoodsMovementDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Goods Issue Date'
  GoodsIssueDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Picking Status'
  @sap.quickinfo : 'Picking Status/Putaway Status (All Items)'
  OverallPutawayStatus : String(1);
  @sap.label : 'Short Descript.'
  @sap.quickinfo : 'Short Text for Fixed Values'
  OverallPutawayStatusName : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery Type'
  DeliveryDocumentType : String(4);
  @sap.label : 'Description'
  ProcessFlowNodeTitle : String(20);
  @sap.label : 'Description'
  ProcessFlowNodeShortTitle : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Delivery Process Flow - Node Outbound Delivery'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_DelivProcFlowOutbDeliv {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Outbound Delivery'
  key OutboundDelivery : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shipping Point'
  @sap.quickinfo : 'Shipping Point / Receiving Point'
  @sap.value.list : 'standard'
  ShippingPoint : String(4);
  @sap.label : 'Language Key'
  Language : String(2);
  SDDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Goods Movement Sts'
  @sap.quickinfo : 'Goods Movement Status (All Items)'
  OverallGoodsMovementStatus : String(1);
  @sap.display.format : 'Date'
  @sap.label : 'Goods Issue Date'
  GoodsIssueDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Picking Status'
  @sap.quickinfo : 'Picking Status/Putaway Status (All Items)'
  OverallPickingStatus : String(1);
  @sap.label : 'Name'
  @sap.quickinfo : 'Name of the controlling area'
  OverallPickingStatusDesc : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery Type'
  DeliveryDocumentType : String(4);
  @sap.label : 'Description'
  ProcessFlowNodeTitle : String(20);
  @sap.label : 'Description'
  ProcessFlowNodeShortTitle : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Delivery Process Flow - Node Returns Delivery'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_DelivProcFlowReturnsDeliv {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Return Delivery'
  @sap.quickinfo : 'Customer Return Delivery'
  key CustomerReturnDelivery : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shipping Point'
  @sap.quickinfo : 'Shipping Point / Receiving Point'
  ShippingPoint : String(4);
  @sap.label : 'Language Key'
  Language : String(2);
  SDDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Goods Movement Sts'
  @sap.quickinfo : 'Goods Movement Status (All Items)'
  OverallGoodsMovementStatus : String(1);
  @sap.display.format : 'Date'
  @sap.label : 'Goods Issue Date'
  GoodsMovementDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Picking Status'
  @sap.quickinfo : 'Picking Status/Putaway Status (All Items)'
  OverallPickingStatus : String(1);
  OverallPickingStatusDesc : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery Type'
  DeliveryDocumentType : String(4);
  @sap.label : 'Description'
  ProcessFlowNodeTitle : String(20);
  @sap.label : 'Description'
  ProcessFlowNodeShortTitle : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Delivery Process Flow - Node Sales Document'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_DelivProcFlowSalesDocument {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales document'
  @sap.quickinfo : 'Sales Document'
  key SalesDocument : String(10) not null;
  @sap.label : 'SD Document Category'
  SDDocumentCategory : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Document Type'
  SalesDocumentType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Overall Status'
  @sap.quickinfo : 'Overall Processing Status (Header/All Items)'
  OverallSDProcessStatus : String(1);
  @sap.display.format : 'Date'
  @sap.label : 'Requested Delivery Date'
  RequestedDeliveryDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  SalesOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  OrganizationDivision : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  DistributionChannel : String(2);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Inbound Delivery Process Flow'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_InbDelivProcFlow {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery'
  key InboundDelivery : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Preceding Document'
  @sap.quickinfo : 'Preceding document'
  key PrecedingDocument : String(40) not null;
  @sap.label : 'SD Document Category'
  key PrecedingDocumentCategory : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subsequent Document'
  key SubsequentDocument : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subsequent Doc Cat'
  @sap.quickinfo : 'Category of the subsequent document'
  key SubsequentDocumentCategory : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shipping Point'
  @sap.quickinfo : 'Shipping Point / Receiving Point'
  ShippingPoint : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Order'
  @sap.quickinfo : 'Purchase Order Number'
  PurchaseOrder : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Warehouse Number'
  @sap.quickinfo : 'Warehouse Number / Warehouse Complex'
  WarehouseNumber : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Transfer Order'
  @sap.quickinfo : 'WM Transfer Order Number'
  WrhsMgmtTransferOrder : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Document'
  @sap.quickinfo : 'Number of Material Document'
  MaterialDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Doc. Year'
  @sap.quickinfo : 'Material Document Year'
  MaterialDocumentYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoice Document No.'
  @sap.quickinfo : 'Document Number of an Invoice Document'
  SupplierInvoice : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal Year'
  FiscalYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales document'
  @sap.quickinfo : 'Sales and Distribution Document Number'
  BillingDocument : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Transaction History of In-House Repair Item'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_InhRepairProcessFlow {
  @sap.display.format : 'UpperCase'
  @sap.label : 'In-House Repair'
  @sap.quickinfo : 'In-House Repair ID'
  key PrecedingDocument : String(10) not null;
  key PrecedingDocumentCategory : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key SubsequentDocument : String(10) not null;
  key SubsequentDocumentCategory : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Repair Object'
  key InHouseRepairItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trans. Cat.'
  @sap.quickinfo : 'Business Trans. Cat.'
  ServiceObjectType : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'In-House Repair'
  @sap.quickinfo : 'In-House Repair ID'
  InHouseRepair : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trans. Cat.'
  @sap.quickinfo : 'Business Trans. Cat.'
  CustMgmtObjectType : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Consumption View for Lanes'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_LaneLayout {
  @sap.label : 'Model ID'
  @sap.quickinfo : 'Layout ID'
  key ProcessFlowLayout : String(30) not null;
  @sap.label : 'Lane ID'
  key ProcessFlowLane : String(20) not null;
  @sap.label : 'Lane Icon'
  ProcessFlowLaneIcon : String(40);
  @sap.label : 'Lane Description'
  ProcessFlowLaneName : String(50);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Company Code Value Help'
@sap.value.list : 'true'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_MM_CompanyCodeValueHelp {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CompanyCodeName'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.label : 'Company Name'
  @sap.quickinfo : 'Name of Company Code or Company'
  CompanyCodeName : String(25);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Incoterm Value Help'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_MM_IncotermValueHelp {
  @sap.display.format : 'UpperCase'
  @sap.text : 'IncotermsClassificationName'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  key IncotermsClassification : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms Version'
  key IncotermsVersion : String(4) not null;
  @sap.label : 'Description'
  IncotermsClassificationName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Location Mandatory'
  @sap.quickinfo : 'Location is mandatory'
  LocationIsMandatory : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Material Value Help'
@sap.value.list : 'true'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_MM_MaterialValueHelp {
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaterialName'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key Material : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.label : 'Material Description'
  MaterialName : String(40);
  @sap.label : 'Plant Name'
  PlantName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Group'
  MaterialGroup : String(9);
  @sap.label : 'Product Group Desc.'
  @sap.quickinfo : 'Product Group Description'
  MaterialGroupName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material type'
  MaterialType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.label : 'Material Type Desc.'
  @sap.quickinfo : 'Description of Material Type'
  MaterialTypeName : String(25);
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  MaterialBaseUnit : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Payment Term Value Help'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_MM_PaymentTermValueHelp {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PaymentTermsName'
  @sap.label : 'Payment Terms'
  @sap.quickinfo : 'Terms of Payment Key'
  key PaymentTerms : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Day Limit'
  key PaymentTermsValidityMonthDay : String(2) not null;
  @sap.label : 'Description'
  @sap.quickinfo : 'Description of terms of payment'
  PaymentTermsName : String(30);
  @sap.label : 'Cash Discount Days 1'
  CashDiscount1Days : Decimal(3, 0);
  @sap.label : 'Disc. Percent 1'
  @sap.quickinfo : 'Cash Discount Percentage 1'
  CashDiscount1Percent : Decimal(5, 3);
  @sap.label : 'Cash Discount Days 2'
  CashDiscount2Days : Decimal(3, 0);
  @sap.label : 'Disc. Percent 2'
  @sap.quickinfo : 'Cash Discount Percentage 2'
  CashDiscount2Percent : Decimal(5, 3);
  @sap.label : 'Days Net'
  @sap.quickinfo : 'Net Payment Terms Period'
  NetPaymentDays : Decimal(3, 0);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Plant Value Help'
@sap.value.list : 'true'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_MM_PlantValueHelp {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PlantName'
  @sap.label : 'Plant'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'PurchasingOrganizationName'
  @sap.label : 'Purchasing Organization'
  key PurchasingOrganization : String(4) not null;
  @sap.label : 'Plant Name'
  PlantName : String(30);
  @sap.label : 'Purchasing Organization Name'
  PurchasingOrganizationName : String(20);
  @sap.label : 'City'
  CityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  @sap.quickinfo : 'City postal code'
  PostalCode : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Supplier'
@sap.value.list : 'true'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_MM_SupplierValueHelp {
  @sap.display.format : 'UpperCase'
  @sap.text : 'SupplierName'
  @sap.label : 'Vendor'
  @sap.quickinfo : 'Account Number of Vendor or Creditor'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  @sap.value.list : 'standard'
  key CompanyCode : String(4) not null;
  @sap.label : 'Name of Supplier'
  SupplierName : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country Key'
  Country : String(3);
  @sap.label : 'City'
  CityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  @sap.quickinfo : 'City postal code'
  PostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Search term'
  @sap.quickinfo : 'Sort field'
  SortField : String(10);
  @sap.label : 'First name'
  @sap.quickinfo : 'First name of business partner (person)'
  FirstName : String(40);
  @sap.label : 'Last name'
  @sap.quickinfo : 'Last name of business partner (person)'
  LastName : String(40);
  @sap.label : 'Name 1'
  @sap.quickinfo : 'Name 1 of organization'
  OrganizationBPName1 : String(40);
  @sap.label : 'Name 2'
  @sap.quickinfo : 'Name 2 of organization'
  OrganizationBPName2 : String(40);
  @sap.label : 'Name 3'
  @sap.quickinfo : 'Name 3 of organization'
  OrganizationBPName3 : String(40);
  @sap.label : 'Name 4'
  @sap.quickinfo : 'Name 4 of organization'
  OrganizationBPName4 : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account group'
  @sap.quickinfo : 'Vendor account group'
  SupplierAccountGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Consumption View for Nodes'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_NodeLayout {
  @sap.label : 'Model ID'
  @sap.quickinfo : 'Layout ID'
  key ProcessFlowLayout : String(30) not null;
  @sap.label : 'Node Category'
  key ProcessFlowNodeCategory : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Semantic Object Flag'
  key ProcessFlowIsSemanticObject : Boolean not null;
  @sap.label : 'Status Identifier'
  key ProcessFlowStatus : String(5) not null;
  @sap.label : 'Lane ID'
  ProcessFlowLane : String(20);
  @sap.label : 'Status Field'
  @sap.quickinfo : 'Field Name for Node Status'
  ProcessFlowStatusField : String(30);
  @sap.label : 'CDS View'
  @sap.quickinfo : 'CDS View for Node Category'
  ProcessFlowNodeCDSViewName : String(30);
  @sap.label : 'Semantic Object'
  ProcessFlowSemanticObject : String(30);
  @sap.label : 'Node Title'
  ProcessFlowNodeTitle : String(30);
  @sap.label : 'Title Abbrvn'
  @sap.quickinfo : 'Abbreviation for Node Title'
  ProcessFlowNodeShortTitle : String(21);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Label Switch for BPF'
  @sap.quickinfo : 'Label Switch'
  ProcessFlowHasLabel : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Label Popover Switch'
  ProcessFlowHasLabelPopOver : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Node Popover Switch'
  @sap.quickinfo : 'Node Popover Switch for BPF'
  ProcessFlowHasNodePopOver : Boolean;
  @sap.label : 'Parameter Field'
  @sap.heading : ''
  ProcessFlow1stParameterField : String(30);
  @sap.label : 'Parameter Field'
  @sap.heading : ''
  ProcessFlow2ndParameterField : String(30);
  @sap.label : 'Parameter Field'
  @sap.heading : ''
  ProcessFlow3rdParameterField : String(30);
  @sap.label : 'Parameter Field'
  @sap.heading : ''
  ProcessFlow4thParameterField : String(30);
  @sap.label : 'Parameter Field'
  @sap.heading : ''
  ProcessFlow5thParameterField : String(30);
  @sap.label : 'Parameter Field'
  @sap.heading : ''
  ProcessFlow6thParameterField : String(30);
  @sap.label : 'Fld for Nde Txt'
  @sap.quickinfo : 'Field for Node Text'
  ProcessFlowNodeFirstTextField : String(30);
  @sap.label : 'Fld for Nde Txt'
  @sap.quickinfo : 'Field for Node Text'
  ProcessFlowNodeSecondTextField : String(30);
  @sap.label : 'Additional Text for Node'
  @sap.heading : ''
  ProcessFlowAdditionalText : String(30);
  @sap.label : 'Additional Text for Node'
  @sap.heading : ''
  ProcessFlow2ndAdditionalText : String(30);
  @sap.label : 'BPF Node State'
  @sap.quickinfo : 'Node State'
  ProcessFlowStatusCategory : String(20);
  @sap.label : 'Node State Text'
  @sap.quickinfo : 'Node Status Text'
  ProcessFlowStatusText : String(30);
  @sap.label : 'Dy Ttl Fld'
  @sap.quickinfo : 'Field Name of Dynamic Node Title'
  ProcessFlowDynamicNodeTitle : String(30);
  @sap.label : 'Abr of Field Name'
  @sap.quickinfo : 'Abbreviation of Field Name'
  ProcessFlowDynNodeShortTitle : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mn Navgn Swtch'
  @sap.quickinfo : 'Main Navigation Switch'
  ProcessFlowHasObjNavgn : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Swtch Navgn Actn'
  @sap.quickinfo : 'Switch for Navigation Actions'
  ProcessFlowHasActn : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Outbound Delivery Process Flow'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_OutbDelivProcFlow {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery'
  key OutboundDelivery : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Preceding Document'
  @sap.quickinfo : 'Preceding document'
  key PrecedingDocument : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Preceding Doc Cat'
  @sap.quickinfo : 'Category of the preceding document'
  key PrecedingDocumentCategory : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subsequent Document'
  key SubsequentDocument : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subsequent Doc Cat'
  @sap.quickinfo : 'Category of the subsequent document'
  key SubsequentDocumentCategory : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shipping Point'
  @sap.quickinfo : 'Shipping Point / Receiving Point'
  @sap.value.list : 'standard'
  ShippingPoint : String(4);
  @sap.label : 'SD Document Category'
  SDDocumentCategory : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales document'
  @sap.quickinfo : 'Sales Document'
  SalesDocument : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  PurchaseOrder : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Warehouse Number'
  @sap.quickinfo : 'Warehouse Number / Warehouse Complex'
  WarehouseNumber : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Transfer Order'
  @sap.quickinfo : 'WM Transfer Order Number'
  WrhsMgmtTransferOrder : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Document'
  @sap.quickinfo : 'Number of Material Document'
  MaterialDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Doc. Year'
  @sap.quickinfo : 'Material Document Year'
  MaterialDocumentYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales document'
  @sap.quickinfo : 'Sales and Distribution Document Number'
  BillingDocument : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery'
  InboundDelivery : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Value Help for Order Types in &quot;Manage Purchase Orders&quot;'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_POMntnDocumentTypeValueHelp {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PurchaseOrderType_Text'
  @sap.label : 'Purchase Order Type'
  key PurchaseOrderType : String(4) not null;
  @sap.label : 'Doc. Type Descript.'
  @sap.quickinfo : 'Short Description of Purchasing Document Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchaseOrderType_Text : String(20);
  @sap.label : 'Doc. Type Descript.'
  @sap.quickinfo : 'Short Description of Purchasing Document Type'
  PurchasingDocumentTypeName : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Purchase Order'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_PurchaseOrderFs {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PurchaseOrder_Text'
  @sap.label : 'Purchase Order'
  @sap.quickinfo : 'Purchase Order Number'
  key PurchaseOrder : String(10) not null;
  @sap.label : 'Doc. Type Descript.'
  @sap.quickinfo : 'Short Description of Purchasing Document Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchaseOrder_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.text : 'PurchaseOrderType_Text'
  @sap.label : 'Purchase Order Type'
  PurchaseOrderType : String(4);
  @sap.label : 'Doc. Type Descript.'
  @sap.quickinfo : 'Short Description of Purchasing Document Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchaseOrderType_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Control indicator'
  @sap.quickinfo : 'Control indicator for purchasing document type'
  PurchaseOrderSubtype : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Status of Purchasing Document'
  PurchasingDocumentOrigin : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Doc. Category'
  @sap.quickinfo : 'Purchasing Document Category'
  PurchasingDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Doc. Type'
  @sap.quickinfo : 'Purchasing Document Type'
  PurchasingDocumentType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'UserFullName'
  @sap.label : 'Created by'
  @sap.quickinfo : 'Name of Person who Created the Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Created on'
  @sap.quickinfo : 'Date on which the record was created'
  CreationDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Purchase Order Date'
  PurchaseOrderDate : Date;
  @sap.label : 'Language Key'
  Language : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deletion indicator'
  @sap.quickinfo : 'Deletion indicator in purchasing document'
  PurchasingDocumentDeletionCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subject to release'
  @sap.quickinfo : 'Release Not Yet Completely Effected'
  ReleaseIsNotCompleted : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incomplete'
  @sap.quickinfo : 'Purchase order not yet complete'
  PurchasingCompletenessStatus : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.text : 'CompanyCodeName'
  @sap.label : 'Company Code'
  @sap.value.list : 'standard'
  CompanyCode : String(4);
  @sap.label : 'Company Name'
  @sap.quickinfo : 'Name of Company Code or Company'
  CompanyCodeName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.text : 'PurchasingOrganizationName'
  @sap.label : 'Purch. organization'
  @sap.quickinfo : 'Purchasing organization'
  PurchasingOrganization : String(4);
  @sap.label : 'Purch. Org. Name'
  @sap.quickinfo : 'Purchasing Organization Name'
  PurchasingOrganizationName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.text : 'PurchasingGroupName'
  @sap.label : 'Purchasing Group'
  PurchasingGroup : String(3);
  @sap.label : 'Purchasing Grp. Name'
  @sap.quickinfo : 'Purchasing Group Name'
  PurchasingGroupName : String(18);
  @sap.display.format : 'UpperCase'
  @sap.text : 'SupplierName'
  @sap.label : 'Supplier'
  @sap.value.list : 'standard'
  Supplier : String(10);
  @sap.label : 'Name'
  @sap.quickinfo : 'Name 1'
  SupplierName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  ManualSupplierAddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  SupplierAddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Goods Supplier'
  @sap.value.list : 'standard'
  SupplyingSupplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplying Plant'
  @sap.quickinfo : 'Supplying (issuing) plant in case of stock transport order'
  SupplyingPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoicing Party'
  @sap.quickinfo : 'Different Invoicing Party'
  @sap.value.list : 'standard'
  InvoicingParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'PaymentTerms_Text'
  @sap.label : 'Payment Terms'
  @sap.quickinfo : 'Terms of Payment Key'
  PaymentTerms : String(4);
  @sap.label : 'Description'
  @sap.quickinfo : 'Description of terms of payment'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PaymentTerms_Text : String(30);
  @sap.label : 'Days 1'
  @sap.quickinfo : 'Cash discount days 1'
  CashDiscount1Days : Decimal(3, 0);
  @sap.label : 'Days 2'
  @sap.quickinfo : 'Cash discount days 2'
  CashDiscount2Days : Decimal(3, 0);
  @sap.label : 'Days Net'
  @sap.quickinfo : 'Net Payment Terms Period'
  NetPaymentDays : Decimal(3, 0);
  @sap.label : 'Disc.percent 1'
  @sap.quickinfo : 'Cash discount percentage 1'
  CashDiscount1Percent : Decimal(5, 3);
  @sap.label : 'Disc.percent 2'
  @sap.quickinfo : 'Cash Discount Percentage 2'
  CashDiscount2Percent : Decimal(5, 3);
  @sap.label : 'Payment Terms'
  @sap.quickinfo : 'Payment Terms Description'
  PaymentTermsDescription : String(100);
  @sap.display.format : 'UpperCase'
  @sap.text : 'IncotermsClassification_Text'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3);
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IncotermsClassification_Text : String(30);
  @sap.label : 'Incoterms (Part 2)'
  IncotermsTransferLocation : String(28);
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  DocumentCurrency : String(5);
  @sap.unit : 'DocumentCurrency'
  PurchaseOrderNetAmount : Decimal(24, 3);
  PurchasingDocumentStatus : String(2);
  @sap.label : 'Description'
  @sap.quickinfo : 'User Description'
  UserFullName : String(80);
  @sap.label : 'Status'
  PurchasingDocumentStatusName : String(60);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Purchase Order Goods Receipt'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_PurchaseOrderGoodsReceipt {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Document'
  @sap.quickinfo : 'Number of Material Document'
  key MaterialDocument : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Material Document Item'
  key MaterialDocumentItem : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Year'
  @sap.quickinfo : 'Material Document Year'
  key MaterialDocumentYear : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase order'
  @sap.quickinfo : 'Purchase order number'
  @sap.value.list : 'standard'
  key PurchaseOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number of Purchasing Document'
  @sap.value.list : 'standard'
  key PurchaseOrderItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  @sap.value.list : 'standard'
  Material : String(40);
  @sap.unit : 'MaterialBaseUnit'
  @sap.label : 'Quantity'
  QuantityInBaseUnit : Decimal(13, 3);
  @sap.unit : 'EntryUnit'
  @sap.label : 'Qty in unit of entry'
  @sap.quickinfo : 'Quantity in unit of entry'
  QuantityInEntryUnit : Decimal(13, 3);
  @sap.unit : 'PF47C78CDA66C9A738E535B8ADD0B3CA9'
  @sap.label : 'Qty in order unit'
  @sap.quickinfo : 'Goods receipt quantity in order unit'
  GoodsReceiptQtyInOrderUnit : Decimal(13, 3);
  @sap.unit : 'PC9DA0B1B0F2D38580ABDE527B901611A'
  @sap.label : 'Qty in OPUn'
  @sap.quickinfo : 'Quantity in Purchase Order Price Unit'
  QtyInPurchaseOrderPriceUnit : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Storage location'
  StorageLocation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reversed'
  GoodsMovementIsCancelled : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rel. for Analytics'
  @sap.quickinfo : 'Relevance for Analytics'
  GoodsMovementCancellationType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Doc. Type'
  @sap.quickinfo : 'Goods movement ref doc type'
  GoodsMovementRefDocType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Movement type'
  @sap.quickinfo : 'Movement type (inventory management)'
  GoodsMovementType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stock Material'
  @sap.quickinfo : 'Material in Respect of Which Stock is Managed'
  StockIdentifyingMaterial : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stor. Location SID'
  @sap.quickinfo : 'Storage Location (Stock Identifier)'
  StockIdfgStorageLocation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Batch SID'
  @sap.quickinfo : 'Batch Number (Stock Identifier)'
  StockIdentifyingBatch : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier SID'
  @sap.quickinfo : 'Supplier for Special Stock'
  SpecialStockIdfgSupplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales order'
  @sap.quickinfo : 'Sales order number of valuated sales order stock'
  SpecialStockIdfgSalesOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sales order item'
  @sap.quickinfo : 'Sales Order Item of Valuated Sales Order Stock'
  SpecialStockIdfgSalesOrderItem : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer SID'
  @sap.quickinfo : 'Customer for Special Stock'
  SpecialStockIdfgCustomer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Special Stock Type'
  InventorySpecialStockType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stock Type'
  @sap.quickinfo : 'Stock Type of Goods Movement (Stock Identifier)'
  InventoryStockType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Batch'
  @sap.quickinfo : 'Batch Number'
  Batch : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Vendor''s account number'
  Supplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.quickinfo : 'Sales Order Number'
  SalesOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sales Order Item'
  SalesOrderItem : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sales Order Schedule'
  SalesOrderScheduleLine : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Account number of customer'
  Customer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Additional Supplier for Special Stock'
  StockOwner : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element)'
  WBSElementInternalID : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transfer Material'
  IssgOrRcvgMaterial : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Receiving plant'
  @sap.quickinfo : 'Receiving plant/issuing plant'
  IssuingOrReceivingPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Receiving stor. loc.'
  @sap.quickinfo : 'Receiving/issuing storage location'
  IssuingOrReceivingStorageLoc : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transfer Batch'
  IssgOrRcvgBatch : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Special Stock'
  @sap.quickinfo : 'Special Stock Indicator'
  IssgOrRcvgSpclStockInd : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Val. Type Tfr Batch'
  @sap.quickinfo : 'Valuation Type of Transfer Batch'
  IssuingOrReceivingValType : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Consumption'
  @sap.quickinfo : 'Consumption posting'
  ConsumptionPosting : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reason for Movement'
  GoodsMovementReasonCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Debit/Credit ind'
  @sap.quickinfo : 'Debit/Credit Indicator'
  DebitCreditCode : String(1);
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  MaterialBaseUnit : String(3);
  @sap.display.format : 'Date'
  @sap.label : 'Document Date'
  @sap.quickinfo : 'Document Date in Document'
  DocumentDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Type'
  AccountingDocumentType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trans./Event Type'
  @sap.quickinfo : 'Transaction/Event Type'
  InventoryTransactionType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Special Stock Valuation Indicator'
  @sap.quickinfo : 'Separate Valuation Type'
  InventorySpecialStockValnType : String(1);
  @sap.display.format : 'Date'
  @sap.label : 'Entry Date'
  @sap.quickinfo : 'Day On Which Accounting Document Was Entered'
  CreationDate : Date;
  @sap.label : 'Time of Entry'
  CreationTime : Time;
  @sap.display.format : 'UpperCase'
  @sap.label : 'User Name'
  CreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill of Lading'
  @sap.quickinfo : 'Number of Bill of Lading at Time of Goods Receipt'
  BillOfLading : String(16);
  @sap.display.format : 'Date'
  @sap.label : 'SLED/BBD'
  @sap.quickinfo : 'Shelf Life Expiration or Best-Before Date'
  ShelfLifeExpirationDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Date of Manufacture'
  ManufactureDate : Date;
  @sap.label : 'Unit of Entry'
  @sap.quickinfo : 'Unit of entry'
  @sap.semantics : 'unit-of-measure'
  EntryUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Type'
  InventoryValuationType : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Network'
  @sap.quickinfo : 'Network Number for Account Assignment'
  ProjectNetwork : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  ManufacturingOrder : String(12);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Order Item'
  ManufacturingOrderItem : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reservation'
  @sap.quickinfo : 'Number of reservation/dependent requirements'
  Reservation : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reservation Item'
  @sap.quickinfo : 'Item Number of Reservation / Dependent Requirements'
  ReservationItem : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Res Final Issue'
  @sap.quickinfo : 'Final Issue for Reservation'
  ReservationIsFinallyIssued : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery'
  DeliveryDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Delivery Item'
  DeliveryDocumentItem : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery Completed'
  @sap.quickinfo : '&quot;Delivery Completed&quot; Indicator'
  IsCompletelyDelivered : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reversed Doc Year'
  @sap.quickinfo : 'Reversed Material Document Year'
  ReversedMaterialDocumentYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reversed Mat Doc'
  @sap.quickinfo : 'Reversed Material Document'
  ReversedMaterialDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reversed Doc Item'
  @sap.quickinfo : 'Reversed Material Document Item'
  ReversedMaterialDocumentItem : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'RevGR despite IR'
  @sap.quickinfo : 'Reversal of GR allowed for GR-based IV despite invoice'
  RvslOfGoodsReceiptIsAllowed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Has Reversal Movement Type'
  IsReversalMovementType : Boolean;
  @sap.label : 'Goods Recipient'
  GoodsRecipientName : String(12);
  @sap.label : 'Unloading Point'
  UnloadingPointName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center'
  CostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'G/L Account'
  @sap.quickinfo : 'G/L Account Number'
  GLAccount : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Object'
  CostObject : String(12);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Profitability Segment'
  ProfitabilitySegment : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  ProfitCenter : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'ProdCostEst.No.'
  @sap.quickinfo : 'Cost Estimate Number - Product Costing'
  CostEstimate : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference'
  @sap.quickinfo : 'Reference Document Number'
  ReferenceDocument : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Service Performer'
  ServicePerformer : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Personnel Number'
  EmploymentInternalID : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account Assignment Category'
  AccountAssignmentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Work Item ID'
  WorkItem : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Serv. Rendered Date'
  @sap.quickinfo : 'Date on which services are rendered'
  ServicesRenderedDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Area'
  BusinessArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  ControllingArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Area'
  FunctionalArea : String(16);
  @sap.display.format : 'Date'
  @sap.label : 'Posting Date'
  @sap.quickinfo : 'Posting Date in the Document'
  PostingDate : Date;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal Year & Period'
  @sap.quickinfo : 'Period Year'
  FiscalYearPeriod : String(7);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fiscal Year Variant'
  FiscalYearVariant : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Year & Day'
  @sap.quickinfo : 'Year-Day-Combination'
  YearDay : String(7);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Year & Week'
  @sap.quickinfo : 'Year-Week-Combination'
  YearWeek : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Year & Month'
  @sap.quickinfo : 'Year-Month-Combination'
  YearMonth : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Year & Quarter'
  @sap.quickinfo : 'Year-Quarter-Combination'
  YearQuarter : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Year'
  DocumentYear : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Quarter (1 - 4)'
  CalendarQuarter : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Month (1 - 12)'
  CalendarMonth : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Calendar Week'
  @sap.quickinfo : 'Calendar Week (1 - 53)'
  CalendarWeek : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Day of Year (1 - 366)'
  CalendarDay : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Day of Week (1 - 7)'
  @sap.quickinfo : 'Day of Week'
  WeekDay : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal Year'
  FiscalYear : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal Year Period'
  @sap.quickinfo : 'Fiscal Year + Fiscal Period'
  YearPeriod : String(7);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.label : 'Amt.in Loc.Cur.'
  @sap.quickinfo : 'Amount in Local Currency'
  TotalGoodsMvtAmtInCCCrcy : Decimal(14, 3);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.label : 'Amt LC w/ Stk Qty'
  @sap.quickinfo : 'Amount in Local Currency with Sign of Stock Quantity'
  GoodsMovementStkAmtInCCCrcy : Decimal(14, 3);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.label : 'Amt LC w/ Cons Qty'
  @sap.quickinfo : 'Amount in Local Currency with Sign of Consumption Quantity'
  GoodsMvtCnsmpnAmtInCCCrcy : Decimal(14, 3);
  @sap.label : 'Company Code Currency'
  @sap.semantics : 'currency-code'
  CompanyCodeCurrency : String(5);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.label : 'Ext. Amount in LC'
  @sap.quickinfo : 'Externally Entered Posting Amount in Local Currency'
  GdsMvtExtAmtInCoCodeCrcy : Decimal(14, 3);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.label : 'Sales Value inc. VAT'
  @sap.quickinfo : 'Value at Sales Prices Including Value-Added Tax'
  SlsPrcAmtInclVATInCoCodeCrcy : Decimal(14, 3);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.label : 'Sales Value'
  @sap.quickinfo : 'Externally Entered Sales Value in Local Currency'
  EnteredSlsAmtInCoCodeCrcy : Decimal(14, 3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Purchase Order Business Process Flow'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_PurchaseOrderProcessFlow {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  key PrecedingDocument : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Character Field with Length 10'
  @sap.heading : ''
  key PrecedingDocumentItem : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Order'
  @sap.quickinfo : 'Purchase Order Number'
  key SubsequentDocument : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Character Field with Length 10'
  @sap.heading : ''
  key SubsequentDocumentItem : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Doc. Category'
  @sap.quickinfo : 'Purchasing Document Category'
  PrecedingDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Doc. Category'
  @sap.quickinfo : 'Purchasing Document Category'
  SubsequentDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  PurchaseOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'PO Item'
  @sap.quickinfo : 'Item Number of Purchase Order'
  PurchaseOrderItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Order Type'
  PurchaseOrderType : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Doc. Year'
  @sap.quickinfo : 'Material Document Year'
  FiscalYear : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Doc. Year'
  @sap.quickinfo : 'Material Document Year'
  MaterialDocumentYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Group'
  PurchasingGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. organization'
  @sap.quickinfo : 'Purchasing organization'
  PurchasingOrganization : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.deletable.path : 'Delete_mc'
@sap.updatable.path : 'Update_mc'
@sap.label : 'Purchase Order'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_PurchaseOrderTP {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PurchaseOrderTypeName'
  @sap.label : 'Purchase Order'
  @sap.quickinfo : 'Purchase Order Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key PurchaseOrder : String(10) not null;
  @sap.label : 'Key'
  @sap.heading : ''
  @sap.quickinfo : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key DraftUUID : UUID not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is active'
  @sap.heading : ''
  @sap.quickinfo : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key IsActiveEntity : Boolean not null;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Activation_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Cancel_approval_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Copy_po_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Create_item_from_ref_document_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Create_limit_item_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Delete_item_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Edit_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Preparation_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Undo_delete_item_ac : Boolean;
  @sap.label : 'Dyn. Action Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Validation_ac : Boolean;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CashDiscount1Days_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CashDiscount1Percent_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CashDiscount2Days_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CashDiscount2Percent_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CompanyCode_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DocumentCurrency_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ExchangeRateForEdit_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  IncotermsClassification_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  IncotermsLocation1_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  IncotermsLocation2_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  IncotermsVersion_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  InvoicingParty_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  IsIntrastatReportingExcluded_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  IsIntrastatReportingRelevant_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  NetPaymentDays_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PaymentTerms_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchaseOrderDate_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchaseOrderHasCommitmentItem_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchaseOrderType_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchasingGroup_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchasingOrganization_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Supplier_fc : Integer;
  @sap.label : 'Dyn. Method Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Delete_mc : Boolean;
  @sap.label : 'Dyn. Method Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Update_mc : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'PurchaseOrderType_fc'
  @sap.text : 'PurchaseOrderType_Text'
  @sap.label : 'Purchase Order Type'
  PurchaseOrderType : String(4);
  @sap.label : 'Doc. Type Descript.'
  @sap.quickinfo : 'Short Description of Purchasing Document Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchaseOrderType_Text : String(20);
  @sap.label : 'Doc. Type Descript.'
  @sap.quickinfo : 'Short Description of Purchasing Document Type'
  PurchaseOrderTypeName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'CompanyCode_fc'
  @sap.text : 'CompanyCode_Text'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.label : 'Company Name'
  @sap.quickinfo : 'Name of Company Code or Company'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CompanyCode_Text : String(25);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'PurchasingOrganization_fc'
  @sap.text : 'PurchasingOrganization_Text'
  @sap.label : 'Purchasing Organization'
  PurchasingOrganization : String(4);
  @sap.label : 'Purchasing Organization Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchasingOrganization_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'PurchasingGroup_fc'
  @sap.text : 'PurchasingGroup_Text'
  @sap.label : 'Purchasing Group'
  PurchasingGroup : String(3);
  @sap.label : 'Purchasing Grp. Name'
  @sap.quickinfo : 'Purchasing Group Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchasingGroup_Text : String(18);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'Supplier_fc'
  @sap.text : 'Supplier_Text'
  @sap.label : 'Supplier'
  Supplier : String(10);
  @sap.label : 'Name of Supplier'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Supplier_Text : String(80);
  @sap.field.control : 'DocumentCurrency_fc'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  DocumentCurrency : String(5);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  NumberOfOverduePurOrdItm : Integer;
  @sap.text : 'PurchaseOrderStatusName'
  @sap.label : 'Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.value.list : 'fixed-values'
  PurchaseOrderStatus : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order Status'
  @sap.quickinfo : 'Purchase Order Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchaseOrderStatusName : String(40);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Net Order Value'
  @sap.quickinfo : 'Total Net Order Value in Document Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchaseOrderNetAmount : Decimal(24, 3);
  @sap.label : 'Weighted Relevance'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  WeightedRelevance : Decimal(29, 6);
  @sap.label : 'Material'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.value.list : 'standard'
  ManufacturerMaterial : String(260);
  @sap.label : 'Plant'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.value.list : 'standard'
  Plant : String(260);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  IsAdvancedPurchaseOrder : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurOrdOutputCtrlType : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchaseOrderOutputStatus : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchaseOrderOutputStatusName : String(60);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Short Form (YYYYMMDDhhmmss)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchaseOrderOutputDateTime : DateTime;
  @sap.label : 'Approver Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ApproverName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'CreatedByUserFullName'
  @sap.label : 'Created by'
  @sap.quickinfo : 'Name of Person who Created the Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12);
  @sap.text : 'CreatedByUser'
  @sap.label : 'Description'
  @sap.quickinfo : 'User Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUserFullName : String(80);
  @sap.display.format : 'Date'
  @sap.label : 'Created on'
  @sap.quickinfo : 'Date on which the record was created'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date;
  @sap.display.format : 'Date'
  @sap.field.control : 'PurchaseOrderDate_fc'
  @sap.label : 'Purchase Order Date'
  PurchaseOrderDate : Date;
  @sap.label : 'Language Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Language : String(2);
  @sap.label : 'Approval Status'
  @sap.quickinfo : 'Approval Status of PO'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ApprovalStatusName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ApproverName'
  @sap.label : 'Approver'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ApproverUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'PaymentTerms_fc'
  @sap.label : 'Payment Terms'
  @sap.quickinfo : 'Terms of Payment Key'
  PaymentTerms : String(4);
  @sap.field.control : 'CashDiscount1Days_fc'
  @sap.label : 'Days 1 / In Percent'
  @sap.quickinfo : 'Cash discount days 1'
  CashDiscount1Days : Decimal(3, 0);
  @sap.field.control : 'CashDiscount1Percent_fc'
  @sap.label : 'Cash Discount Percentage 1'
  CashDiscount1Percent : Decimal(5, 3);
  @sap.field.control : 'CashDiscount2Days_fc'
  @sap.label : 'Days 2 / In Percent'
  @sap.quickinfo : 'Cash discount days 2'
  CashDiscount2Days : Decimal(3, 0);
  @sap.field.control : 'CashDiscount2Percent_fc'
  @sap.label : 'Cash Discount Percentage 2'
  CashDiscount2Percent : Decimal(5, 3);
  @sap.field.control : 'NetPaymentDays_fc'
  @sap.label : 'Days Net'
  @sap.quickinfo : 'Net Payment Terms Period'
  NetPaymentDays : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'IncotermsVersion_fc'
  @sap.label : 'Incoterms Version'
  IncotermsVersion : String(4);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'IncotermsClassification_fc'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3);
  @sap.field.control : 'IncotermsLocation1_fc'
  @sap.label : 'Incoterms Location 1'
  IncotermsLocation1 : String(70);
  @sap.field.control : 'IncotermsLocation2_fc'
  @sap.label : 'Incoterms Location 2'
  IncotermsLocation2 : String(70);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'InvoicingParty_fc'
  @sap.label : 'Invoicing Party'
  @sap.quickinfo : 'Different Invoicing Party'
  InvoicingParty : String(10);
  @sap.field.control : 'ExchangeRateForEdit_fc'
  @sap.label : 'Exchange Rate'
  ExchangeRateForEdit : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fixed Exchange Rate'
  @sap.quickinfo : 'Indicator for Fixed Exchange Rate'
  ExchangeRateIsFixed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'IsIntrastatReportingRelevant_fc'
  @sap.label : 'Intrastat Relevance'
  @sap.quickinfo : 'Relevant for Intrastat Reporting'
  IsIntrastatReportingRelevant : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'IsIntrastatReportingExcluded_fc'
  @sap.label : 'Intrastat Exclusion'
  @sap.quickinfo : 'Exclude from Intrastat Reporting'
  IsIntrastatReportingExcluded : Boolean;
  @sap.label : 'Business Purp Compl'
  @sap.quickinfo : 'Business Purpose Completed'
  IsEndOfPurposeBlocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'PurchaseOrderHasCommitmentItem_fc'
  @sap.label : 'Purchase Order has Commitment Items'
  @sap.quickinfo : 'Indicator that Purchase Order has Commitment Items'
  PurchaseOrderHasCommitmentItem : Boolean;
  @sap.label : 'Salesperson'
  @sap.quickinfo : 'Responsible Salesperson at Supplier''s Office'
  SupplierRespSalesPersonName : String(30);
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Supplier''s Telephone Number'
  SupplierPhoneNumber : String(16);
  @sap.label : 'Your Reference'
  CorrespncExternalReference : String(12);
  @sap.label : 'Our Reference'
  CorrespncInternalReference : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Last Changed'
  @sap.quickinfo : 'Change Time Stamp'
  LastChangeDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Has Draft'
  @sap.heading : ''
  @sap.quickinfo : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  HasDraftEntity : Boolean;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Draft Created On'
  @sap.heading : ''
  @sap.quickinfo : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DraftEntityCreationDateTime : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Draft Last Changed On'
  @sap.heading : ''
  @sap.quickinfo : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DraftEntityLastChangeDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Has active'
  @sap.heading : ''
  @sap.quickinfo : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  HasActiveEntity : Boolean;
  @cds.ambiguous : 'missing on condition?'
  DraftAdministrativeData : Association to ZCA_BPF_LAYOUT_METADATA_SRV.I_DraftAdministrativeData {  };
  @cds.ambiguous : 'missing on condition?'
  SiblingEntity : Association to ZCA_BPF_LAYOUT_METADATA_SRV.C_PurchaseOrderTP {  };
} actions {
  action C_PurchaseOrderTPActivation() returns ZCA_BPF_LAYOUT_METADATA_SRV.C_PurchaseOrderTP;
  action C_PurchaseOrderTPCancel_approval() returns ZCA_BPF_LAYOUT_METADATA_SRV.DummyFunctionImportResult;
  action C_PurchaseOrderTPCopy_po() returns ZCA_BPF_LAYOUT_METADATA_SRV.C_PurchaseOrderTP;
  action A88DE5087EBCreate_item_from_ref_document(
    Guid : String(36),
    Ebeln : String(10),
    Ebelp : String(5),
    Infnr : String(10),
    Ekorg : String(4),
    Esokz : String(1),
    Werks : String(4)
  ) returns ZCA_BPF_LAYOUT_METADATA_SRV.C_PurchaseOrderTP;
  action C_PurchaseOrderTPCreate_limit_item() returns ZCA_BPF_LAYOUT_METADATA_SRV.DummyFunctionImportResult;
  action C_PurchaseOrderTPDelete_item(
    Guid : String(36)
  ) returns ZCA_BPF_LAYOUT_METADATA_SRV.DummyFunctionImportResult;
  action C_PurchaseOrderTPEdit(
    PreserveChanges : Boolean
  ) returns ZCA_BPF_LAYOUT_METADATA_SRV.C_PurchaseOrderTP;
  action C_PurchaseOrderTPPreparation(
    SideEffectsQualifier : LargeString
  ) returns ZCA_BPF_LAYOUT_METADATA_SRV.C_PurchaseOrderTP;
  action C_PurchaseOrderTPUndo_delete_item(
    Guid : String(36)
  ) returns ZCA_BPF_LAYOUT_METADATA_SRV.DummyFunctionImportResult;
  function C_PurchaseOrderTPValidation(
    SideEffectsQualifier : LargeString
  ) returns ZCA_BPF_LAYOUT_METADATA_SRV.ValidationFunctionResult;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Purchasing Group Value Help'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_PurchasingGroupValueHelp {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PurchasingGroupName'
  @sap.label : 'Purchasing Group'
  key PurchasingGroup : String(3) not null;
  @sap.label : 'Purchasing Grp. Name'
  @sap.quickinfo : 'Purchasing Group Name'
  PurchasingGroupName : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tel. No. of Purchasing Grp.'
  @sap.quickinfo : 'Telephone number of purchasing group (buyer group)'
  PurchasingGroupPhoneNumber : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tel. No. with Dialing Code'
  @sap.quickinfo : 'Telephone no.: dialling code+number'
  PhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extension'
  @sap.quickinfo : 'Telephone no.: Extension'
  PhoneNumberExtension : String(10);
  @sap.label : 'Fax'
  @sap.quickinfo : 'Fax number of purchasing (buyer) group'
  FaxNumber : String(31);
  @sap.label : 'Email Address'
  @sap.quickinfo : 'E-Mail Address'
  @sap.semantics : 'email'
  EmailAddress : String(241);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Purchasing Organization Value Help'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_PurchasingOrgValueHelp {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PurchasingOrganizationName'
  @sap.label : 'Purchasing Organization'
  key PurchasingOrganization : String(4) not null;
  @sap.label : 'Purchasing Organization Name'
  PurchasingOrganizationName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.text : 'CompanyCodeName'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.label : 'Company Name'
  @sap.quickinfo : 'Name of Company Code or Company'
  CompanyCodeName : String(25);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Purchase Requisition Process flow'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_PurReqnProcessFlow {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Requisition'
  @sap.quickinfo : 'Purchase Requisition Number'
  key PrecedingDocument : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item of requisition'
  @sap.quickinfo : 'Item number of purchase requisition'
  key PrecedingDocumentItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  key SubsequentDocument : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number of Purchasing Document'
  key SubsequentDocumentItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Doc. Category'
  @sap.quickinfo : 'Purchasing Document Category'
  PrecedingDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Doc. Category'
  @sap.quickinfo : 'Purchasing Document Category'
  SubsequentDocumentCategory : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal Year'
  FiscalYear : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Doc. Year'
  @sap.quickinfo : 'Material Document Year'
  MaterialDocumentYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Record type'
  RecordType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Requisition'
  @sap.quickinfo : 'Purchase Requisition Number'
  PurchaseRequisition : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item of requisition'
  @sap.quickinfo : 'Item number of purchase requisition'
  PurchaseRequisitionItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Type'
  @sap.quickinfo : 'Purchase Requisition Document Type'
  PurchaseRequisitionType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Group'
  PurchasingGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. organization'
  @sap.quickinfo : 'Purchasing organization'
  PurchasingOrganization : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Returns Delivery Process Flow'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_ReturnsDeliveryProcFlow {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Return Delivery'
  @sap.quickinfo : 'Customer Return Delivery'
  key ReturnsDelivery : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Preceding Document'
  @sap.quickinfo : 'Preceding document'
  key PrecedingDocument : String(40) not null;
  @sap.label : 'Preceding Doc.Categ.'
  @sap.quickinfo : 'Document Category of Preceding SD Document'
  key PrecedingDocumentCategory : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery'
  key SubsequentDocument : String(10) not null;
  @sap.label : 'SD Document Category'
  key SubsequentDocumentCategory : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shipping Point'
  @sap.quickinfo : 'Shipping Point / Receiving Point'
  ShippingPoint : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales document'
  @sap.quickinfo : 'Sales Document'
  SalesDocument : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  PurchaseOrder : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Warehouse Number'
  @sap.quickinfo : 'Warehouse Number / Warehouse Complex'
  WarehouseNumber : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Transfer Order'
  @sap.quickinfo : 'WM Transfer Order Number'
  WrhsMgmtTransferOrder : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Document'
  @sap.quickinfo : 'Number of Material Document'
  MaterialDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Doc. Year'
  @sap.quickinfo : 'Material Document Year'
  MaterialDocumentYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales document'
  @sap.quickinfo : 'Sales and Distribution Document Number'
  BillingDocument : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'RFQ Process Flow'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_RFQProcessFlow {
  @sap.display.format : 'UpperCase'
  @sap.label : 'RFQ'
  @sap.quickinfo : 'Request for Quotation'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key PrecedingDocument : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Doc. Category'
  @sap.quickinfo : 'Purchasing Document Category'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key PrecedingDocumentCategory : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'RFQ'
  @sap.quickinfo : 'Request for Quotation'
  key SubsequentDocument : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Doc. Category'
  @sap.quickinfo : 'Purchasing Document Category'
  key SubsequentDocumentCategory : String(1) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'RFQ'
  @sap.quickinfo : 'Request for Quotation'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key RequestForQuotation : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'RFQ Type'
  @sap.quickinfo : 'RFQ Document Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchasingDocumentType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal Year'
  FiscalYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Group'
  PurchasingGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Organization'
  PurchasingOrganization : String(4);
  @sap.label : 'Business Purp Compl'
  @sap.quickinfo : 'Business Purpose Completed'
  IsEndOfPurposeBlocked : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Service Document Process Flow Node'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_ServiceDocumentProcFlow {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trans. Cat.'
  @sap.quickinfo : 'Business Trans. Cat.'
  key ServiceObjectType : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceDocument : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Posting Date'
  @sap.quickinfo : 'Posting Date for a Business Transaction'
  PostingDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Life Cycle Status'
  ServiceDocumentStatus : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Process Flow For Service Entry Sheet'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_ServiceEntrySheetProcessFlow {
  key PrecedingDocument : String(12) not null;
  key PrecedingDocumentItem : String(5) not null;
  key PrecedingDocumentCategory : String(1) not null;
  key SubsequentDocument : String(12) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Doc.Item'
  @sap.quickinfo : 'Item in Material Document'
  key SubsequentDocumentItem : String(4) not null;
  @sap.display.format : 'NonNegative'
  key MaterialDocumentYear : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Account Assgmt No.'
  @sap.quickinfo : 'Sequential Number of Account Assignment'
  AccountAssignmentNumber : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trans./event type'
  @sap.quickinfo : 'Transaction/event type, purchase order history'
  SubsequentDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Document'
  @sap.quickinfo : 'Document No. of a Reference Document'
  ServiceEntrySheet : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reference Doc. Item'
  @sap.quickinfo : 'Item of a Reference Document'
  ServiceEntrySheetItem : String(4);
  @sap.label : 'Plant Name'
  PlantName : String(30);
  Quantity : Decimal(18, 3);
  @sap.display.format : 'NonNegative'
  FiscalYear : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Posting Date'
  @sap.quickinfo : 'Posting Date in the Document'
  PostingDate : Date;
  @sap.unit : 'Currency'
  SupplierInvoiceItemAmount : Decimal(19, 3);
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Group'
  PurchasingGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. organization'
  @sap.quickinfo : 'Purchasing organization'
  PurchasingOrganization : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Srvc Quotation Info for Transaction History'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_SrvcQtanProcFlowInformation {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction ID'
  key ServiceQuotation : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Quotation Status'
  @sap.quickinfo : 'Quotation Status mapping'
  ServiceQuotationStatus : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Posting Date'
  @sap.quickinfo : 'Posting Date for a Business Transaction'
  PostingDate : Date;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'SSP PR Goods Movement'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_SSPGoodsMovementDocument {
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Document Year'
  key MaterialDocumentYear : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Document'
  @sap.quickinfo : 'Number of Material Document'
  key MaterialDocument : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Document Item'
  key MaterialDocumentItem : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Storage location'
  StorageLocation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  Material : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Batch'
  @sap.quickinfo : 'Batch Number'
  Batch : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Special Stock Type'
  InventorySpecialStockType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stock Type'
  @sap.quickinfo : 'Stock Type of Goods Movement (Stock Identifier)'
  InventoryStockType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Additional Supplier for Special Stock'
  StockOwner : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Special Stock Valuation Indicator'
  @sap.quickinfo : 'Separate Valuation Type'
  InventorySpecialStockValnType : String(1);
  @sap.label : 'Company Code Currency'
  @sap.semantics : 'currency-code'
  CompanyCodeCurrency : String(5);
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  MaterialBaseUnit : String(3);
  @sap.label : 'Unit of Entry'
  @sap.quickinfo : 'Unit of entry'
  @sap.semantics : 'unit-of-measure'
  EntryUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Has Reversal Movement Type'
  IsReversalMovementType : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trans./Event Type'
  @sap.quickinfo : 'Transaction/Event Type'
  InventoryTransactionType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rec/Iss Plant'
  @sap.quickinfo : 'Receiving/Issuing Plant'
  IssuingOrReceivingPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Receiving stor. loc.'
  @sap.quickinfo : 'Receiving/issuing storage location'
  IssuingOrReceivingStorageLoc : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transfer Material'
  IssgOrRcvgMaterial : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transfer Batch'
  IssgOrRcvgBatch : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transfer Special Stock Type'
  IssgOrRcvgSpclStockInd : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transfer Stock Type'
  IssuingOrReceivingStockType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Val. Type Tfr Batch'
  @sap.quickinfo : 'Valuation Type of Transfer Batch'
  IssuingOrReceivingValType : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is Item Cancelled'
  @sap.quickinfo : 'Item has been Cancelled'
  GoodsMovementIsCancelled : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reversed Mat Doc'
  @sap.quickinfo : 'Reversed Material Document'
  ReversedMaterialDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reversed Doc Item'
  @sap.quickinfo : 'Reversed Material Document Item'
  ReversedMaterialDocumentItem : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reversed Doc Year'
  @sap.quickinfo : 'Reversed Material Document Year'
  ReversedMaterialDocumentYear : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Document Date'
  @sap.quickinfo : 'Document Date in Document'
  DocumentDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Entry Date'
  @sap.quickinfo : 'Day On Which Accounting Document Was Entered'
  CreationDate : Date;
  @sap.label : 'Time of Entry'
  CreationTime : Time;
  @sap.display.format : 'Date'
  @sap.label : 'Posting Date'
  @sap.quickinfo : 'Posting Date in the Document'
  PostingDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fiscal Year Variant'
  FiscalYearVariant : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal Year'
  FiscalYear : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal Year & Period'
  @sap.quickinfo : 'Period Year'
  FiscalYearPeriod : String(7);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Year & Day'
  @sap.quickinfo : 'Year-Day-Combination'
  YearDay : String(7);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Year & Week'
  @sap.quickinfo : 'Year-Week-Combination'
  YearWeek : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Year & Month'
  @sap.quickinfo : 'Year-Month-Combination'
  YearMonth : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Year & Quarter'
  @sap.quickinfo : 'Year-Quarter-Combination'
  YearQuarter : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Quarter (1 - 4)'
  CalendarQuarter : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Month (1 - 12)'
  CalendarMonth : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Calendar Week'
  @sap.quickinfo : 'Calendar Week (1 - 53)'
  CalendarWeek : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Day of Year (1 - 366)'
  CalendarDay : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Day of Week (1 - 7)'
  @sap.quickinfo : 'Day of Week'
  WeekDay : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.quickinfo : 'Sales Order Number'
  SalesOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sales Order Item'
  SalesOrderItem : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sales Order Schedule'
  SalesOrderScheduleLine : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase order'
  @sap.quickinfo : 'Purchase order number'
  PurchaseOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Purchase Order Item'
  @sap.quickinfo : 'Item Number of Purchasing Document'
  PurchaseOrderItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Network'
  @sap.quickinfo : 'Network Number for Account Assignment'
  ProjectNetwork : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery'
  DeliveryDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Delivery Item'
  DeliveryDocumentItem : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element)'
  WBSElementInternalID : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  ManufacturingOrder : String(12);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Order Item'
  ManufacturingOrderItem : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales order'
  @sap.quickinfo : 'Sales order number of valuated sales order stock'
  SpecialStockIdfgSalesOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sales order item'
  @sap.quickinfo : 'Sales Order Item of Valuated Sales Order Stock'
  SpecialStockIdfgSalesOrderItem : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Valuated Sales Order Stock WBS Element'
  SpecialStockIdfgWBSElement : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference'
  @sap.quickinfo : 'Reference Document Number'
  ReferenceDocument : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Movement type'
  @sap.quickinfo : 'Movement type (inventory management)'
  GoodsMovementType : String(3);
  @sap.label : 'Movement Type Text'
  @sap.quickinfo : 'Movement Type Text (Inventory Management)'
  ProcessFlowDynamicNodeTitle : String(20);
  @sap.label : 'Movement Type Text'
  @sap.quickinfo : 'Movement Type Text (Inventory Management)'
  ProcessFlowNodeShortTitle : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Type'
  InventoryValuationType : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'User Name'
  CreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Vendor''s account number'
  Supplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Account number of customer'
  Customer : String(10);
  @sap.label : 'Document Header Text'
  MaterialDocumentHeaderText : String(25);
  @sap.label : 'Text'
  @sap.quickinfo : 'Item Text'
  MaterialDocumentItemText : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery Completed'
  @sap.quickinfo : '&quot;Delivery Completed&quot; Indicator'
  IsCompletelyDelivered : Boolean;
  @sap.label : 'Goods Recipient'
  GoodsRecipientName : String(12);
  @sap.label : 'Unloading Point'
  UnloadingPointName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Doc. Type'
  @sap.quickinfo : 'Goods movement ref doc type'
  GoodsMovementRefDocType : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reason for Movement'
  GoodsMovementReasonCode : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'SLED/BBD'
  @sap.quickinfo : 'Shelf Life Expiration or Best-Before Date'
  ShelfLifeExpirationDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Date of Manufacture'
  ManufactureDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account Assignment Category'
  AccountAssignmentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center'
  CostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  ControllingArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Object'
  CostObject : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'G/L Account'
  @sap.quickinfo : 'G/L Account Number'
  GLAccount : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Area'
  FunctionalArea : String(16);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Profitability Segment'
  ProfitabilitySegment : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  ProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Asset'
  @sap.quickinfo : 'Main Asset Number'
  MasterFixedAsset : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sub-number'
  @sap.quickinfo : 'Asset Subnumber'
  FixedAsset : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Funds Center'
  FundsCenter : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fund'
  Fund : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Commitment item'
  @sap.quickinfo : 'Commitment Item'
  CommitmentItem : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grant'
  GrantID : String(20);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reservation'
  @sap.quickinfo : 'Number of reservation/dependent requirements'
  Reservation : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reservation Item'
  @sap.quickinfo : 'Item Number of Reservation / Dependent Requirements'
  ReservationItem : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Res Final Issue'
  @sap.quickinfo : 'Final Issue for Reservation'
  ReservationIsFinallyIssued : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Debit/Credit ind'
  @sap.quickinfo : 'Debit/Credit Indicator'
  DebitCreditCode : String(1);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.label : 'Amt LC w/ Stk Qty'
  @sap.quickinfo : 'Amount in Local Currency with Sign of Stock Quantity'
  GoodsMovementStkAmtInCCCrcy : Decimal(14, 3);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.label : 'Amt LC w/ Cons Qty'
  @sap.quickinfo : 'Amount in Local Currency with Sign of Consumption Quantity'
  GoodsMvtCnsmpnAmtInCCCrcy : Decimal(14, 3);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.label : 'Ext. Amount in LC'
  @sap.quickinfo : 'Externally Entered Posting Amount in Local Currency'
  GdsMvtExtAmtInCoCodeCrcy : Decimal(14, 3);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.label : 'Sales Value inc. VAT'
  @sap.quickinfo : 'Value at Sales Prices Including Value-Added Tax'
  SlsPrcAmtInclVATInCoCodeCrcy : Decimal(14, 3);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.label : 'Sales Value'
  @sap.quickinfo : 'Externally Entered Sales Value in Local Currency'
  EnteredSlsAmtInCoCodeCrcy : Decimal(14, 3);
  @sap.unit : 'MaterialBaseUnit'
  @sap.label : 'Stock Quantity'
  MatlStkChangeQtyInBaseUnit : Decimal(31, 14);
  @sap.unit : 'MaterialBaseUnit'
  @sap.label : 'Consumption Quantity'
  MatlCnsmpnQtyInMatlBaseUnit : Decimal(31, 14);
  @sap.unit : 'MaterialBaseUnit'
  @sap.label : 'Quantity'
  QuantityInBaseUnit : Decimal(13, 3);
  @sap.unit : 'EntryUnit'
  @sap.label : 'Qty in unit of entry'
  @sap.quickinfo : 'Quantity in unit of entry'
  QuantityInEntryUnit : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stock Change Category'
  StockChangeCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is Effctv Goods Mvt'
  @sap.quickinfo : 'Is Effective Goods Movement'
  IsEffectiveGoodsMovement : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is Consumption Movement'
  IsConsumptionMovement : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is Cross Plant Transfer'
  IsCrossPlantTransfer : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is Storage Location Transfer'
  @sap.quickinfo : 'Is Storage Location Change'
  IsStorageLocChangeByTransf : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is Material Change'
  IsMaterialChangeByTransf : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is Batch Change'
  @sap.quickinfo : 'Batch Change by Transfer'
  IsBatchChangeByTransf : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is Special Stock Type Change'
  IsSpclStkTypeChangeByTransf : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is Stock Type Change'
  IsStockTypeChangeByTransf : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'SSP PR Business Process flow'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_SSPPurReqnProcessFlow {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Requisition'
  @sap.quickinfo : 'Purchase Requisition Number'
  key PrecedingDocument : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item of requisition'
  @sap.quickinfo : 'Item number of purchase requisition'
  key PrecedingDocumentItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  key SubsequentDocument : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number of Purchasing Document'
  key SubsequentDocumentItem : String(5) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Doc. Category'
  @sap.quickinfo : 'Purchasing Document Category'
  PrecedingDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Doc. Category'
  @sap.quickinfo : 'Purchasing Document Category'
  SubsequentDocumentCategory : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal Year'
  FiscalYear : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Doc. Year'
  @sap.quickinfo : 'Material Document Year'
  MaterialDocumentYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Record type'
  RecordType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Requisition'
  @sap.quickinfo : 'Purchase Requisition Number'
  PurchaseRequisition : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item of requisition'
  @sap.quickinfo : 'Item number of purchase requisition'
  PurchaseRequisitionItem : String(5);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'SSP PR : Consolidated Reservation Status'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_SSPResvnCnsldtdStatusForBPF {
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reservation'
  @sap.quickinfo : 'Number of reservation/dependent requirements'
  key Reservation : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item no.'
  @sap.quickinfo : 'Item Number of Reservation / Dependent Requirements'
  key ReservationItem : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Record type'
  key RecordType : String(1) not null;
  @sap.display.format : 'NonNegative'
  ReservationCompletionStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Movement type'
  @sap.quickinfo : 'Movement type (inventory management)'
  GoodsMovementType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Requisition'
  @sap.quickinfo : 'Purchase Requisition Number'
  PurchaseRequisition : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item of requisition'
  @sap.quickinfo : 'Item number of purchase requisition'
  PurchaseRequisitionItem : String(5);
  @sap.label : 'Unit of Entry'
  @sap.quickinfo : 'Unit of entry'
  @sap.semantics : 'unit-of-measure'
  EntryUnit : String(3);
  @sap.unit : 'EntryUnit'
  @sap.label : 'Qty in unit of entry'
  @sap.quickinfo : 'Quantity in unit of entry'
  ResvnItmRequiredQtyInEntryUnit : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Vendor'
  @sap.quickinfo : 'Account Number of Vendor or Creditor'
  Supplier : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Self Service Procurement Supplier Invoice Document'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_SSPSupplierInvoice {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoice Document No.'
  @sap.quickinfo : 'Document Number of an Invoice Document'
  key SupplierInvoice : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal Year'
  key FiscalYear : String(4) not null;
  @sap.label : 'GUID'
  @sap.quickinfo : 'GUID: MM Supplier Invoice in S-Innovations'
  SupplierInvoiceUUID : UUID;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  @sap.value.list : 'standard'
  CompanyCode : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Invoice Date'
  @sap.quickinfo : 'Invoice Date in Document'
  DocumentDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Posting Date'
  @sap.quickinfo : 'Posting Date in the Document'
  PostingDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference'
  @sap.quickinfo : 'Reference Document Number'
  SupplierInvoiceIDByInvcgParty : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoicing Party'
  @sap.quickinfo : 'Different Invoicing Party'
  InvoicingParty : String(10);
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  DocumentCurrency : String(5);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Gross Invoice Amount'
  @sap.quickinfo : 'Gross Invoice Amount in Document Currency'
  InvoiceGrossAmount : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoice'
  @sap.quickinfo : 'Indicator: post invoice'
  IsInvoice : String(1);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Unplanned Del. Costs'
  @sap.quickinfo : 'Unplanned Delivery Costs'
  UnplannedDeliveryCost : Decimal(14, 3);
  @sap.label : 'Document Header Text'
  DocumentHeaderText : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Entered By'
  @sap.quickinfo : 'Name of the Processor Who Entered the Object'
  CreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'User Name'
  LastChangedByUser : String(12);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'CD Amount'
  @sap.quickinfo : 'Cash Discount Amount in Document Currency'
  ManualCashDiscount : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment terms'
  @sap.quickinfo : 'Terms of payment key'
  PaymentTerms : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Baseline Date'
  @sap.quickinfo : 'Baseline date for due date calculation'
  DueCalculationBaseDate : Date;
  @sap.label : 'Disc.percent 1'
  @sap.quickinfo : 'Cash discount percentage 1'
  CashDiscount1Percent : Decimal(5, 3);
  @sap.label : 'Days 1'
  @sap.quickinfo : 'Cash discount days 1'
  CashDiscount1Days : Decimal(3, 0);
  @sap.label : 'Disc.percent 2'
  @sap.quickinfo : 'Cash Discount Percentage 2'
  CashDiscount2Percent : Decimal(5, 3);
  @sap.label : 'Days 2'
  @sap.quickinfo : 'Cash discount days 2'
  CashDiscount2Days : Decimal(3, 0);
  @sap.label : 'Days Net'
  @sap.quickinfo : 'Net Payment Terms Period'
  NetPaymentDays : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment block'
  @sap.quickinfo : 'Payment Block Key'
  PaymentBlockingReason : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Type'
  AccountingDocumentType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoice doc. status'
  @sap.quickinfo : 'Invoice document status'
  SupplierInvoiceStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'IV category'
  @sap.quickinfo : 'Origin of a Logistics Invoice Verification Document'
  SupplierInvoiceOrigin : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bus. Network Origin'
  @sap.quickinfo : 'Origin of the Business Network Document'
  BusinessNetworkOrigin : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reversed by'
  @sap.quickinfo : 'Reversal document number'
  ReverseDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Year'
  @sap.quickinfo : 'Fiscal year of reversal document'
  ReverseDocumentFiscalYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction Type'
  @sap.quickinfo : 'Transaction Type in AG08 (Internal Document Type)'
  SuplrInvcTransactionCategory : String(2);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Supp.Error(net)'
  @sap.quickinfo : 'Supplier Error (Exclusive of Tax)'
  SuplrInvcManuallyReducedAmount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Inv. reduction'
  @sap.quickinfo : 'Automatic Invoice Reduction Amount (Net)'
  SuplrInvcAutomReducedAmount : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Part.bank type'
  @sap.quickinfo : 'Partner bank type'
  BPBankAccountInternalID : String(4);
  @sap.label : 'Exchange rate'
  ExchangeRate : Decimal(9, 5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'SCB Indicator'
  @sap.quickinfo : 'State Central Bank Indicator'
  StateCentralBankPaymentReason : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplying Cntry'
  @sap.quickinfo : 'Supplying Country'
  SupplyingCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Method'
  PaymentMethod : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment reference'
  @sap.quickinfo : 'Payment Reference'
  PaymentReference : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'InR.Reference number'
  @sap.quickinfo : 'Invoice reference: Document number for invoice reference'
  InvoiceReference : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal Year'
  @sap.quickinfo : 'Fiscal Year of the Relevant Invoice (for Credit Memo)'
  InvoiceReferenceFiscalYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fixed'
  @sap.quickinfo : 'Fixed Payment Terms'
  FixedCashDiscount : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Code'
  UnplannedDeliveryCostTaxCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  UnplndDelivCostTaxJurisdiction : String(15);
  @sap.label : 'Assignment'
  @sap.quickinfo : 'Assignment number'
  AssignmentReference : String(18);
  @sap.label : 'Item Text'
  SupplierPostingLineItemText : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Calculate Tax'
  @sap.quickinfo : 'Calculate Tax Automatically'
  TaxIsCalculatedAutomatically : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business place'
  @sap.quickinfo : 'Business Place'
  BusinessPlace : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PBC/ISR number'
  @sap.quickinfo : 'ISR subscriber number'
  PaytSlipWthRefSubscriber : String(11);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Check digit'
  @sap.quickinfo : 'POR check digit'
  PaytSlipWthRefCheckDigit : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISR/QR Reference No.'
  @sap.quickinfo : 'ISR/QR Reference Number'
  PaytSlipWthRefReference : String(27);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Purp Compl'
  @sap.quickinfo : 'Business Purpose Completed'
  IsEndOfPurposeBlocked : String(1);
  @sap.label : 'Short Descript.'
  @sap.quickinfo : 'Short Text for Fixed Values'
  ProcessFlowDynamicNodeTitle : String(60);
  @sap.label : 'Short Descript.'
  @sap.quickinfo : 'Short Text for Fixed Values'
  ProcessFlowNodeShortTitle : String(60);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Warehouse Management Transfer Order'
entity ZCA_BPF_LAYOUT_METADATA_SRV.C_WrhsMgmtTransferOrder {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Warehouse Number'
  @sap.quickinfo : 'Warehouse Number / Warehouse Complex'
  key WarehouseNumber : String(3) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Transfer Order'
  @sap.quickinfo : 'WM Transfer Order Number'
  key WrhsMgmtTransferOrder : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Confirmation'
  @sap.quickinfo : 'Indicator: Confirmation'
  TransferOrderInWrhsMgmtIsConfd : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Confirmation Date'
  @sap.quickinfo : 'WM Transfer Order Confirmation Date'
  WrhsMgmtTransfOrdConfDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Processing Status'
  @sap.quickinfo : 'WM Transfer Order Status'
  WrhsMgmtTransfOrderStatus : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Matdoc Items'
entity ZCA_BPF_LAYOUT_METADATA_SRV.F_Mmim_Matdoc_Item {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Document'
  @sap.quickinfo : 'Number of Material Document'
  key MaterialDocument : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Document Year'
  key MaterialDocumentYear : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Document Item'
  @sap.quickinfo : 'Item in Material Document'
  key MaterialDocumentItem : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reversed'
  @sap.quickinfo : 'Item has been Cancelled'
  IsCancelled : Boolean;
  DocumentTitle : String(20);
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaterialName'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  Material : String(40);
  @sap.label : 'Material Description'
  MaterialName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.text : 'GoodsmovementTypeName'
  @sap.label : 'Goods Movement Type'
  @sap.quickinfo : 'Movement type (inventory management)'
  GoodsmovementType : String(3);
  @sap.label : 'Movement Type Text'
  @sap.quickinfo : 'Movement Type Text (Inventory Management)'
  GoodsmovementTypeName : String(20);
  @sap.label : 'Movement Type LText'
  @sap.quickinfo : 'Movement Type Long Text (Inventory Management)'
  GoodsMovementTypeLongName : String(70);
  @sap.text : 'GoodsMovementReasonName'
  @sap.label : 'Reason for Movement'
  GoodsMovementReasonCode : String(4);
  @sap.label : 'Name'
  @sap.quickinfo : 'Text: Reason for Goods Movement'
  GoodsMovementReasonName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.text : 'PlantName'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.label : 'Plant Name'
  PlantName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Batch'
  @sap.quickinfo : 'Batch Number of Warehouse Stock (Stock Identifier)'
  Batch : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'StorageLocationName'
  @sap.label : 'Storage Location'
  @sap.quickinfo : 'Storage location'
  StorageLocation : String(4);
  @sap.label : 'Storage Loc. Name'
  @sap.quickinfo : 'Storage Location Name'
  StorageLocationName : String(16);
  @sap.display.format : 'UpperCase'
  @sap.text : 'SupplierName'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Supplier to be Supplied/Who is to Receive Delivery'
  Supplier : String(10);
  @sap.label : 'Name'
  @sap.quickinfo : 'Name 1'
  SupplierName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  SupplierBasicAuthorizationGrp : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.quickinfo : 'Sales Order Number'
  SalesOrder : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order Item'
  @sap.quickinfo : 'Description for Sales Order Item'
  SalesOrderItem : String(6);
  @sap.display.format : 'UpperCase'
  @sap.text : 'CustomerName'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Account number of customer'
  Customer : String(10);
  @sap.label : 'Name'
  @sap.quickinfo : 'Name 1'
  CustomerName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  CustomerBasicAuthorizationGrp : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'InventoryStockTypeName'
  @sap.label : 'Stock Type'
  @sap.quickinfo : 'Stock Type of Goods Movement (Stock Identifier)'
  InventoryStockType : String(2);
  @sap.label : 'Stock Type Name'
  InventoryStockTypeName : String(60);
  @sap.display.format : 'UpperCase'
  @sap.text : 'InventorySpecialStockTypeName'
  @sap.label : 'Inventory Special Stock Type'
  @sap.quickinfo : 'Special Stock Indicator'
  InventorySpecialStockType : String(1);
  @sap.label : 'Special stock descr.'
  @sap.quickinfo : 'Description of special stock'
  InventorySpecialStockTypeName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  OrderID : String(12);
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element)'
  WBSElementInternalID : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'WBS element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element)'
  WBSElement : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Work Item'
  @sap.quickinfo : 'Work Item ID'
  WorkItem : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Personnel Number'
  @sap.quickinfo : 'Description for Personnel Number'
  PersonnelNumber : String(8);
  @sap.label : 'Document Item Text'
  @sap.quickinfo : 'Item Text'
  DocumentItemText : String(50);
  @sap.display.format : 'UpperCase'
  @sap.text : 'AcctAssignmentCategoryName'
  @sap.label : 'Category'
  @sap.quickinfo : 'Account Assignment Category'
  AcctAssignmentCategory : String(1);
  @sap.label : 'Acct Assgnt. Cat. Desc.'
  @sap.quickinfo : 'Account Assignment Category Description'
  AcctAssignmentCategoryName : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Shelf Life Expiration Date'
  ShelfLifeExpirationDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Production Date'
  ManufactureDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Non-Valuated GR'
  GoodsReceiptIsNonValuated : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Multiple Account Assignment'
  HasMultipleAccountAssignment : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  PurchaseOrder : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Order Item'
  @sap.quickinfo : 'Description for Purchase Order Item'
  PurchaseOrderItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery'
  DeliveryDocument : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery Item'
  @sap.quickinfo : 'Description for Delivery Item'
  DeliveryDocumentItem : String(6);
  @sap.display.format : 'UpperCase'
  @sap.text : 'IssuingOrReceivingPlantName'
  @sap.label : 'Receiving Plant'
  @sap.quickinfo : 'Plant'
  IssuingOrReceivingPlant : String(4);
  @sap.label : 'Plant Name'
  IssuingOrReceivingPlantName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.text : 'IssuingOrReceivingStLocName'
  @sap.label : 'Receiving Storage Location'
  @sap.quickinfo : 'Storage location'
  IssuingOrReceivingStorageLoc : String(4);
  @sap.label : 'Storage Loc. Name'
  @sap.quickinfo : 'Storage Location Name'
  IssuingOrReceivingStLocName : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Receiving Batch'
  @sap.quickinfo : 'Receiving/Issuing Batch'
  IssgOrRcvgBatch : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'IssuingOrReceivStockTypeName'
  @sap.label : 'Receiving Stock Type'
  @sap.quickinfo : 'Stock Type of Goods Movement (Stock Identifier)'
  IssuingOrReceivingStockType : String(2);
  @sap.label : 'Stock Type Name'
  IssuingOrReceivStockTypeName : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Debit/Credit Indicator'
  DebitCreditCode : String(1);
  @sap.label : 'Unit of Entry'
  @sap.quickinfo : 'Unit of entry'
  @sap.semantics : 'unit-of-measure'
  EntryUnit : String(3);
  @sap.unit : 'EntryUnit'
  @sap.label : 'Quantity'
  @sap.quickinfo : 'Quantity in unit of entry'
  QuantityInEntryUnit : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization check'
  @sap.quickinfo : 'Storage location authorization for goods movements active'
  IsStorLocAuthznCheckActive : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization check'
  @sap.quickinfo : 'Storage location authorization for goods movements active'
  IsIssgOrRcvgStorLocAuthChkActv : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Movement indicator'
  @sap.quickinfo : 'Movement Indicator'
  GoodsMovementRefDocType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Receipt Indicator'
  GoodsReceiptType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Consumption'
  @sap.quickinfo : 'Consumption posting'
  ConsumptionPosting : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stock Segment'
  StockSegment : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Season Year'
  ProductSeasonYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.text : 'SeasonDescription'
  @sap.label : 'Season'
  ProductSeason : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'CollectionDescription'
  @sap.label : 'Collection'
  @sap.quickinfo : 'Fashion Collection'
  ProductCollection : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ThemeDescription'
  @sap.label : 'Theme'
  @sap.quickinfo : 'Fashion Theme'
  ProductTheme : String(10);
  @sap.display.format : 'UpperCase'
  @sap.text : 'CrossPlantConfProductName'
  @sap.label : 'Generic Product'
  @sap.quickinfo : 'Cross-Plant Configurable Material'
  CrossPlantConfigurableProduct : String(40);
  @sap.text : 'ProductCharacteristic1Desc'
  @sap.label : 'Product Characteristic 1'
  @sap.quickinfo : 'Characteristic Value for Colors of Variants'
  ProductCharacteristic1 : String(18);
  @sap.text : 'ProductCharacteristic2Desc'
  @sap.label : 'Product Characteristic 2'
  @sap.quickinfo : 'Characteristic Value for Main Sizes of Variants'
  ProductCharacteristic2 : String(18);
  @sap.text : 'ProductCharacteristic3Desc'
  @sap.label : 'Product Characteristic 3'
  @sap.quickinfo : 'Characteristic Value for Second Size for Variants'
  ProductCharacteristic3 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.text : 'WarehouseName'
  @sap.label : 'Warehouse Number'
  @sap.quickinfo : 'Warehouse Number/Warehouse Complex'
  Warehouse : String(4);
  @sap.label : 'Description'
  WarehouseName : String(40);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Warehouse Document'
  @sap.quickinfo : 'Warehouse Document for Goods Movement'
  WhseGoodsMovementDocument : String(12);
  @sap.attribute.for : 'ProductCharacteristic1'
  @sap.label : 'Value description'
  @sap.quickinfo : 'Characteristic value description'
  ProductCharacteristic1Desc : String(70);
  @sap.attribute.for : 'ProductCharacteristic2'
  @sap.label : 'Value description'
  @sap.quickinfo : 'Characteristic value description'
  ProductCharacteristic2Desc : String(70);
  @sap.attribute.for : 'ProductCharacteristic3'
  @sap.label : 'Value description'
  @sap.quickinfo : 'Characteristic value description'
  ProductCharacteristic3Desc : String(70);
  @sap.attribute.for : 'ProductSeason'
  @sap.label : 'Description'
  @sap.quickinfo : 'Name of Season, Collection, or Theme'
  SeasonDescription : String(20);
  @sap.attribute.for : 'ProductCollection'
  @sap.label : 'Description'
  @sap.quickinfo : 'Name of Season, Collection, or Theme'
  CollectionDescription : String(20);
  @sap.attribute.for : 'ProductTheme'
  @sap.label : 'Description'
  @sap.quickinfo : 'Name of Season, Collection, or Theme'
  ThemeDescription : String(20);
  @sap.attribute.for : 'CrossPlantConfigurableProduct'
  @sap.label : 'Material Description'
  CrossPlantConfProductName : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Accounting Document'
@sap.value.list : 'true'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_AccountingDocumentStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal Year'
  key FiscalYear : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Journal Entry'
  key AccountingDocument : String(10) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Billing Document Basic'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_BillingDocumentBasic {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Document'
  key BillingDocument : String(10) not null;
  @sap.label : 'SD Document Category'
  SDDocumentCategory : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Category'
  BillingDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Type'
  BillingDocumentType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order-Rel. Bill.Type'
  @sap.quickinfo : 'Proposed billing type for an order-related billing document'
  ProposedBillingDocumentType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created by'
  @sap.quickinfo : 'Name of Person who Created the Object'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Created on'
  @sap.quickinfo : 'Date on which the record was created'
  CreationDate : Date;
  @sap.label : 'Time'
  @sap.quickinfo : 'Entry time'
  CreationTime : Time;
  @sap.display.format : 'Date'
  @sap.label : 'Changed On'
  @sap.quickinfo : 'Date of Last Change'
  LastChangeDate : Date;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Long Form (YYYYMMDDhhmmssmmmuuun)'
  LastChangeDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Logical system'
  LogicalSystem : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  SalesOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  DistributionChannel : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  Division : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Billing Date'
  BillingDocumentDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Canceled'
  @sap.quickinfo : 'Billing document is canceled'
  BillingDocumentIsCancelled : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Canceled Bill. Doc.'
  @sap.quickinfo : 'Number of canceled billing document'
  @sap.value.list : 'standard'
  CancelledBillingDocument : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Combination Criteria'
  @sap.quickinfo : 'Combination criteria in the billing document'
  BillingDocCombinationCriteria : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Man. Invoice Maint.'
  @sap.quickinfo : 'Manual Invoice Maintenance'
  ManualInvoiceMaintIsRelevant : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Number of Pages'
  @sap.quickinfo : 'Number of pages of invoice'
  NmbrOfPages : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Intrastat Relevance'
  @sap.quickinfo : 'Relevant for Intrastat Reporting'
  IsIntrastatReportingRelevant : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Intrastat Exclusion'
  @sap.quickinfo : 'Exclude from Intrastat Reporting'
  IsIntrastatReportingExcluded : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Draft Indicator'
  @sap.quickinfo : 'IsDraft Indicator'
  BillingDocumentIsTemporary : Boolean;
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Net Value'
  @sap.quickinfo : 'Net Value in Document Currency'
  TotalNetAmount : Decimal(16, 3);
  @sap.label : 'Document Currency'
  @sap.quickinfo : 'SD document currency'
  @sap.semantics : 'currency-code'
  TransactionCurrency : String(5);
  @sap.label : 'Statistics Currency'
  @sap.semantics : 'currency-code'
  StatisticsCurrency : String(5);
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Tax Amount'
  @sap.quickinfo : 'Tax amount in document currency'
  TotalTaxAmount : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Price Group'
  CustomerPriceGroup : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Price List Type'
  PriceListType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Depart. Country'
  @sap.quickinfo : 'Tax Departure Country'
  TaxDepartureCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'VAT Registration No.'
  @sap.quickinfo : 'VAT Registration Number'
  VATRegistration : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Origin Sales Tax No.'
  @sap.quickinfo : 'Origin of Sales Tax ID Number'
  VATRegistrationOrigin : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country Sls Tax No.'
  @sap.quickinfo : 'Country of Sales Tax ID Number'
  VATRegistrationCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'HierarchyTypePricing'
  @sap.quickinfo : 'Hierarchy type for pricing'
  HierarchyTypePricing : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'TaxClass1-Cust.'
  @sap.quickinfo : 'Tax Classification 1 for Customer'
  CustomerTaxClassification1 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'TaxClass2-Cust.'
  @sap.quickinfo : 'Tax Classification 2 for Customer'
  CustomerTaxClassification2 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'TaxClass3-Cust.'
  @sap.quickinfo : 'Tax classification 3 for customer'
  CustomerTaxClassification3 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'TaxClass4-Cust.'
  @sap.quickinfo : 'Tax Classification 4 Customer'
  CustomerTaxClassification4 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'TaxClass5-Cust.'
  @sap.quickinfo : 'Tax Classification 5 for Customer'
  CustomerTaxClassification5 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'TaxClass6-Cust.'
  @sap.quickinfo : 'Tax Classification 6 for Customer'
  CustomerTaxClassification6 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'TaxClass7-Cust.'
  @sap.quickinfo : 'Tax Classification 7 for Customer'
  CustomerTaxClassification7 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'TaxClass8-Cust.'
  @sap.quickinfo : 'Tax Classification 8 for Customer'
  CustomerTaxClassification8 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'TaxClass9-Cust.'
  @sap.quickinfo : 'Tax Classification 9 for Customer'
  CustomerTaxClassification9 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'EU Triangular Deal'
  @sap.quickinfo : 'Indicator: Triangular Deal Within the EU'
  IsEUTriangularDeal : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pricing Procedure'
  @sap.quickinfo : 'Pricing Procedure in Pricing'
  SDPricingProcedure : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shipping Conditions'
  ShippingCondition : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms Version'
  IncotermsVersion : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3);
  @sap.label : 'Incoterms (Part 2)'
  IncotermsTransferLocation : String(28);
  @sap.label : 'Incoterms Location 1'
  IncotermsLocation1 : String(70);
  @sap.label : 'Incoterms Location 2'
  IncotermsLocation2 : String(70);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payer'
  @sap.value.list : 'standard'
  PayerParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Contract Account'
  @sap.quickinfo : 'Contract Account Number'
  ContractAccount : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment terms'
  @sap.quickinfo : 'Terms of payment key'
  CustomerPaymentTerms : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Method'
  PaymentMethod : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment reference'
  @sap.quickinfo : 'Payment Reference'
  PaymentReference : String(30);
  @sap.display.format : 'Date'
  @sap.label : 'Fixed Value Date'
  FixedValueDate : Date;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Addit. Value Days'
  @sap.quickinfo : 'Additional Value Days'
  AdditionalValueDays : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mandate Reference'
  @sap.quickinfo : 'Unique Reference to Mandate for each Payee'
  SEPAMandate : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  @sap.value.list : 'standard'
  CompanyCode : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal Year'
  FiscalYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Number'
  @sap.quickinfo : 'Accounting Document Number'
  @sap.value.list : 'standard'
  AccountingDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Posting period'
  FiscalPeriod : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Acct Assmt Grp Cust.'
  @sap.quickinfo : 'Account Assignment Group for this customer'
  CustomerAccountAssignmentGroup : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Set Exchange Rate'
  @sap.quickinfo : 'ID:Exchange rate setting (no new rate determ.in bill.doc.)'
  AccountingExchangeRateIsSet : Boolean;
  @sap.label : 'Accounting Exchange Rate'
  @sap.quickinfo : 'Exchange rate for FI postings'
  AccountingExchangeRate : Decimal(9, 5);
  @sap.display.format : 'Date'
  @sap.label : 'Translation date'
  ExchangeRateDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Exchange Rate Type'
  ExchangeRateType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference'
  @sap.quickinfo : 'Reference Document Number'
  DocumentReferenceID : String(16);
  @sap.label : 'Assignment'
  @sap.quickinfo : 'Assignment number'
  AssignmentReference : String(18);
  @sap.display.format : 'UpperCase'
  @sap.text : 'DunningArea_Text'
  @sap.label : 'Dunning Area'
  @sap.value.list : 'standard'
  DunningArea : String(2);
  @sap.label : 'Dunning Area Desc.'
  @sap.quickinfo : 'Dunning Area Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DunningArea_Text : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning Block'
  DunningBlockingReason : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning Key'
  DunningKey : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Financial Doc. No.'
  @sap.quickinfo : 'Financial doc. processing: Internal financial doc. number'
  InternalFinancialDocument : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Relevant for Accrual'
  @sap.quickinfo : 'Is relevant for accrual'
  IsRelevantForAccrual : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoice List Type'
  InvoiceListType : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Billing Date'
  @sap.quickinfo : 'Billing date for the invoice list'
  InvoiceListBillingDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'BDR Source Document'
  @sap.quickinfo : 'Source document on which a billing document request is based'
  BillingDocRequestReference : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'BDR Source System'
  @sap.quickinfo : 'Logical system containing source document of BDR'
  BillgDocReqRefLgclSyst : String(10);
  @sap.label : 'BDR Src. Doc. Cat.'
  @sap.quickinfo : 'SD document category of BDR source document'
  BillgDocReqRefSDDocCategory : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sold-To Party'
  @sap.value.list : 'standard'
  SoldToParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trading Partner No.'
  @sap.quickinfo : 'Company ID of Trading Partner'
  PartnerCompany : String(6);
  @sap.label : 'Customer Reference'
  PurchaseOrderByCustomer : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Group'
  CustomerGroup : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dest. Country/Region'
  @sap.quickinfo : 'Destination Country/Region'
  Country : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'City code'
  @sap.quickinfo : 'City Code'
  CityCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales District'
  SalesDistrict : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'County Code'
  County : String(3);
  @sap.display.format : 'UpperCase'
  @sap.text : 'CreditControlArea_Text'
  @sap.label : 'Credit control area'
  @sap.value.list : 'standard'
  CreditControlArea : String(4);
  @sap.label : 'Description'
  @sap.quickinfo : 'Description of the credit control area'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreditControlArea_Text : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Agreement'
  @sap.quickinfo : 'Agreement (various conditions grouped together)'
  CustomerRebateAgreement : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Doc. Condition No.'
  @sap.quickinfo : 'Number of the Document Condition'
  PricingDocument : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Overall Status'
  @sap.quickinfo : 'Overall Processing Status (Header/All Items)'
  OverallSDProcessStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'SD Billing Status'
  OverallBillingStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Posting Status'
  @sap.quickinfo : 'Posting Status of Billing Document'
  AccountingPostingStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Posting Status'
  @sap.quickinfo : 'Status for Transfer to Accounting'
  AccountingTransferStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Issue'
  @sap.quickinfo : 'SD Billing Document Issue'
  BillingIssueType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Billing Document Request Status'
  OverallBillingDocReqStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoice List Status'
  @sap.quickinfo : 'Invoice list status of billing document'
  InvoiceListStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'All Items'
  @sap.quickinfo : 'Incompletion Status (All Items)'
  OvrlItmGeneralIncompletionSts : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pricing – All Items'
  @sap.quickinfo : 'Pricing Incompletion Status (All Items)'
  OverallPricingIncompletionSts : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ord. Rel. Billg Sts'
  @sap.quickinfo : 'Order-Related Billing Status (All Items)'
  OverallDocumentBillingStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Preliminary Billing Document Status'
  PrelimBillingDocumentStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Clearing Status'
  @sap.quickinfo : 'Clearing Status of Billing Document'
  InvoiceClearingStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.text : 'BillgProcDocApprovalStatus_Text'
  @sap.label : 'Approval Status'
  @sap.quickinfo : 'Document Approval Status'
  BillgProcDocApprovalStatus : String(1);
  @sap.label : 'Short Descript.'
  @sap.quickinfo : 'Short Text for Fixed Values'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillgProcDocApprovalStatus_Text : String(60);
  @sap.display.format : 'UpperCase'
  @sap.text : 'BillgProcDocApprovalReason_Text'
  @sap.label : 'Apprvl Req. Rsn ID'
  @sap.quickinfo : 'Approval Request Reason ID'
  BillgProcDocApprovalReason : String(4);
  @sap.label : 'Apprvl Req. Rsn'
  @sap.quickinfo : 'Approval Request Reason'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillgProcDocApprovalReason_Text : String(40);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Customer Project ID'
  ZZ1_CustomerProjectID_BDH : String(24);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Billing Document Basic'
@sap.value.list : 'true'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_BillingDocumentBasicStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Document'
  key BillingDocument : String(10) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Billing Document Request'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_BillingDocumentRequest {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill. Doc. Req.'
  @sap.quickinfo : 'Billing Document Request'
  key BillingDocumentRequest : String(10) not null;
  @sap.label : 'SD Document Category'
  SDDocumentCategory : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Type'
  BillingDocumentRequestType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Type'
  ProposedBillingDocumentType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created by'
  @sap.quickinfo : 'Name of Person who Created the Object'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Created on'
  @sap.quickinfo : 'Date on which the record was created'
  CreationDate : Date;
  @sap.label : 'Time'
  @sap.quickinfo : 'Entry time'
  CreationTime : Time;
  @sap.display.format : 'Date'
  @sap.label : 'Changed On'
  @sap.quickinfo : 'Date of Last Change'
  LastChangeDate : Date;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Long Form (YYYYMMDDhhmmssmmmuuun)'
  LastChangeDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Logical system'
  LogicalSystem : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  SalesOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  DistributionChannel : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  Division : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Billing Date'
  BillingDocumentDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Combination Criteria'
  @sap.quickinfo : 'Combination criteria in the billing document'
  BillgDocReqCombinationCriteria : String(40);
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Net Value'
  @sap.quickinfo : 'Net Value in Document Currency'
  TotalNetAmount : Decimal(16, 3);
  @sap.label : 'Document Currency'
  @sap.quickinfo : 'SD document currency'
  @sap.semantics : 'currency-code'
  TransactionCurrency : String(5);
  @sap.label : 'Statistics Currency'
  @sap.semantics : 'currency-code'
  StatisticsCurrency : String(5);
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Tax Amount'
  @sap.quickinfo : 'Tax amount in document currency'
  TotalTaxAmount : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Price Group'
  CustomerPriceGroup : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Price List Type'
  PriceListType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Depart. Country'
  @sap.quickinfo : 'Tax Departure Country'
  TaxDepartureCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'VAT Registration No.'
  @sap.quickinfo : 'VAT Registration Number'
  VATRegistration : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Origin Sales Tax No.'
  @sap.quickinfo : 'Origin of Sales Tax ID Number'
  VATRegistrationOrigin : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country Sls Tax No.'
  @sap.quickinfo : 'Country of Sales Tax ID Number'
  VATRegistrationCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'TaxClass1-Cust.'
  @sap.quickinfo : 'Tax Classification 1 for Customer'
  CustomerTaxClassification1 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'TaxClass2-Cust.'
  @sap.quickinfo : 'Tax Classification 2 for Customer'
  CustomerTaxClassification2 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'TaxClass3-Cust.'
  @sap.quickinfo : 'Tax classification 3 for customer'
  CustomerTaxClassification3 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'TaxClass4-Cust.'
  @sap.quickinfo : 'Tax Classification 4 Customer'
  CustomerTaxClassification4 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'TaxClass5-Cust.'
  @sap.quickinfo : 'Tax Classification 5 for Customer'
  CustomerTaxClassification5 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'TaxClass6-Cust.'
  @sap.quickinfo : 'Tax Classification 6 for Customer'
  CustomerTaxClassification6 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'TaxClass7-Cust.'
  @sap.quickinfo : 'Tax Classification 7 for Customer'
  CustomerTaxClassification7 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'TaxClass8-Cust.'
  @sap.quickinfo : 'Tax Classification 8 for Customer'
  CustomerTaxClassification8 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'TaxClass9-Cust.'
  @sap.quickinfo : 'Tax Classification 9 for Customer'
  CustomerTaxClassification9 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pricing Procedure'
  @sap.quickinfo : 'Pricing Procedure in Pricing'
  SDPricingProcedure : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms Version'
  IncotermsVersion : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3);
  @sap.label : 'Incoterms (Part 2)'
  IncotermsTransferLocation : String(28);
  @sap.label : 'Incoterms Location 1'
  IncotermsLocation1 : String(70);
  @sap.label : 'Incoterms Location 2'
  IncotermsLocation2 : String(70);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payer'
  @sap.value.list : 'standard'
  PayerParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Contract Account'
  @sap.quickinfo : 'Contract Account Number'
  ContractAccount : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment terms'
  @sap.quickinfo : 'Terms of payment key'
  CustomerPaymentTerms : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Method'
  PaymentMethod : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment reference'
  @sap.quickinfo : 'Payment Reference'
  PaymentReference : String(30);
  @sap.display.format : 'Date'
  @sap.label : 'Fixed Value Date'
  FixedValueDate : Date;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Addit. Value Days'
  @sap.quickinfo : 'Additional Value Days'
  AdditionalValueDays : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mandate Reference'
  @sap.quickinfo : 'Unique Reference to Mandate for each Payee'
  SEPAMandate : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  @sap.value.list : 'standard'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Acct Assmt Grp Cust.'
  @sap.quickinfo : 'Account Assignment Group for this customer'
  CustomerAccountAssignmentGroup : String(2);
  @sap.label : 'Accounting Exchange Rate'
  @sap.quickinfo : 'Exchange rate for FI postings'
  AccountingExchangeRate : Decimal(9, 5);
  @sap.display.format : 'Date'
  @sap.label : 'Translation date'
  ExchangeRateDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Exchange Rate Type'
  ExchangeRateType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference'
  @sap.quickinfo : 'Reference Document Number'
  DocumentReferenceID : String(16);
  @sap.label : 'Assignment'
  @sap.quickinfo : 'Assignment number'
  AssignmentReference : String(18);
  @sap.display.format : 'UpperCase'
  @sap.text : 'DunningArea_Text'
  @sap.label : 'Dunning Area'
  @sap.value.list : 'standard'
  DunningArea : String(2);
  @sap.label : 'Dunning Area Desc.'
  @sap.quickinfo : 'Dunning Area Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DunningArea_Text : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning Block'
  DunningBlockingReason : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dunning Key'
  DunningKey : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Financial Doc. No.'
  @sap.quickinfo : 'Financial doc. processing: Internal financial doc. number'
  InternalFinancialDocument : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Relevant for Accrual'
  @sap.quickinfo : 'Is relevant for accrual'
  IsRelevantForAccrual : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'BDR Source Document'
  @sap.quickinfo : 'Source document on which a billing document request is based'
  ReferenceDocument : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'BDR Source System'
  @sap.quickinfo : 'Logical system containing source document of BDR'
  ReferenceDocumentLogicalSystem : String(10);
  @sap.label : 'BDR Src. Doc. Cat.'
  @sap.quickinfo : 'SD document category of BDR source document'
  ReferenceDocSDDocCategory : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sold-To Party'
  @sap.value.list : 'standard'
  SoldToParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trading Partner No.'
  @sap.quickinfo : 'Company ID of Trading Partner'
  PartnerCompany : String(6);
  @sap.label : 'Customer Reference'
  PurchaseOrderByCustomer : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Group'
  CustomerGroup : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dest. Country/Region'
  @sap.quickinfo : 'Destination Country/Region'
  Country : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'City code'
  @sap.quickinfo : 'City Code'
  CityCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales District'
  SalesDistrict : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'County Code'
  County : String(3);
  @sap.display.format : 'UpperCase'
  @sap.text : 'CreditControlArea_Text'
  @sap.label : 'Credit control area'
  @sap.value.list : 'standard'
  CreditControlArea : String(4);
  @sap.label : 'Description'
  @sap.quickinfo : 'Description of the credit control area'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreditControlArea_Text : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Agreement'
  @sap.quickinfo : 'Agreement (various conditions grouped together)'
  CustomerRebateAgreement : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Doc. Condition No.'
  @sap.quickinfo : 'Number of the Document Condition'
  PricingDocument : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'SD Billing Status'
  OverallBillingStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Billing Document Request Status'
  OverallBillingDocReqStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Issue'
  @sap.quickinfo : 'SD Billing Document Issue'
  BillingIssueType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pricing – All Items'
  @sap.quickinfo : 'Pricing Incompletion Status (All Items)'
  OverallPricingIncompletionSts : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Company Code'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_CompanyCode {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CompanyCodeName'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.label : 'Company Name'
  @sap.quickinfo : 'Name of Company Code or Company'
  CompanyCodeName : String(25);
  @sap.label : 'City'
  CityName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country Key'
  Country : String(3);
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.label : 'Language Key'
  Language : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chart of Accounts'
  ChartOfAccounts : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fiscal Year Variant'
  FiscalYearVariant : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company'
  Company : String(6);
  @sap.display.format : 'UpperCase'
  @sap.text : 'CreditControlArea_Text'
  @sap.label : 'Credit control area'
  @sap.value.list : 'standard'
  CreditControlArea : String(4);
  @sap.label : 'Description'
  @sap.quickinfo : 'Description of the credit control area'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreditControlArea_Text : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country Chart/Accts'
  @sap.quickinfo : 'Chart of Accounts According to Country Legislation'
  CountryChartOfAccounts : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'FM Area'
  @sap.quickinfo : 'Financial Management Area'
  FinancialManagementArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address'
  AddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Taxes on Sals/Purch.'
  @sap.quickinfo : 'Sales/Purchases Tax Group'
  TaxableEntity : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'VAT Registration No.'
  @sap.quickinfo : 'VAT Registration Number'
  VATRegistration : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extended WTax Active'
  @sap.quickinfo : 'Indicator: Extended Withholding Tax Active'
  ExtendedWhldgTaxIsActive : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.text : 'ControllingArea_Text'
  @sap.label : 'Controlling Area'
  @sap.value.list : 'standard'
  ControllingArea : String(4);
  @sap.label : 'Controlling Area Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ControllingArea_Text : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Field status variant'
  @sap.quickinfo : 'Field Status Variant'
  FieldStatusVariant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Output Tax Code'
  @sap.quickinfo : 'Output Tax Code for Non-Taxable Transactions'
  NonTaxableTransactionTaxCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Determ.with Doc.Date'
  @sap.quickinfo : 'Indicator: Document Date As the Basis for Tax Determination'
  DocDateIsUsedForTaxDetn : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Date'
  @sap.quickinfo : 'Tax Reporting Date Active in Documents'
  TaxRptgDateIsActive : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Net Discount Base'
  @sap.quickinfo : 'Indicator: Discount base amount is the net value'
  CashDiscountBaseAmtIsNetAmt : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Company Code'
@sap.value.list : 'true'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_CompanyCodeStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CompanyCodeName'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.label : 'Company Name'
  @sap.quickinfo : 'Name of Company Code or Company'
  CompanyCodeName : String(25);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Controlling Area'
@sap.value.list : 'true'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_ControllingAreaStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ControllingAreaName'
  @sap.label : 'Controlling Area'
  key ControllingArea : String(4) not null;
  @sap.label : 'Controlling Area Name'
  ControllingAreaName : String(25);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Sales Tax search help'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_CountrySalesTax {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'CompanyVATRegistration'
  @sap.label : 'Country Key'
  key VATRegistrationCountry : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'VAT Registration No.'
  @sap.quickinfo : 'VAT Registration Number'
  key CompanyVATRegistration : String(20) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Credit Control Area'
@sap.value.list : 'true'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_CreditControlAreaStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CreditControlArea_Text'
  @sap.label : 'Credit Control Area'
  key CreditControlArea : String(4) not null;
  @sap.label : 'Description'
  @sap.quickinfo : 'Description of the credit control area'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreditControlArea_Text : String(35);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Currency'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_Currency {
  @sap.text : 'Currency_Text'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  key Currency : String(5) not null;
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Currency_Text : String(40);
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Decimal Places'
  @sap.quickinfo : 'Number of decimal places'
  Decimals : Integer;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO Code'
  @sap.quickinfo : 'ISO Currency Code'
  CurrencyISOCode : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Alternative Key'
  AlternativeCurrencyKey : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Primary'
  @sap.quickinfo : 'Primary SAP Currency Code for ISO Code'
  IsPrimaryCurrencyForISOCrcy : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Customer'
@sap.value.list : 'true'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_Customer_VH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CustomerName'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Customer : String(10) not null;
  @sap.label : 'Name 1'
  OrganizationBPName1 : String(35);
  @sap.label : 'Name 2'
  OrganizationBPName2 : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country'
  @sap.quickinfo : 'Country Key'
  Country : String(3);
  @sap.label : 'City'
  CityName : String(35);
  @sap.label : 'Street'
  @sap.quickinfo : 'Street and House Number'
  StreetName : String(35);
  @sap.label : 'Customer Name'
  @sap.quickinfo : 'Name of Customer'
  CustomerName : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account group'
  @sap.quickinfo : 'Customer Account Group'
  CustomerAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purpose Complete Flag'
  @sap.quickinfo : 'Business Purpose Completed Flag'
  IsBusinessPurposeCompleted : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Delivery Document'
@sap.value.list : 'true'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_DeliveryDocumentStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery'
  key DeliveryDocument : String(10) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.addressable : 'false'
@sap.content.version : '1'
@sap.label : 'Draft Administration Data'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_DraftAdministrativeData {
  @sap.label : 'Draft (Technical ID)'
  key DraftUUID : UUID not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Draft Entity ID'
  key DraftEntityType : String(30) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Draft Created On'
  CreationDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.text : 'CreatedByUserDescription'
  @sap.label : 'Draft Created By'
  CreatedByUser : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Draft Last Changed On'
  LastChangeDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.text : 'LastChangedByUserDescription'
  @sap.label : 'Draft Last Changed By'
  LastChangedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Draft Access Type'
  DraftAccessType : String(1);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Draft In Process Since'
  ProcessingStartDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.text : 'InProcessByUserDescription'
  @sap.label : 'Draft In Process By'
  InProcessByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Draft Is Kept By User'
  DraftIsKeptByUser : Boolean;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Draft Locked Since'
  EnqueueStartDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Draft Created By Me'
  DraftIsCreatedByMe : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Draft Last Changed By Me'
  DraftIsLastChangedByMe : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Draft In Process By Me'
  DraftIsProcessedByMe : Boolean;
  @sap.label : 'Draft Created By (Description)'
  CreatedByUserDescription : String(80);
  @sap.label : 'Draft Last Changed By (Description)'
  LastChangedByUserDescription : String(80);
  @sap.label : 'Draft In Process By (Description)'
  InProcessByUserDescription : String(80);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Dunning Area'
@sap.value.list : 'true'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_DunningAreaStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'DunningArea_Text'
  @sap.label : 'Dunning Area'
  key DunningArea : String(2) not null;
  @sap.label : 'Dunning Area Desc.'
  @sap.quickinfo : 'Dunning Area Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DunningArea_Text : String(50);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Goods Movements'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_GoodsMovementDocument {
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Document Year'
  key MaterialDocumentYear : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Document'
  @sap.quickinfo : 'Number of Material Document'
  key MaterialDocument : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Document Item'
  key MaterialDocumentItem : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Storage location'
  StorageLocation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  Material : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Batch'
  @sap.quickinfo : 'Batch Number'
  Batch : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Special Stock Type'
  InventorySpecialStockType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stock Type'
  @sap.quickinfo : 'Stock Type of Goods Movement (Stock Identifier)'
  InventoryStockType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Additional Supplier for Special Stock'
  StockOwner : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Special Stock Valuation Indicator'
  @sap.quickinfo : 'Separate Valuation Type'
  InventorySpecialStockValnType : String(1);
  @sap.label : 'Company Code Currency'
  @sap.semantics : 'currency-code'
  CompanyCodeCurrency : String(5);
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  MaterialBaseUnit : String(3);
  @sap.label : 'Unit of Entry'
  @sap.quickinfo : 'Unit of entry'
  @sap.semantics : 'unit-of-measure'
  EntryUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Has Reversal Movement Type'
  IsReversalMovementType : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trans./Event Type'
  @sap.quickinfo : 'Transaction/Event Type'
  InventoryTransactionType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Consumption'
  @sap.quickinfo : 'Consumption posting'
  ConsumptionPosting : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Receipt Indicator'
  GoodsReceiptType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rec/Iss Plant'
  @sap.quickinfo : 'Receiving/Issuing Plant'
  IssuingOrReceivingPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Receiving stor. loc.'
  @sap.quickinfo : 'Receiving/issuing storage location'
  IssuingOrReceivingStorageLoc : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transfer Material'
  IssgOrRcvgMaterial : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transfer Batch'
  IssgOrRcvgBatch : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transfer Special Stock Type'
  IssgOrRcvgSpclStockInd : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transfer Stock Type'
  IssuingOrReceivingStockType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Val. Type Tfr Batch'
  @sap.quickinfo : 'Valuation Type of Transfer Batch'
  IssuingOrReceivingValType : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Resource'
  ResourceID : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transfer Resource'
  IssgOrRcvgResourceID : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is Item Cancelled'
  @sap.quickinfo : 'Item has been Cancelled'
  GoodsMovementIsCancelled : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reversed Mat Doc'
  @sap.quickinfo : 'Reversed Material Document'
  ReversedMaterialDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reversed Doc Item'
  @sap.quickinfo : 'Reversed Material Document Item'
  ReversedMaterialDocumentItem : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reversed Doc Year'
  @sap.quickinfo : 'Reversed Material Document Year'
  ReversedMaterialDocumentYear : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Document Date'
  @sap.quickinfo : 'Document Date in Document'
  DocumentDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Type'
  AccountingDocumentType : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Entry Date'
  @sap.quickinfo : 'Day On Which Accounting Document Was Entered'
  CreationDate : Date;
  @sap.label : 'Time of Entry'
  CreationTime : Time;
  @sap.display.format : 'Date'
  @sap.label : 'Posting Date'
  @sap.quickinfo : 'Posting Date in the Document'
  PostingDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fiscal Year Variant'
  FiscalYearVariant : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal Year'
  FiscalYear : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal Year & Period'
  @sap.quickinfo : 'Period Year'
  FiscalYearPeriod : String(7);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Year & Day'
  @sap.quickinfo : 'Year-Day-Combination'
  YearDay : String(7);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Year & Week'
  @sap.quickinfo : 'Year-Week-Combination'
  YearWeek : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Year & Month'
  @sap.quickinfo : 'Year-Month-Combination'
  YearMonth : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Year & Quarter'
  @sap.quickinfo : 'Year-Quarter-Combination'
  YearQuarter : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Quarter (1 - 4)'
  CalendarQuarter : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Month (1 - 12)'
  CalendarMonth : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Calendar Week'
  @sap.quickinfo : 'Calendar Week (1 - 53)'
  CalendarWeek : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Day of Year (1 - 366)'
  CalendarDay : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Day of Week (1 - 7)'
  @sap.quickinfo : 'Day of Week'
  WeekDay : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.quickinfo : 'Sales Order Number'
  SalesOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sales Order Item'
  SalesOrderItem : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sales Order Schedule'
  SalesOrderScheduleLine : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase order'
  @sap.quickinfo : 'Purchase order number'
  PurchaseOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Purchase Order Item'
  @sap.quickinfo : 'Item Number of Purchasing Document'
  PurchaseOrderItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Network'
  @sap.quickinfo : 'Network Number for Account Assignment'
  ProjectNetwork : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery'
  DeliveryDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Delivery Item'
  DeliveryDocumentItem : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element)'
  WBSElementInternalID : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  ManufacturingOrder : String(12);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Order Item'
  ManufacturingOrderItem : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales order'
  @sap.quickinfo : 'Sales order number of valuated sales order stock'
  SpecialStockIdfgSalesOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sales order item'
  @sap.quickinfo : 'Sales Order Item of Valuated Sales Order Stock'
  SpecialStockIdfgSalesOrderItem : String(6);
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Valuated Sales Order Stock WBS Element'
  SpecialStockIdfgWBSElement : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference'
  @sap.quickinfo : 'Reference Document Number'
  ReferenceDocument : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'GR/GI Slip No.'
  @sap.quickinfo : 'Goods Receipt/Issue Slip Number'
  GoodsIssueOrReceiptSlipNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Movement type'
  @sap.quickinfo : 'Movement type (inventory management)'
  GoodsMovementType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Type'
  InventoryValuationType : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'User Name'
  CreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Vendor''s account number'
  Supplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Account number of customer'
  Customer : String(10);
  @sap.label : 'Document Header Text'
  MaterialDocumentHeaderText : String(25);
  @sap.label : 'Text'
  @sap.quickinfo : 'Item Text'
  MaterialDocumentItemText : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery Completed'
  @sap.quickinfo : '&quot;Delivery Completed&quot; Indicator'
  IsCompletelyDelivered : Boolean;
  @sap.label : 'Goods Recipient'
  GoodsRecipientName : String(12);
  @sap.label : 'Unloading Point'
  UnloadingPointName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Doc. Type'
  @sap.quickinfo : 'Goods movement ref doc type'
  GoodsMovementRefDocType : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reason for Movement'
  GoodsMovementReasonCode : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'SLED/BBD'
  @sap.quickinfo : 'Shelf Life Expiration or Best-Before Date'
  ShelfLifeExpirationDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Date of Manufacture'
  ManufactureDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'SerialNo. auto.'
  @sap.quickinfo : 'Create serial number automatically'
  SerialNumbersAreCreatedAutomly : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Print Version'
  @sap.quickinfo : 'Version for Printing GR/GI Slip'
  VersionForPrintingSlip : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Print Active'
  @sap.quickinfo : 'Print via Output Control'
  ManualPrintIsTriggered : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account Assignment Category'
  AccountAssignmentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Center'
  CostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlling Area'
  ControllingArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cost Object'
  CostObject : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'G/L Account'
  @sap.quickinfo : 'G/L Account Number'
  GLAccount : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Functional Area'
  FunctionalArea : String(16);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Profitability Segment'
  ProfitabilitySegment : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  ProfitCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Asset'
  @sap.quickinfo : 'Main Asset Number'
  MasterFixedAsset : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sub-number'
  @sap.quickinfo : 'Asset Subnumber'
  FixedAsset : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Funds Center'
  FundsCenter : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fund'
  Fund : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Commitment item'
  @sap.quickinfo : 'Commitment Item'
  CommitmentItem : String(24);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grant'
  GrantID : String(20);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reservation'
  @sap.quickinfo : 'Number of reservation/dependent requirements'
  Reservation : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reservation Item'
  @sap.quickinfo : 'Item Number of Reservation / Dependent Requirements'
  ReservationItem : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Res Final Issue'
  @sap.quickinfo : 'Final Issue for Reservation'
  ReservationIsFinallyIssued : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Debit/Credit ind'
  @sap.quickinfo : 'Debit/Credit Indicator'
  DebitCreditCode : String(1);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.label : 'Amt.in Loc.Cur.'
  @sap.quickinfo : 'Amount in Local Currency'
  TotalGoodsMvtAmtInCCCrcy : Decimal(14, 3);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.label : 'Amt LC w/ Stk Qty'
  @sap.quickinfo : 'Amount in Local Currency with Sign of Stock Quantity'
  GoodsMovementStkAmtInCCCrcy : Decimal(14, 3);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.label : 'Amt LC w/ Cons Qty'
  @sap.quickinfo : 'Amount in Local Currency with Sign of Consumption Quantity'
  GoodsMvtCnsmpnAmtInCCCrcy : Decimal(14, 3);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.label : 'Ext. Amount in LC'
  @sap.quickinfo : 'Externally Entered Posting Amount in Local Currency'
  GdsMvtExtAmtInCoCodeCrcy : Decimal(14, 3);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.label : 'Sales Value inc. VAT'
  @sap.quickinfo : 'Value at Sales Prices Including Value-Added Tax'
  SlsPrcAmtInclVATInCoCodeCrcy : Decimal(14, 3);
  @sap.unit : 'CompanyCodeCurrency'
  @sap.label : 'Sales Value'
  @sap.quickinfo : 'Externally Entered Sales Value in Local Currency'
  EnteredSlsAmtInCoCodeCrcy : Decimal(14, 3);
  @sap.unit : 'MaterialBaseUnit'
  @sap.label : 'Stock Quantity'
  MatlStkChangeQtyInBaseUnit : Decimal(31, 14);
  @sap.unit : 'MaterialBaseUnit'
  @sap.label : 'Consumption Quantity'
  MatlCnsmpnQtyInMatlBaseUnit : Decimal(31, 14);
  @sap.unit : 'MaterialBaseUnit'
  @sap.label : 'Quantity'
  QuantityInBaseUnit : Decimal(13, 3);
  @sap.unit : 'EntryUnit'
  @sap.label : 'Qty in unit of entry'
  @sap.quickinfo : 'Quantity in unit of entry'
  QuantityInEntryUnit : Decimal(13, 3);
  @sap.unit : 'P35A58F06BE64F2BA9FD9A03FE3728F17'
  @sap.label : 'Qty in order unit'
  @sap.quickinfo : 'Goods receipt quantity in order unit'
  GoodsReceiptQtyInOrderUnit : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stock Change Category'
  StockChangeCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is Effctv Goods Mvt'
  @sap.quickinfo : 'Is Effective Goods Movement'
  IsEffectiveGoodsMovement : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is Consumption Movement'
  IsConsumptionMovement : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is Cross Plant Transfer'
  IsCrossPlantTransfer : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is Storage Location Transfer'
  @sap.quickinfo : 'Is Storage Location Change'
  IsStorageLocChangeByTransf : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is Material Change'
  IsMaterialChangeByTransf : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is Batch Change'
  @sap.quickinfo : 'Batch Change by Transfer'
  IsBatchChangeByTransf : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is Special Stock Type Change'
  IsSpclStkTypeChangeByTransf : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Is Stock Type Change'
  IsStockTypeChangeByTransf : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stock Segment'
  StockSegment : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rec. Stock Segment'
  @sap.quickinfo : 'Receiving/Issuing Stock Segment'
  IssgOrRcvgStockSegment : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Incoterms Classification'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_IncotermsClassification {
  @sap.display.format : 'UpperCase'
  @sap.text : 'IncotermsClassification_Text'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  key IncotermsClassification : String(3) not null;
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IncotermsClassification_Text : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Location Mandatory'
  @sap.quickinfo : 'Location is mandatory'
  LocationIsMandatory : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Incoterms Version'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_IncotermsVersion {
  @sap.display.format : 'UpperCase'
  @sap.text : 'IncotermsVersion_Text'
  @sap.label : 'Incoterms Version'
  key IncotermsVersion : String(4) not null;
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IncotermsVersion_Text : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'In-House Repair'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_InHouseRepair {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trans. Cat.'
  @sap.quickinfo : 'Business Trans. Cat.'
  key CustMgmtObjectType : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'In-House Repair'
  @sap.quickinfo : 'In-House Repair ID'
  key InHouseRepair : String(10) not null;
  @sap.label : 'Object GUID'
  @sap.quickinfo : 'GUID of a CRM Order Object'
  InHouseRepairUUID : UUID;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction Type'
  @sap.quickinfo : 'Business Transaction Type'
  InhRepairType : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Created On'
  PostingDate : Date;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Created On'
  @sap.quickinfo : 'Created At'
  CreationDateTime : DateTime;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created By'
  @sap.quickinfo : 'User that Created the Transaction'
  CreatedByUser : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Changed On'
  @sap.quickinfo : 'Changed At'
  LastChangeDateTime : DateTime;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Changed By'
  @sap.quickinfo : 'Transaction Last Changed By'
  LastChangedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'In-House Repair Status'
  InhRepairStatus : String(4);
  @sap.label : 'Error Status'
  InhRepairHasError : Boolean;
  @sap.label : 'Open'
  @sap.quickinfo : 'Status &quot;Open&quot;'
  InhRepairIsOpen : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sold-To Party'
  SoldToParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Contact Person'
  ContactPerson : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ship-To Party'
  ShipToParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Employee Responsible'
  ResponsibleEmployee : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  SalesOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Org. ID'
  @sap.quickinfo : 'Sales Organization ID'
  SalesOrganizationOrgUnitID : String(14);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  DistributionChannel : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  Division : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales office'
  SalesOffice : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Office'
  SalesOfficeOrgUnitID : String(14);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales group'
  SalesGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Group'
  SalesGroupOrgUnitID : String(14);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Org. Unit (Sales)'
  @sap.quickinfo : 'Organizational Unit (Sales)'
  ResponsibleSalesOrganization : String(14);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Material'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_Material {
  @sap.display.format : 'UpperCase'
  @sap.text : 'Material_Text'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  key Material : String(40) not null;
  @sap.label : 'Material Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Material_Text : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material type'
  MaterialType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Group'
  MaterialGroup : String(9);
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  MaterialBaseUnit : String(3);
  @sap.unit : 'MaterialWeightUnit'
  @sap.label : 'Gross weight'
  MaterialGrossWeight : Decimal(13, 3);
  @sap.unit : 'MaterialWeightUnit'
  @sap.label : 'Net weight'
  MaterialNetWeight : Decimal(13, 3);
  @sap.label : 'Weight unit'
  @sap.quickinfo : 'Weight Unit'
  @sap.semantics : 'unit-of-measure'
  MaterialWeightUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Manufacturer'
  @sap.quickinfo : 'Manufacturer number'
  MaterialManufacturerNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mfr Part Number'
  @sap.quickinfo : 'Manufacturer Part Number'
  MaterialManufacturerPartNumber : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Batch Management'
  @sap.quickinfo : 'Batch Management Requirement Indicator'
  IsBatchManagementRequired : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cross-plant CM'
  @sap.quickinfo : 'Cross-Plant Configurable Material'
  CrossPlantConfigurableProduct : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Category'
  ProductCategory : String(2);
  @sap.label : 'Color'
  @sap.quickinfo : 'Characteristic Value for Colors of Variants'
  ProductCharacteristic1 : String(18);
  @sap.label : 'Main Size'
  @sap.quickinfo : 'Characteristic Value for Main Sizes of Variants'
  ProductCharacteristic2 : String(18);
  @sap.label : 'Second Size'
  @sap.quickinfo : 'Characteristic Value for Second Size for Variants'
  ProductCharacteristic3 : String(18);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. Char. Number'
  @sap.quickinfo : 'Internal Charactieristic Number for Color Characteristics'
  ProdCharc1InternalNumber : String(30);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. Char. Number'
  @sap.quickinfo : 'Internal Char. Number for Characteristics for Main Sizes'
  ProdCharc2InternalNumber : String(30);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. Char. Number'
  @sap.quickinfo : 'Internal Char. Number for Characteristics for Second Sizes'
  ProdCharc3InternalNumber : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Material Document Header'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_MaterialDocumentHeader {
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Document Year'
  key MaterialDocumentYear : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Document'
  @sap.quickinfo : 'Number of Material Document'
  key MaterialDocument : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Document Date'
  @sap.quickinfo : 'Document Date in Document'
  DocumentDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Posting Date'
  @sap.quickinfo : 'Posting Date in the Document'
  PostingDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Type'
  AccountingDocumentType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trans./Event Type'
  @sap.quickinfo : 'Transaction/Event Type'
  InventoryTransactionType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'User Name'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Entry Date'
  @sap.quickinfo : 'Day On Which Accounting Document Was Entered'
  CreationDate : Date;
  @sap.label : 'Time of Entry'
  CreationTime : Time;
  @sap.label : 'Document Header Text'
  MaterialDocumentHeaderText : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery'
  @sap.value.list : 'standard'
  DeliveryDocument : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference'
  @sap.quickinfo : 'Reference Document Number'
  ReferenceDocument : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bill of Lading'
  @sap.quickinfo : 'Number of Bill of Lading at Time of Goods Receipt'
  BillOfLading : String(16);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Material Group'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_MaterialGroup {
  @sap.display.format : 'UpperCase'
  @sap.text : 'MaterialGroup_Text'
  @sap.label : 'Product Group'
  key MaterialGroup : String(9) not null;
  @sap.label : 'Product Group Desc.'
  @sap.quickinfo : 'Product Group Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaterialGroup_Text : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Purchase Contract'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_PurchaseContract {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Contract'
  @sap.quickinfo : 'Purchasing Contract Header'
  key PurchaseContract : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Doc. Type'
  @sap.quickinfo : 'Purchasing Document Type'
  PurchaseContractType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Doc. Category'
  @sap.quickinfo : 'Purchasing Document Category'
  PurchasingDocumentCategory : String(1);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Last Changed'
  @sap.quickinfo : 'Change Time Stamp'
  LastChangeDateTime : Timestamp;
  @sap.display.format : 'Date'
  @sap.label : 'Created on'
  @sap.quickinfo : 'Date on which the record was created'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  Supplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. organization'
  @sap.quickinfo : 'Purchasing organization'
  PurchasingOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Group'
  PurchasingGroup : String(3);
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  DocumentCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3);
  @sap.label : 'Incoterms (Part 2)'
  IncotermsTransferLocation : String(28);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Terms'
  @sap.quickinfo : 'Terms of Payment Key'
  PaymentTerms : String(4);
  @sap.label : 'Days 1'
  @sap.quickinfo : 'Cash discount days 1'
  CashDiscount1Days : Decimal(3, 0);
  @sap.label : 'Days 2'
  @sap.quickinfo : 'Cash discount days 2'
  CashDiscount2Days : Decimal(3, 0);
  @sap.label : 'Days Net'
  @sap.quickinfo : 'Net Payment Terms Period'
  NetPaymentDays : Decimal(3, 0);
  @sap.label : 'Disc.percent 1'
  @sap.quickinfo : 'Cash discount percentage 1'
  CashDiscount1Percent : Decimal(5, 3);
  @sap.label : 'Disc.percent 2'
  @sap.quickinfo : 'Cash Discount Percentage 2'
  CashDiscount2Percent : Decimal(5, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Target Value'
  @sap.quickinfo : 'Target Value for Header Area per Distribution'
  PurchaseContractTargetAmount : Decimal(16, 3);
  @sap.display.format : 'Date'
  @sap.label : 'Validity Start'
  @sap.quickinfo : 'Start of Validity Period'
  ValidityStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Validity End'
  @sap.quickinfo : 'End of Validity Period'
  ValidityEndDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Release indicator'
  @sap.quickinfo : 'Release Indicator: Purchasing Document'
  ReleaseCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created by'
  @sap.quickinfo : 'Name of Person who Created the Object'
  CreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deletion indicator'
  @sap.quickinfo : 'Deletion indicator in purchasing document'
  PurchasingDocumentDeletionCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Goods Supplier'
  SupplyingSupplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoicing Party'
  @sap.quickinfo : 'Different Invoicing Party'
  InvoicingParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fixed Exchange Rate'
  @sap.quickinfo : 'Indicator for Fixed Exchange Rate'
  ExchangeRateIsFixed : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Quotation Date'
  @sap.quickinfo : 'Quotation Submission Date'
  QuotationSubmissionDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Quotation'
  @sap.quickinfo : 'Quotation Number'
  SupplierQuotation : String(10);
  @sap.label : 'Your Reference'
  CorrespncExternalReference : String(12);
  @sap.label : 'Our Reference'
  CorrespncInternalReference : String(12);
  @sap.label : 'Salesperson'
  @sap.quickinfo : 'Responsible Salesperson at Supplier''s Office'
  SupplierRespSalesPersonName : String(30);
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Supplier''s Telephone Number'
  SupplierPhoneNumber : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms Version'
  IncotermsVersion : String(4);
  @sap.label : 'Incoterms Location 1'
  IncotermsLocation1 : String(70);
  @sap.label : 'Incoterms Location 2'
  IncotermsLocation2 : String(70);
  @sap.label : 'Purch. Doc. Name'
  @sap.quickinfo : 'Name of Purchasing Document'
  PurchasingDocumentName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Status of Purchasing Document'
  PurchasingDocumentOrigin : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subject to release'
  @sap.quickinfo : 'Release Not Yet Completely Effected'
  ReleaseIsNotCompleted : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Proc. state'
  @sap.quickinfo : 'Purchasing document processing state'
  PurchasingProcessingStatus : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  SupplierAddressID : String(10);
  @sap.label : 'Business Purp Compl'
  @sap.quickinfo : 'Business Purpose Completed'
  IsEndOfPurposeBlocked : Boolean;
  @sap.label : 'Comment'
  ZZ1_Comment_PDH : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Purchase Order'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_PurchaseOrder {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Order'
  @sap.quickinfo : 'Purchase Order Number'
  key PurchaseOrder : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Order Type'
  PurchaseOrderType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Control indicator'
  @sap.quickinfo : 'Control indicator for purchasing document type'
  PurchaseOrderSubtype : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Status of Purchasing Document'
  PurchasingDocumentOrigin : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document aged'
  @sap.quickinfo : 'Document is aged'
  PurchasingDocumentIsAged : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created by'
  @sap.quickinfo : 'Name of Person who Created the Object'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Created on'
  @sap.quickinfo : 'Date on which the record was created'
  CreationDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Purchase Order Date'
  PurchaseOrderDate : Date;
  @sap.label : 'Language Key'
  Language : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deletion indicator'
  @sap.quickinfo : 'Deletion indicator in purchasing document'
  PurchasingDocumentDeletionCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subject to release'
  @sap.quickinfo : 'Release Not Yet Completely Effected'
  ReleaseIsNotCompleted : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incomplete'
  @sap.quickinfo : 'Purchase order not yet complete'
  PurchasingCompletenessStatus : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Proc. state'
  @sap.quickinfo : 'Purchasing document processing state'
  PurchasingProcessingStatus : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Release State'
  PurgReleaseSequenceStatus : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Release indicator'
  @sap.quickinfo : 'Release Indicator: Purchasing Document'
  ReleaseCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Release Strategy'
  PurchasingReleaseStrategy : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. organization'
  @sap.quickinfo : 'Purchasing organization'
  PurchasingOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Group'
  PurchasingGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  Supplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  ManualSupplierAddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  SupplierAddressID : String(10);
  @sap.label : 'Salesperson'
  @sap.quickinfo : 'Responsible Salesperson at Supplier''s Office'
  SupplierRespSalesPersonName : String(30);
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Supplier''s Telephone Number'
  SupplierPhoneNumber : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Goods Supplier'
  SupplyingSupplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplying Plant'
  @sap.quickinfo : 'Supplying (issuing) plant in case of stock transport order'
  SupplyingPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoicing Party'
  @sap.quickinfo : 'Different Invoicing Party'
  InvoicingParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  Customer : String(10);
  @sap.label : 'Your Reference'
  CorrespncExternalReference : String(12);
  @sap.label : 'Our Reference'
  CorrespncInternalReference : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Outline agreement'
  @sap.quickinfo : 'Number of principal purchase agreement'
  PurchaseContract : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bid invitation'
  @sap.quickinfo : 'Bid invitation number'
  RequestForQuotation : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Quotation'
  @sap.quickinfo : 'Quotation Number'
  SupplierQuotationExternalID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Terms'
  @sap.quickinfo : 'Terms of Payment Key'
  PaymentTerms : String(4);
  @sap.label : 'Days 1'
  @sap.quickinfo : 'Cash discount days 1'
  CashDiscount1Days : Decimal(3, 0);
  @sap.label : 'Days 2'
  @sap.quickinfo : 'Cash discount days 2'
  CashDiscount2Days : Decimal(3, 0);
  @sap.label : 'Days Net'
  @sap.quickinfo : 'Net Payment Terms Period'
  NetPaymentDays : Decimal(3, 0);
  @sap.label : 'Disc.percent 1'
  @sap.quickinfo : 'Cash discount percentage 1'
  CashDiscount1Percent : Decimal(5, 3);
  @sap.label : 'Disc.percent 2'
  @sap.quickinfo : 'Cash Discount Percentage 2'
  CashDiscount2Percent : Decimal(5, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Down Payment'
  @sap.quickinfo : 'Down Payment Indicator'
  DownPaymentType : String(4);
  @sap.label : 'Down Payment %'
  @sap.quickinfo : 'Down Payment Percentage'
  DownPaymentPercentageOfTotAmt : Decimal(5, 2);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Down Payment Amount'
  @sap.quickinfo : 'Down Payment Amount in Document Currency'
  DownPaymentAmount : Decimal(12, 3);
  @sap.display.format : 'Date'
  @sap.label : 'Due Date for DP'
  @sap.quickinfo : 'Due Date for Down Payment'
  DownPaymentDueDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3);
  @sap.label : 'Incoterms (Part 2)'
  IncotermsTransferLocation : String(28);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms Version'
  IncotermsVersion : String(4);
  @sap.label : 'Incoterms Location 1'
  IncotermsLocation1 : String(70);
  @sap.label : 'Incoterms Location 2'
  IncotermsLocation2 : String(70);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Intrastat Relevance'
  @sap.quickinfo : 'Relevant for Intrastat Reporting'
  IsIntrastatReportingRelevant : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Intrastat Exclusion'
  @sap.quickinfo : 'Exclude from Intrastat Reporting'
  IsIntrastatReportingExcluded : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Doc. Condition No.'
  @sap.quickinfo : 'Number of the Document Condition'
  PurchasingDocumentCondition : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Procedure'
  @sap.quickinfo : 'Procedure (Pricing, Output Control, Acct. Det., Costing,...)'
  PricingProcedure : String(6);
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  DocumentCurrency : String(5);
  @sap.display.format : 'Date'
  @sap.label : 'Validity Per. Start'
  @sap.quickinfo : 'Start of Validity Period'
  ValidityStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Validity Period End'
  @sap.quickinfo : 'End of Validity Period'
  ValidityEndDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fixed Exchange Rate'
  @sap.quickinfo : 'Indicator for Fixed Exchange Rate'
  ExchangeRateIsFixed : Boolean;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Last Changed'
  @sap.quickinfo : 'Change Time Stamp'
  LastChangeDateTime : Timestamp;
  @sap.label : 'Business Purp Compl'
  @sap.quickinfo : 'Business Purpose Completed'
  IsEndOfPurposeBlocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reporting Cntry'
  @sap.quickinfo : 'Country for Tax Return'
  TaxReturnCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country Sls Tax No.'
  @sap.quickinfo : 'Country of Sales Tax ID Number'
  VATRegistrationCountry : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reason for Canc.'
  @sap.quickinfo : 'Reason for Cancellation'
  PurgReasonForDocCancellation : String(2);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Tot. val. rel.'
  @sap.quickinfo : 'Total value at time of release'
  PurgReleaseTimeTotalAmount : Decimal(16, 3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Purchase Order Item'
@sap.value.list : 'true'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_PurchaseOrderItemStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  key PurchaseOrder : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'PO Item'
  @sap.quickinfo : 'Item Number of Purchase Order'
  key PurchaseOrderItem : String(5) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Purchase Order Status Value Help'
@sap.value.list : 'true'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_PurchaseOrderStatusValueHelp {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PurchasingDocumentStatusName'
  @sap.label : 'Order Status'
  @sap.quickinfo : 'Purchasing Document Status'
  key PurchasingDocumentStatus : String(2) not null;
  @sap.label : 'Purchasing Document Status'
  @sap.quickinfo : 'Short Text for Fixed Values'
  PurchasingDocumentStatusName : String(60);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Purchase Order'
@sap.value.list : 'true'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_PurchaseOrderStdVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Order'
  @sap.quickinfo : 'Purchase Order Number'
  key PurchaseOrder : String(10) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Purchase Requisition Items'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_PurchaseReqnItem {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Requisition'
  @sap.quickinfo : 'Purchase requisition number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key PurchaseRequisition : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Purchase Requisition Items'
  @sap.quickinfo : 'Item number of purchase requisition'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key PurchaseRequisitionItem : String(5) not null;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  AccountAssignmentCategory_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  BaseUnit_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Batch_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  BudgetPeriod_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CommitmentItem_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CostCenter_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DeliveryDate_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  EarmarkedFundsDocument_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  EarmarkedFundsDocumentItem_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ExpectedOverallLimitAmount_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  FixedSupplier_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  FunctionalArea_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Fund_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  FundedProgram_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  FundsCenter_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  GLAccount_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  GoodsReceiptIsExpected_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  GoodsReceiptIsNonValuated_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  GrantID_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  InvoiceIsExpected_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  IsClosed_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  IsPurReqnBlocked_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ItemNetAmount_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Material_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MaterialGoodsReceiptDuration_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MaterialGroup_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MaterialOrderUnit_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MaterialPlannedDeliveryDurn_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MaterialRevisionLevel_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MinRemainingShelfLife_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MRPController_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MultipleAcctAssgmtDistribution_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OverallLimitAmount_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PartialInvoiceDistribution_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PerformancePeriodEndDate_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PerformancePeriodStartDate_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Plant_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ProcessingStatus_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchaseOrderPriceType_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchaseRequisitionIsFixed_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchaseRequisitionItemText_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchaseRequisitionPrice_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchaseRequisitionReleaseDate_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchaseRequisitionType_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchasingDocumentItemCategory_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchasingGroup_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchasingOrganization_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurReqCreationDate_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurReqnCatalog_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurReqnCatalogItem_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurReqnItemCurrency_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurReqnPriceQuantity_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurReqnSSPRequestor_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  RequestedQuantity_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  RequirementTracking_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  RequisitionerName_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ServicePerformer_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  StorageLocation_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Supplier_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  SupplierMaterialNumber_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  WBSElement_fc : Integer;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase order'
  @sap.quickinfo : 'Purchase order number'
  PurchasingDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Purchase order item'
  @sap.quickinfo : 'Purchase order item number'
  PurchasingDocumentItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Requisition Processing State'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurReqnReleaseStatus : String(2);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'PurchaseRequisitionType_fc'
  @sap.label : 'Document Type'
  @sap.quickinfo : 'Purchase Requisition Document Type'
  PurchaseRequisitionType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'PurchasingDocumentItemCategory_fc'
  @sap.label : 'Item Category'
  @sap.quickinfo : 'Item category in purchasing document'
  PurchasingDocumentItemCategory : String(1);
  @sap.field.control : 'PurchaseRequisitionItemText_fc'
  @sap.label : 'Item Description'
  @sap.quickinfo : 'Short Text'
  PurchaseRequisitionItemText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'AccountAssignmentCategory_fc'
  @sap.label : 'Account Assignment Category'
  AccountAssignmentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'Material_fc'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  Material : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'MPN material'
  @sap.quickinfo : 'Material number corresponding to manufacturer part number'
  ManufacturerMaterial : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mfr part profile'
  ManufacturerPartProfile : String(4);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'MaterialGroup_fc'
  @sap.label : 'Material Group'
  MaterialGroup : String(9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Doc. Category'
  @sap.quickinfo : 'Purchasing Document Category'
  PurchasingDocumentCategory : String(1);
  @sap.field.control : 'RequestedQuantity_fc'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Quantity'
  @sap.quickinfo : 'Purchase requisition quantity'
  RequestedQuantity : Decimal(13, 3);
  @sap.field.control : 'BaseUnit_fc'
  @sap.label : 'Unit of Measure'
  @sap.quickinfo : 'Purchase requisition unit of measure'
  @sap.semantics : 'unit-of-measure'
  BaseUnit : String(3);
  @sap.field.control : 'PurchaseRequisitionPrice_fc'
  @sap.unit : 'PurReqnItemCurrency'
  @sap.label : 'Valuation Price'
  @sap.quickinfo : 'Price in Purchase Requisition'
  PurchaseRequisitionPrice : Decimal(12, 3);
  @sap.field.control : 'PurReqnPriceQuantity_fc'
  @sap.unit : 'BaseUnit'
  @sap.label : 'Price Unit'
  @sap.quickinfo : 'Price unit'
  PurReqnPriceQuantity : Decimal(5, 0);
  @sap.field.control : 'MaterialGoodsReceiptDuration_fc'
  @sap.label : 'GR Processing Time (in Days)'
  @sap.quickinfo : 'Goods receipt processing time in days'
  MaterialGoodsReceiptDuration : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Release indicator'
  @sap.quickinfo : 'Release Indicator'
  ReleaseCode : String(1);
  @sap.display.format : 'Date'
  @sap.field.control : 'PurchaseRequisitionReleaseDate_fc'
  @sap.label : 'Release Date'
  @sap.quickinfo : 'Purchase Requisition Release Date'
  PurchaseRequisitionReleaseDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'PurchasingOrganization_fc'
  @sap.label : 'Purchasing Organization'
  @sap.quickinfo : 'Purchasing organization'
  PurchasingOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'PurchasingGroup_fc'
  @sap.label : 'Purchasing Group'
  PurchasingGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'Plant_fc'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Assigned'
  @sap.quickinfo : 'Assigned Source of Supply'
  SourceOfSupplyIsAssigned : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplying Plant'
  @sap.quickinfo : 'Supplying (issuing) plant in case of stock transport order'
  SupplyingPlant : String(4);
  @sap.unit : 'BaseUnit'
  @sap.label : 'Ordered Quantity'
  @sap.quickinfo : 'Quantity ordered against this purchase requisition'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OrderedQuantity : Decimal(13, 3);
  @sap.display.format : 'Date'
  @sap.field.control : 'DeliveryDate_fc'
  @sap.label : 'Delivery Date'
  @sap.quickinfo : 'Item delivery date'
  DeliveryDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Changed On'
  @sap.quickinfo : 'Requisition (request) date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'ProcessingStatus_fc'
  @sap.label : 'Requisition Processing Status'
  @sap.quickinfo : 'Processing status of purchase requisition'
  ProcessingStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing info rec.'
  @sap.quickinfo : 'Number of purchasing info record'
  PurchasingInfoRecord : String(10);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'Supplier_fc'
  @sap.label : 'Desired Vendor'
  Supplier : String(10);
  @sap.label : 'Deletion indicator'
  @sap.quickinfo : 'Deletion indicator in purchasing document'
  IsDeleted : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'FixedSupplier_fc'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Fixed vendor'
  FixedSupplier : String(10);
  @sap.field.control : 'RequisitionerName_fc'
  @sap.label : 'Requisitioner'
  @sap.quickinfo : 'Name of requisitioner/requester'
  RequisitionerName : String(12);
  @sap.field.control : 'PurReqnSSPRequestor_fc'
  @sap.label : 'Requestor'
  PurReqnSSPRequestor : String(60);
  @sap.display.format : 'UpperCase'
  @sap.text : 'UserDescription'
  @sap.label : 'Created by'
  @sap.quickinfo : 'Name of Person who Created the Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12);
  @sap.label : 'Created By'
  @sap.quickinfo : 'User Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  UserDescription : String(80);
  @sap.display.format : 'Date'
  @sap.field.control : 'PurReqCreationDate_fc'
  @sap.label : 'Requisition date'
  @sap.quickinfo : 'Requisition (request) date'
  PurReqCreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address'
  @sap.quickinfo : 'Manual address number in purchasing document item'
  ManualDeliveryAddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address'
  @sap.quickinfo : 'Number of delivery address'
  ItemDeliveryAddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.quickinfo : 'Supplier to be Supplied/Who is to Receive Delivery'
  PurReqnReceivingSupplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  PurReqnReceivingCustomer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address'
  DeliveryAddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Type'
  @sap.quickinfo : 'Purchase Requisition Address Type'
  AddressType : String(1);
  @sap.field.control : 'PurReqnItemCurrency_fc'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  PurReqnItemCurrency : String(5);
  @sap.field.control : 'MaterialPlannedDeliveryDurn_fc'
  @sap.label : 'Planned Delivery Time (in Days)'
  @sap.quickinfo : 'Planned Delivery Time in Days'
  MaterialPlannedDeliveryDurn : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deliv. date category'
  @sap.quickinfo : 'Category of delivery date'
  DelivDateCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'MultipleAcctAssgmtDistribution_fc'
  @sap.label : 'Distrib. Indicator'
  @sap.quickinfo : 'Distribution Indicator for Multiple Account Assignment'
  MultipleAcctAssgmtDistribution : String(1);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'PartialInvoiceDistribution_fc'
  @sap.label : 'Partial invoice'
  @sap.quickinfo : 'Partial invoice indicator'
  PartialInvoiceDistribution : String(1);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'StorageLocation_fc'
  @sap.label : 'Storage location'
  StorageLocation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Outline agreement'
  @sap.quickinfo : 'Number of principal purchase agreement'
  PurchaseContract : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Princ.agreement item'
  @sap.quickinfo : 'Item number of principal purchase agreement'
  PurchaseContractItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Consumption'
  @sap.quickinfo : 'Consumption posting'
  ConsumptionPosting : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Creation Indicator'
  @sap.quickinfo : 'Creation indicator (purchase requisition/schedule lines)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurReqnOrigin : String(1);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'IsPurReqnBlocked_fc'
  @sap.label : 'Blocking Indicator'
  @sap.quickinfo : 'Purchase Requisition Blocked'
  IsPurReqnBlocked : String(1);
  @sap.label : 'Language Key'
  Language : String(2);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'IsClosed_fc'
  @sap.label : 'Purchase Requisition Item is Closed'
  @sap.quickinfo : 'Purchase requisition closed'
  IsClosed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subject to release'
  @sap.quickinfo : 'Release Not Yet Completely Effected'
  ReleaseIsNotCompleted : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'ServicePerformer_fc'
  @sap.label : 'Service Performer'
  ServicePerformer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Type Group'
  ProductType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Release State'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchaseRequisitionStatus : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Release strategy'
  @sap.quickinfo : 'Release strategy in the purchase requisition'
  ReleaseStrategy : String(2);
  @sap.display.format : 'Date'
  @sap.field.control : 'PerformancePeriodStartDate_fc'
  @sap.label : 'Start Date'
  @sap.quickinfo : 'Start Date for Period of Performance'
  PerformancePeriodStartDate : Date;
  @sap.display.format : 'Date'
  @sap.field.control : 'PerformancePeriodEndDate_fc'
  @sap.label : 'End Date'
  @sap.quickinfo : 'End Date for Period of Performance'
  PerformancePeriodEndDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'SupplierMaterialNumber_fc'
  @sap.label : 'Supplier Material Number'
  @sap.quickinfo : 'Material Number Used by Supplier'
  SupplierMaterialNumber : String(35);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'Batch_fc'
  @sap.label : 'Batch'
  @sap.quickinfo : 'Batch Number'
  Batch : String(10);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'MaterialRevisionLevel_fc'
  @sap.label : 'Revision Level'
  MaterialRevisionLevel : String(2);
  @sap.field.control : 'MinRemainingShelfLife_fc'
  @sap.label : 'Remaining Shelf Life'
  @sap.quickinfo : 'Minimum Remaining Shelf Life'
  MinRemainingShelfLife : Decimal(4, 0);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'GoodsReceiptIsExpected_fc'
  @sap.label : 'Goods Receipt is Expected'
  @sap.quickinfo : 'Goods Receipt Indicator'
  GoodsReceiptIsExpected : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'InvoiceIsExpected_fc'
  @sap.label : 'Invoice Receipt is Expected'
  @sap.quickinfo : 'Invoice receipt indicator'
  InvoiceIsExpected : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'GoodsReceiptIsNonValuated_fc'
  @sap.label : 'Non-valuated Goods Receipt is Expected'
  @sap.quickinfo : 'Goods Receipt, Non-Valuated'
  GoodsReceiptIsNonValuated : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'RequirementTracking_fc'
  @sap.label : 'Requirement Tracking Number'
  RequirementTracking : String(10);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'MRPController_fc'
  @sap.label : 'MRP Controller'
  MRPController : String(3);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'PurchaseRequisitionIsFixed_fc'
  @sap.label : 'Purchase Requisition Item is Fixed'
  @sap.quickinfo : 'Purchase requisition is fixed'
  PurchaseRequisitionIsFixed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Control indicator'
  @sap.quickinfo : 'Control indicator for purchasing document type'
  PurchasingDocumentSubtype : String(1);
  @sap.field.control : 'PurReqnCatalog_fc'
  @sap.label : 'Web Service ID'
  @sap.quickinfo : 'Technical Key of a Web Service (for Example - a Catalog)'
  PurReqnCatalog : String(20);
  @sap.field.control : 'PurReqnCatalogItem_fc'
  @sap.label : 'Catalog Item'
  @sap.quickinfo : 'Catalog Item Id'
  PurReqnCatalogItem : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incomplete'
  @sap.quickinfo : 'Purchase Requisition not yet Complete'
  IsPurReqnCmplt : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incompleteness'
  @sap.quickinfo : 'Category of Incompleteness'
  PurReqnCmpltnsCat : String(1);
  @sap.label : 'Catalog Item Key'
  PurReqnCrossCatalogItem : Integer;
  @sap.field.control : 'ExpectedOverallLimitAmount_fc'
  @sap.unit : 'PurReqnItemCurrency'
  @sap.label : 'Expected Value'
  @sap.quickinfo : 'Expected Value of Overall Limit'
  ExpectedOverallLimitAmount : Decimal(14, 3);
  @sap.field.control : 'OverallLimitAmount_fc'
  @sap.unit : 'PurReqnItemCurrency'
  @sap.label : 'Overall Limit'
  OverallLimitAmount : Decimal(14, 3);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Long Form (YYYYMMDDhhmmssmmmuuun)'
  LastChangeDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Requisition Item'
  @sap.quickinfo : 'Key to identify purchase requisition item'
  PurchaseReqnItemUniqueID : String(15);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'PurchaseOrderPriceType_fc'
  @sap.label : 'Purchase order price'
  @sap.quickinfo : 'Use Requisition Price in Purchase Order'
  PurchaseOrderPriceType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Overall req. rel.'
  @sap.quickinfo : 'Overall release of purchase requisitions'
  IsPurReqnOvrlRel : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ext Prcsng. Status'
  @sap.quickinfo : 'External Processing Status'
  ExternalApprovalStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'CommitmentItem_fc'
  @sap.label : 'Commitment item'
  @sap.quickinfo : 'Commitment Item'
  CommitmentItem : String(24);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'FundsCenter_fc'
  @sap.label : 'Funds Center'
  FundsCenter : String(16);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'Fund_fc'
  @sap.label : 'Fund'
  Fund : String(10);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'GrantID_fc'
  @sap.label : 'Grant'
  GrantID : String(20);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'FunctionalArea_fc'
  @sap.label : 'Functional Area'
  FunctionalArea : String(16);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'EarmarkedFundsDocument_fc'
  @sap.label : 'Earmarked Funds'
  @sap.quickinfo : 'Document Number for Earmarked Funds'
  EarmarkedFundsDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.field.control : 'EarmarkedFundsDocumentItem_fc'
  @sap.label : 'Document item'
  @sap.quickinfo : 'Earmarked Funds: Document Item'
  EarmarkedFundsDocumentItem : String(3);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'BudgetPeriod_fc'
  @sap.label : 'Budget Period'
  BudgetPeriod : String(10);
  @sap.field.control : 'MaterialOrderUnit_fc'
  @sap.label : 'Order Unit'
  @sap.quickinfo : 'Purchase Order Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  MaterialOrderUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'CostCenter_fc'
  @sap.label : 'Cost Center'
  CostCenter : String(10);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'GLAccount_fc'
  @sap.label : 'G/L Account'
  @sap.quickinfo : 'G/L Account Number'
  GLAccount : String(10);
  @sap.display.format : 'NonNegative'
  @sap.field.control : 'WBSElement_fc'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element)'
  WBSElement : String(24);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'FundedProgram_fc'
  @sap.label : 'Funded Program'
  FundedProgram : String(24);
  @sap.field.control : 'ItemNetAmount_fc'
  @sap.unit : 'PurReqnItemCurrency'
  @sap.label : 'Total Value'
  ItemNetAmount : Decimal(16, 3);
  @odata.Type : 'Edm.Byte'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchaseReqnStatusPriority : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'INT1'
  @sap.quickinfo : '1 Byte Unsigned Integer'
  IsAdvncdPurchaseReqnItemType : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'INT1'
  @sap.quickinfo : '1 Byte Unsigned Integer'
  IsAdvncdPurchaseReqnOrigin : Integer;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Purchase Requisition Header'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_Purchaserequisition {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Requisition'
  @sap.quickinfo : 'Purchase requisition number'
  key PurchaseRequisition : String(10) not null;
  @sap.label : 'Requestor'
  PurReqnSSPRequestor : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Author'
  @sap.quickinfo : 'Author of Requisition'
  PurReqnSSPAuthor : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Creation indicator'
  @sap.quickinfo : 'Creation indicator (purchase requisition/schedule lines)'
  PurReqnOrigin : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Type'
  @sap.quickinfo : 'Purchase Requisition Document Type'
  PurchaseRequisitionType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PR in Expert Mode'
  @sap.quickinfo : 'PR Created in Expert Mode'
  PurReqnIsCreatedInExpertMode : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Shop On Behalf Ind.'
  @sap.quickinfo : 'Shop on behalf indicator'
  IsOnBehalfCart : String(1);
  @sap.label : 'Requestor'
  PurReqnRequestor : String(60);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  LastChangeDateTime : Timestamp;
  @sap.display.format : 'Date'
  CreationDate : Date;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Purchasing Document'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_PurchasingDocument {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  key PurchasingDocument : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Doc. Category'
  @sap.quickinfo : 'Purchasing Document Category'
  PurchasingDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Doc. Type'
  @sap.quickinfo : 'Purchasing Document Type'
  PurchasingDocumentType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Control indicator'
  @sap.quickinfo : 'Control indicator for purchasing document type'
  PurchasingDocumentSubtype : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deletion indicator'
  @sap.quickinfo : 'Deletion indicator in purchasing document'
  PurchasingDocumentDeletionCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document aged'
  @sap.quickinfo : 'Document is aged'
  PurchasingDocumentIsAged : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number Interval'
  ItemNumberInterval : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Subitem Interval'
  @sap.quickinfo : 'Item Number Interval for Subitems'
  ItemNumberIntervalForSubItems : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Status of Purchasing Document'
  PurchasingDocumentOrigin : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subject to release'
  @sap.quickinfo : 'Release Not Yet Completely Effected'
  ReleaseIsNotCompleted : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Release indicator'
  @sap.quickinfo : 'Release Indicator: Purchasing Document'
  ReleaseCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Release Strategy'
  PurchasingReleaseStrategy : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Release State'
  PurgReleaseSequenceStatus : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reporting Cntry'
  @sap.quickinfo : 'Country for Tax Return'
  TaxReturnCountry : String(3);
  @sap.display.format : 'Date'
  @sap.label : 'Created on'
  @sap.quickinfo : 'Date on which the record was created'
  CreationDate : Date;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Last Changed'
  @sap.quickinfo : 'Change Time Stamp'
  LastChangeDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created by'
  @sap.quickinfo : 'Name of Person who Created the Object'
  CreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  Supplier : String(10);
  @sap.label : 'Salesperson'
  @sap.quickinfo : 'Responsible Salesperson at Supplier''s Office'
  SupplierRespSalesPersonName : String(30);
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Supplier''s Telephone Number'
  SupplierPhoneNumber : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  SupplierAddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  ManualSupplierAddressID : String(10);
  @sap.label : 'Your Reference'
  CorrespncExternalReference : String(12);
  @sap.label : 'Our Reference'
  CorrespncInternalReference : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. organization'
  @sap.quickinfo : 'Purchasing organization'
  PurchasingOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Group'
  PurchasingGroup : String(3);
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  DocumentCurrency : String(5);
  @sap.label : 'Exchange Rate'
  ExchangeRate : Decimal(9, 5);
  @sap.display.format : 'Date'
  @sap.label : 'Document Date'
  @sap.quickinfo : 'Purchasing Document Date'
  PurchasingDocumentOrderDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Goods Supplier'
  SupplyingSupplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplying Plant'
  @sap.quickinfo : 'Supplying (issuing) plant in case of stock transport order'
  SupplyingPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoicing Party'
  @sap.quickinfo : 'Different Invoicing Party'
  InvoicingParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  Customer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Outline agreement'
  @sap.quickinfo : 'Number of principal purchase agreement'
  PurchaseContract : String(10);
  @sap.label : 'Language Key'
  Language : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reason for Canc.'
  @sap.quickinfo : 'Reason for Cancellation'
  PurgReasonForDocCancellation : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incomplete'
  @sap.quickinfo : 'Purchase order not yet complete'
  PurchasingCompletenessStatus : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3);
  @sap.label : 'Incoterms (Part 2)'
  IncotermsTransferLocation : String(28);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Terms'
  @sap.quickinfo : 'Terms of Payment Key'
  PaymentTerms : String(4);
  @sap.label : 'Days 1'
  @sap.quickinfo : 'Cash discount days 1'
  CashDiscount1Days : Decimal(3, 0);
  @sap.label : 'Days 2'
  @sap.quickinfo : 'Cash discount days 2'
  CashDiscount2Days : Decimal(3, 0);
  @sap.label : 'Days Net'
  @sap.quickinfo : 'Net Payment Terms Period'
  NetPaymentDays : Decimal(3, 0);
  @sap.label : 'Disc.percent 1'
  @sap.quickinfo : 'Cash discount percentage 1'
  CashDiscount1Percent : Decimal(5, 3);
  @sap.label : 'Disc.percent 2'
  @sap.quickinfo : 'Cash Discount Percentage 2'
  CashDiscount2Percent : Decimal(5, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Procedure'
  @sap.quickinfo : 'Procedure (Pricing, Output Control, Acct. Det., Costing,...)'
  PricingProcedure : String(6);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Target Value'
  @sap.quickinfo : 'Target Value for Header Area per Distribution'
  TargetAmount : Decimal(16, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Type'
  @sap.quickinfo : 'Distribution Type for Purchasing Document'
  PurgDocumentDistributionType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Doc. Condition No.'
  @sap.quickinfo : 'Number of the Document Condition'
  PurchasingDocumentCondition : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Validity Per. Start'
  @sap.quickinfo : 'Start of Validity Period'
  ValidityStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Validity Period End'
  @sap.quickinfo : 'End of Validity Period'
  ValidityEndDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rel. documentation'
  @sap.quickinfo : 'Indicator for scheduling agreement release documentation'
  ScheduleAgreementHasReleaseDoc : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Quotation Deadline'
  @sap.quickinfo : 'Deadline for Submission of Bid/Quotation'
  QuotationLatestSubmissionDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Binding Period'
  @sap.quickinfo : 'Binding Period for Quotation'
  BindingPeriodValidityEndDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Quotation Date'
  @sap.quickinfo : 'Quotation Submission Date'
  QuotationSubmissionDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Quotation'
  @sap.quickinfo : 'Quotation Number'
  SupplierQuotationExternalID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bid invitation'
  @sap.quickinfo : 'Bid invitation number'
  RequestForQuotation : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fixed Exchange Rate'
  @sap.quickinfo : 'Indicator for Fixed Exchange Rate'
  ExchangeRateIsFixed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms Version'
  IncotermsVersion : String(4);
  @sap.label : 'Incoterms Location 1'
  IncotermsLocation1 : String(70);
  @sap.label : 'Incoterms Location 2'
  IncotermsLocation2 : String(70);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Proc. state'
  @sap.quickinfo : 'Purchasing document processing state'
  PurchasingProcessingStatus : String(2);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Tot. val. rel.'
  @sap.quickinfo : 'Total value at time of release'
  PurgReleaseTimeTotalAmount : Decimal(16, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Down Payment'
  @sap.quickinfo : 'Down Payment Indicator'
  DownPaymentType : String(4);
  @sap.label : 'Down Payment %'
  @sap.quickinfo : 'Down Payment Percentage'
  DownPaymentPercentageOfTotAmt : Decimal(5, 2);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Down Payment Amount'
  @sap.quickinfo : 'Down Payment Amount in Document Currency'
  DownPaymentAmount : Decimal(12, 3);
  @sap.display.format : 'Date'
  @sap.label : 'Due Date for DP'
  @sap.quickinfo : 'Due Date for Down Payment'
  DownPaymentDueDate : Date;
  @sap.label : 'Purch. Doc. Name'
  @sap.quickinfo : 'Name of Purchasing Document'
  PurchasingDocumentName : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'Quotation Start Date'
  @sap.quickinfo : 'The date as of which Quotations can be submitted'
  QuotationEarliestSubmsnDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Application Close'
  @sap.quickinfo : 'Closing Date for Applications'
  LatestRegistrationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Follow-On Document Category'
  @sap.quickinfo : 'Follow-On Purchasing Document Category'
  FollowOnDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Follow-On Document Type'
  @sap.quickinfo : 'Follow-On Purchasing Document Type'
  FollowOnDocumentType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'VAT Registration No.'
  @sap.quickinfo : 'VAT Registration Number'
  VATRegistration : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country Sls Tax No.'
  @sap.quickinfo : 'Country of Sales Tax ID Number'
  VATRegistrationCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Intrastat Relevance'
  @sap.quickinfo : 'Relevant for Intrastat Reporting'
  IsIntrastatReportingRelevant : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Intrastat Exclusion'
  @sap.quickinfo : 'Exclude from Intrastat Reporting'
  IsIntrastatReportingExcluded : Boolean;
  @sap.label : 'Business Purp Compl'
  @sap.quickinfo : 'Business Purpose Completed'
  IsEndOfPurposeBlocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parent Document ID'
  @sap.quickinfo : 'ID of the Parent Document'
  PurchasingParentDocument : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grouping ID'
  @sap.quickinfo : 'Grouping ID for Company Codes'
  ProcmtHubCompanyCodeGroupingID : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Purchasing Group'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_PurchasingGroup {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PurchasingGroupName'
  @sap.label : 'Purchasing Group'
  key PurchasingGroup : String(3) not null;
  @sap.label : 'Purchasing Grp. Name'
  @sap.quickinfo : 'Purchasing Group Name'
  PurchasingGroupName : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tel.no. purch. group'
  @sap.quickinfo : 'Telephone number of purchasing group (buyer group)'
  PurchasingGroupPhoneNumber : String(12);
  @sap.label : 'Fax number'
  @sap.quickinfo : 'Fax number of purchasing (buyer) group'
  FaxNumber : String(31);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Telephone no.: dialling code+number'
  PhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extension'
  @sap.quickinfo : 'Telephone no.: Extension'
  PhoneNumberExtension : String(10);
  @sap.label : 'E-Mail Address'
  EmailAddress : String(241);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Request For Quotation'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_RequestForQuotation {
  @sap.display.format : 'UpperCase'
  @sap.label : 'RFQ'
  @sap.quickinfo : 'Request for Quotation'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key RequestForQuotation : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Doc. Category'
  @sap.quickinfo : 'Purchasing Document Category'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchasingDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'RFQ Type'
  @sap.quickinfo : 'RFQ Document Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchasingDocumentType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created by'
  @sap.quickinfo : 'Name of Person who Created the Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Created on'
  @sap.quickinfo : 'Date on which the record was created'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Last Changed'
  @sap.quickinfo : 'Change Time Stamp'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeDateTime : Timestamp;
  @sap.label : 'Language Key'
  Language : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Organization'
  PurchasingOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Group'
  PurchasingGroup : String(3);
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  DocumentCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3);
  @sap.label : 'Incoterms (Part 2)'
  IncotermsTransferLocation : String(28);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms Version'
  IncotermsVersion : String(4);
  @sap.label : 'Incoterms Location 1'
  IncotermsLocation1 : String(70);
  @sap.label : 'Incoterms Location 2'
  IncotermsLocation2 : String(70);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Terms'
  @sap.quickinfo : 'Terms of Payment Key'
  PaymentTerms : String(4);
  @sap.label : 'Days 1'
  @sap.quickinfo : 'Cash discount days 1'
  CashDiscount1Days : Decimal(3, 0);
  @sap.label : 'Days 2'
  @sap.quickinfo : 'Cash discount days 2'
  CashDiscount2Days : Decimal(3, 0);
  @sap.label : 'Disc.percent 1'
  @sap.quickinfo : 'Cash discount percentage 1'
  CashDiscount1Percent : Decimal(5, 3);
  @sap.label : 'Disc.percent 2'
  @sap.quickinfo : 'Cash Discount Percentage 2'
  CashDiscount2Percent : Decimal(5, 3);
  @sap.label : 'Days Net'
  @sap.quickinfo : 'Net Payment Terms Period'
  NetPaymentDays : Decimal(3, 0);
  @sap.display.format : 'Date'
  @sap.label : 'Validity Per. Start'
  @sap.quickinfo : 'Start of Validity Period'
  ValidityStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Validity Period End'
  @sap.quickinfo : 'End of Validity Period'
  ValidityEndDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Publishing Date'
  @sap.quickinfo : 'RFQ Publishing Date'
  RFQPublishingDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Quotation Deadline'
  @sap.quickinfo : 'Deadline for Submission of Bid/Quotation'
  QuotationLatestSubmissionDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Binding Period'
  @sap.quickinfo : 'Binding Period for Quotation'
  BindingPeriodValidityEndDate : Date;
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Target Value'
  @sap.quickinfo : 'Target Value for Header Area per Distribution'
  TargetAmount : Decimal(16, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'RFQ Lifecycle Status'
  RFQLifecycleStatus : String(2);
  @sap.label : 'RFQ Description'
  @sap.quickinfo : 'Short description or the title of the RFQ'
  RequestForQuotationName : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'Quotation Start Date'
  @sap.quickinfo : 'The date as of which Quotations can be submitted'
  QuotationEarliestSubmsnDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Apply By'
  @sap.quickinfo : 'Closing Date for Applications'
  LatestRegistrationDate : Date;
  @sap.label : 'Our Reference'
  CorrespncInternalReference : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Follow-On Document Category'
  @sap.quickinfo : 'Follow-On Purchasing Document Category'
  FollowOnDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Follow-On Document Type'
  @sap.quickinfo : 'Follow-On Purchasing Document Type'
  FollowOnDocumentType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deletion indicator'
  @sap.quickinfo : 'Deletion indicator in purchasing document'
  PurchasingDocumentDeletionCode : String(1);
  @sap.label : 'Business Purp Compl'
  @sap.quickinfo : 'Business Purpose Completed'
  IsEndOfPurposeBlocked : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Scheduling Agreement Header'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_Schedgagrmthdr {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PurchasingDocumentTypeName'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SchedulingAgreement : String(10) not null;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  DocumentCurrency_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Language_fc : Integer;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Doc. Category'
  @sap.quickinfo : 'Purchasing Document Category'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchasingDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Doc. Type'
  @sap.quickinfo : 'Purchasing Document Type'
  PurchasingDocumentType : String(4);
  @sap.label : 'Doc. Type Descript.'
  @sap.quickinfo : 'Short Description of Purchasing Document Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchasingDocumentTypeName : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created by'
  @sap.quickinfo : 'Name of Person who Created the Object'
  CreatedByUser : String(12);
  @sap.label : 'Description'
  @sap.quickinfo : 'User Description'
  CreatedByUserFullName : String(80);
  @sap.display.format : 'Date'
  @sap.label : 'Created on'
  @sap.quickinfo : 'Date on which the record was created'
  CreationDate : Date;
  @sap.field.control : 'Language_fc'
  @sap.label : 'Language Key'
  Language : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. organization'
  @sap.quickinfo : 'Purchasing organization'
  PurchasingOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Group'
  PurchasingGroup : String(3);
  @sap.field.control : 'DocumentCurrency_fc'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  DocumentCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Terms'
  @sap.quickinfo : 'Terms of Payment Key'
  PaymentTerms : String(4);
  @sap.label : 'Days 1'
  @sap.quickinfo : 'Cash discount days 1'
  CashDiscount1Days : Decimal(3, 0);
  @sap.label : 'Disc.percent 1'
  @sap.quickinfo : 'Cash discount percentage 1'
  CashDiscount1Percent : Decimal(5, 3);
  @sap.label : 'Days 2'
  @sap.quickinfo : 'Cash discount days 2'
  CashDiscount2Days : Decimal(3, 0);
  @sap.label : 'Disc.percent 2'
  @sap.quickinfo : 'Cash Discount Percentage 2'
  CashDiscount2Percent : Decimal(5, 3);
  @sap.label : 'Days Net'
  @sap.quickinfo : 'Net Payment Terms Period'
  NetPaymentDays : Decimal(3, 0);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Target Value'
  @sap.quickinfo : 'Target Value for Header Area per Distribution'
  TargetAmount : Decimal(16, 3);
  @sap.label : 'Exchange Rate'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ExchangeRate : Decimal(9, 5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fixed Exchange Rate'
  @sap.quickinfo : 'Indicator for Fixed Exchange Rate'
  ExchangeRateIsFixed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms Version'
  IncotermsVersion : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3);
  @sap.label : 'Incoterms (Part 2)'
  IncotermsTransferLocation : String(28);
  @sap.label : 'Incoterms Location 1'
  IncotermsLocation1 : String(70);
  @sap.label : 'Incoterms Location 2'
  IncotermsLocation2 : String(70);
  @sap.display.format : 'Date'
  @sap.label : 'Document Date'
  @sap.quickinfo : 'Purchasing Document Date'
  PurchasingDocumentOrderDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rel. documentation'
  @sap.quickinfo : 'Indicator for scheduling agreement release documentation'
  ScheduleAgreementHasReleaseDoc : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  Supplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address Number'
  SupplierAddressID : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Validity Per. Start'
  @sap.quickinfo : 'Start of Validity Period'
  ValidityStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Validity Period End'
  @sap.quickinfo : 'End of Validity Period'
  ValidityEndDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Status of Purchasing Document'
  PurchasingDocumentOrigin : String(1);
  @sap.display.format : 'Date'
  @sap.label : 'Quotation Date'
  @sap.quickinfo : 'Quotation Submission Date'
  QuotationSubmissionDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Quotation'
  @sap.quickinfo : 'Quotation Number'
  SupplierQuotationExternalID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country Sls Tax No.'
  @sap.quickinfo : 'Country of Sales Tax ID Number'
  VATRegistrationCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoicing Party'
  @sap.quickinfo : 'Different Invoicing Party'
  InvoicingParty : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Goods Supplier'
  SupplyingSupplier : String(10);
  @sap.label : 'Salesperson'
  @sap.quickinfo : 'Responsible Salesperson at Supplier''s Office'
  SupplierRespSalesPersonName : String(30);
  @sap.label : 'Telephone'
  @sap.quickinfo : 'Supplier''s Telephone Number'
  SupplierPhoneNumber : String(16);
  @sap.label : 'Your Reference'
  CorrespncExternalReference : String(12);
  @sap.label : 'Our Reference'
  CorrespncInternalReference : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'VAT Registration No.'
  @sap.quickinfo : 'VAT Registration Number'
  CompanyVATRegistration : String(20);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Last Changed'
  @sap.quickinfo : 'Change Time Stamp'
  LastChangeDateTime : Timestamp;
  @sap.label : 'Business Purp Compl'
  @sap.quickinfo : 'Business Purpose Completed'
  IsEndOfPurposeBlocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deletion indicator'
  @sap.quickinfo : 'Deletion indicator in purchasing document'
  PurchasingDocumentDeletionCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subject to release'
  @sap.quickinfo : 'Release Not Yet Completely Effected'
  ReleaseIsNotCompleted : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incomplete'
  @sap.quickinfo : 'Purchase order not yet complete'
  PurchasingCompletenessStatus : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Proc. state'
  @sap.quickinfo : 'Purchasing document processing state'
  PurchasingProcessingStatus : String(2);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Scheduling Agreement IncoTerm Version'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_SchedgAgrmtIncoVersion {
  @sap.display.format : 'UpperCase'
  @sap.text : 'IncotermsVersionName'
  @sap.label : 'Incoterms Version'
  key IncotermsVersion : String(4) not null;
  @sap.label : 'Language Key'
  Language : String(2);
  @sap.label : 'Description'
  IncotermsVersionName : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Scheduling Agreement Document Type'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_Schedgagrmttypevh {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PurchasingDocumentTypeName'
  @sap.label : 'Purchasing Doc. Type'
  @sap.quickinfo : 'Purchasing Document Type'
  key PurchasingDocumentType : String(4) not null;
  @sap.label : 'Doc. Type Descript.'
  @sap.quickinfo : 'Short Description of Purchasing Document Type'
  PurchasingDocumentTypeName : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Service Entry Sheet Item'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_ServiceEntrySheetItem {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Service Entry Sheet'
  key ServiceEntrySheet : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number of SES'
  @sap.quickinfo : 'Item Number of Service Entry Sheet'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key ServiceEntrySheetItem : String(5) not null;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  AccountAssignmentCategory_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ConfirmedQuantity_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MaterialGroup_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MultipleAcctAssgmtDistribution_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  NetPriceAmount_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrderPriceUnitToOrderUnitNmrtr_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  OrdPriceUnitToOrderUnitDnmntr_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchaseContract_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchaseContractItem_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PurchaseOrderItem_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  QtyInPurchaseOrderPriceUnit_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  QuantityUnit_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Service_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ServiceEntrySheetItemDesc_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ServicePerformanceDate_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ServicePerformer_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  WorkItem_fc : Integer;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Purchase Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchaseOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.field.control : 'PurchaseOrderItem_fc'
  @sap.label : 'Ref. PO Item'
  @sap.quickinfo : 'Referenced Purchase Order Item'
  PurchaseOrderItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deletion indicator'
  @sap.quickinfo : 'Deletion indicator in purchasing document'
  IsDeleted : String(1);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'Service_fc'
  @sap.label : 'Product'
  Service : String(40);
  @sap.field.control : 'ServiceEntrySheetItemDesc_fc'
  @sap.label : 'Item Description'
  @sap.quickinfo : 'Item Description for Service Entry Sheet'
  ServiceEntrySheetItemDesc : String(40);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'ServicePerformer_fc'
  @sap.label : 'Service Performer'
  ServicePerformer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'AccountAssignmentCategory_fc'
  @sap.text : 'AccountAssignmentCategory_Text'
  @sap.label : 'Acct Assignment Cat.'
  @sap.quickinfo : 'Account Assignment Category'
  AccountAssignmentCategory : String(1);
  @sap.label : 'Acct Assgnt. Cat. Desc.'
  @sap.quickinfo : 'Account Assignment Category Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AccountAssignmentCategory_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'MultipleAcctAssgmtDistribution_fc'
  @sap.label : 'Distrib. Indicator'
  @sap.quickinfo : 'Distribution Indicator for Multiple Account Assignment'
  MultipleAcctAssgmtDistribution : String(1);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'WorkItem_fc'
  @sap.text : 'WorkItem_Text'
  @sap.label : 'Work Item ID'
  WorkItem : String(10);
  @sap.label : 'Work Item Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WorkItem_Text : String(40);
  @sap.field.control : 'ConfirmedQuantity_fc'
  @sap.unit : 'QuantityUnit'
  @sap.label : 'Stated Quantity'
  ConfirmedQuantity : Decimal(13, 3);
  @sap.field.control : 'QuantityUnit_fc'
  @sap.text : 'QuantityUnit_Text'
  @sap.label : 'Unit of Measure'
  @sap.quickinfo : 'Unit of Measure for Service Entry Statement'
  @sap.semantics : 'unit-of-measure'
  QuantityUnit : String(3);
  @sap.label : 'UoM Text'
  @sap.quickinfo : 'Unit of Measurement Text (Maximum 30 Characters)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  QuantityUnit_Text : String(30);
  @sap.label : 'Order Price Unit'
  @sap.quickinfo : 'Order Price Unit (Purchasing)'
  @sap.semantics : 'unit-of-measure'
  OrderPriceUnit : String(3);
  @sap.field.control : 'OrderPriceUnitToOrderUnitNmrtr_fc'
  @sap.label : 'Quantity Conversion'
  @sap.quickinfo : 'Numerator for Conversion of Order Price Unit into Order Unit'
  OrderPriceUnitToOrderUnitNmrtr : Decimal(5, 0);
  @sap.field.control : 'OrdPriceUnitToOrderUnitDnmntr_fc'
  @sap.label : 'Quantity Conversion'
  @sap.quickinfo : 'Denominator for Conv. of Order Price Unit into Order Unit'
  OrdPriceUnitToOrderUnitDnmntr : Decimal(5, 0);
  @sap.field.control : 'QtyInPurchaseOrderPriceUnit_fc'
  @sap.unit : 'OrderPriceUnit'
  @sap.label : 'Qty in OPUn'
  @sap.quickinfo : 'Quantity in Purchase Order Price Unit'
  QtyInPurchaseOrderPriceUnit : Decimal(13, 3);
  @sap.unit : 'OrderPriceUnit'
  @sap.label : 'Price unit'
  NetPriceQuantity : Decimal(5, 0);
  @sap.display.format : 'Date'
  @sap.field.control : 'ServicePerformanceDate_fc'
  @sap.label : 'Performance Date'
  @sap.quickinfo : 'Date of Service Performance'
  ServicePerformanceDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Start Date'
  @sap.quickinfo : 'Start Date for Period of Performance'
  PerformancePeriodStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'End Date'
  @sap.quickinfo : 'End Date for Period of Performance'
  PerformancePeriodEndDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Document'
  @sap.quickinfo : 'External Reference Document'
  OriginObject : String(12);
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.field.control : 'NetPriceAmount_fc'
  @sap.unit : 'Currency'
  @sap.label : 'Price per Unit'
  @sap.quickinfo : 'Price per Unit for an SES Item'
  NetPriceAmount : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'MaterialGroup_fc'
  @sap.text : 'MaterialGroup_Text'
  @sap.label : 'Product Group'
  MaterialGroup : String(9);
  @sap.label : 'Product Group Desc.'
  @sap.quickinfo : 'Product Group Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaterialGroup_Text : String(20);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Created On'
  @sap.quickinfo : 'Creation Date and Time'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.label : 'User Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12);
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Long Form (YYYYMMDDhhmmssmmmuuun)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeDateTime : Timestamp;
  @sap.display.format : 'UpperCase'
  @sap.label : 'User Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Plant : String(4);
  @sap.label : 'Ext. Reference ID'
  @sap.quickinfo : 'External Reference ID'
  PurgDocItemExternalReference : String(70);
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'PurchaseContract_fc'
  @sap.label : 'Contract for Limit'
  @sap.quickinfo : 'Purchase Contract for Enhanced Limit'
  PurchaseContract : String(10);
  @sap.display.format : 'NonNegative'
  @sap.field.control : 'PurchaseContractItem_fc'
  @sap.label : 'Purchase Contract Item'
  PurchaseContractItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. organization'
  @sap.quickinfo : 'Purchasing organization'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchasingOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Group'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchasingGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deletion indicator'
  @sap.quickinfo : 'Deletion indicator in purchasing document'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ParentObjectIsDeleted : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  PurOrderItemPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Doc. Type'
  @sap.quickinfo : 'Purchasing Document Type'
  PurchaseOrderType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Supplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Group'
  PurchaseOrderItemMaterialGroup : String(9);
  @sap.unit : 'PurchaseOrderItemQuantityUnit'
  @sap.label : 'Order Quantity'
  @sap.quickinfo : 'Purchase Order Quantity'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchaseOrderItemQuantity : Decimal(13, 3);
  @sap.label : 'Order Unit'
  @sap.quickinfo : 'Purchase Order Unit of Measure'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'unit-of-measure'
  PurchaseOrderItemQuantityUnit : String(3);
  @sap.unit : 'PurchaseOrderCurrency'
  @sap.label : 'Net Order Value'
  @sap.quickinfo : 'Net Order Value in PO Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchaseOrderItemNetAmount : Decimal(14, 3);
  @sap.label : 'Purchase Order Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'currency-code'
  PurchaseOrderCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchaseOrderItemCompanyCode : String(4);
  @sap.label : 'Overdeliv. Tolerance'
  @sap.quickinfo : 'Overdelivery Tolerance'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OverdelivTolrtdLmtRatioInPct : Decimal(3, 1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Item category'
  @sap.quickinfo : 'Item category in purchasing document'
  PurchaseOrderItemCategory : String(1);
  @sap.unit : 'PurchaseOrderCurrency'
  @sap.label : 'Expected Value'
  @sap.quickinfo : 'Expected Value of Overall Limit'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ExpectedOverallLimitAmount : Decimal(14, 3);
  @sap.unit : 'PurchaseOrderCurrency'
  @sap.label : 'Overall Limit'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OverallLimitAmount : Decimal(14, 3);
  @sap.unit : 'PurchaseOrderItemQuantityUnit'
  @sap.label : 'Stated Quantity'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TotalConfirmedQuantity : Decimal(13, 3);
  @sap.unit : 'PurchaseOrderItemQuantityUnit'
  @sap.label : 'Open Quantity'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpenQuantity : Decimal(13, 3);
  @sap.unit : 'PurchaseOrderCurrency'
  @sap.label : 'Open Amt PO Crcy'
  @sap.quickinfo : 'Open Amount in Purchase Order Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OpenAmountInPurchaseOrderCrcy : Decimal(14, 3);
  @sap.unit : 'Currency'
  @sap.label : 'Stated Amount'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  NetAmount : Decimal(14, 3);
  @sap.unit : 'PurchaseOrderCurrency'
  @sap.label : 'Stated Amount'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  NetAmountInPurchaseOrderCrcy : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  MaterialType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Consumption posting'
  @sap.quickinfo : 'Indicator: Consumption posting (Purchasing)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConsumptionPosting : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Special Stock'
  @sap.quickinfo : 'Special Stock Indicator'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  InventorySpecialStockType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Type Group'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ProductType : String(2);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Shipping Point'
@sap.value.list : 'true'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_ShippingPointStdVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'ShippingPoint_Text'
  @sap.label : 'Shipping Point'
  @sap.quickinfo : 'Shipping Point / Receiving Point'
  key ShippingPoint : String(4) not null;
  @sap.label : 'Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ShippingPoint_Text : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Account Assignment Category Value Help'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_SrvcEntrShtAcctAssgmtCat {
  @sap.display.format : 'UpperCase'
  @sap.text : 'AcctAssignmentCategoryName'
  @sap.label : 'Acct Assignment Cat.'
  @sap.quickinfo : 'Account Assignment Category'
  key AccountAssignmentCategory : String(1) not null;
  @sap.label : 'Acct Assgnt. Cat. Desc.'
  @sap.quickinfo : 'Account Assignment Category Description'
  AcctAssignmentCategoryName : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Service Entry Sheet Item / Document Flow'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_SrvcEntrShtItmDocFlw {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Service Entry Sheet'
  key ServiceEntrySheet : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item Number of SES'
  @sap.quickinfo : 'Item Number of Service Entry Sheet'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key ServiceEntrySheetItem : String(5) not null;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ApprovalStatus_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ConfirmedQuantity_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  QuantityUnit_fc : Integer;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Dyn. Field Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ServicePerformanceDate_fc : Integer;
  @sap.field.control : 'ConfirmedQuantity_fc'
  @sap.unit : 'QuantityUnit'
  @sap.label : 'Stated Quantity'
  ConfirmedQuantity : Decimal(13, 3);
  @sap.field.control : 'QuantityUnit_fc'
  @sap.label : 'Unit of Measure'
  @sap.quickinfo : 'Unit of Measure for Service Entry Statement'
  @sap.semantics : 'unit-of-measure'
  QuantityUnit : String(3);
  @sap.display.format : 'Date'
  @sap.field.control : 'ServicePerformanceDate_fc'
  @sap.label : 'Performance Date'
  @sap.quickinfo : 'Date of Service Performance'
  ServicePerformanceDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.field.control : 'ApprovalStatus_fc'
  @sap.label : 'Approval Status'
  @sap.quickinfo : 'Approval Status for Service Entry Sheet'
  ApprovalStatus : String(2);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Supplier'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_Supplier {
  @sap.display.format : 'UpperCase'
  @sap.text : 'SupplierName'
  @sap.label : 'Vendor'
  @sap.quickinfo : 'Account Number of Vendor or Creditor'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account group'
  @sap.quickinfo : 'Vendor account group'
  SupplierAccountGroup : String(4);
  @sap.label : 'Name of Supplier'
  SupplierName : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier Name'
  @sap.quickinfo : 'Supplier Full Name'
  SupplierFullName : String(220);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purpose Completed'
  @sap.quickinfo : 'Business Purpose Completed Flag'
  IsBusinessPurposeCompleted : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created by'
  @sap.quickinfo : 'Name of Person who Created the Object'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Created on'
  @sap.quickinfo : 'Date on which the Record Was Created'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'One-time account'
  @sap.quickinfo : 'Indicator: Is the account a one-time account?'
  IsOneTimeAccount : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Authorization'
  @sap.quickinfo : 'Authorization Group'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'VAT Registration No.'
  @sap.quickinfo : 'VAT Registration Number'
  VATRegistration : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Posting Block'
  @sap.quickinfo : 'Central posting block'
  AccountIsBlockedForPosting : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group key'
  SupplierCorporateGroup : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  Customer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry'
  @sap.quickinfo : 'Industry key'
  Industry : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 1'
  TaxNumber1 : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 2'
  TaxNumber2 : String(11);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 3'
  TaxNumber3 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 4'
  TaxNumber4 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number 5'
  TaxNumber5 : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Posting Block'
  @sap.quickinfo : 'Central posting block'
  PostingIsBlocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. block'
  @sap.quickinfo : 'Centrally imposed purchasing block'
  PurchasingIsBlocked : Boolean;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. location no. 1'
  @sap.quickinfo : 'International location number (part 1)'
  InternationalLocationNumber1 : String(7);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Int. location no. 2'
  @sap.quickinfo : 'International location number (Part 2)'
  InternationalLocationNumber2 : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Check digit'
  @sap.quickinfo : 'Check digit for the international location number'
  InternationalLocationNumber3 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Address'
  AddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  Region : String(3);
  @sap.label : 'Name'
  @sap.quickinfo : 'Name 1'
  OrganizationBPName1 : String(35);
  @sap.label : 'Name 2'
  OrganizationBPName2 : String(35);
  @sap.label : 'City'
  CityName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Postal Code'
  PostalCode : String(10);
  @sap.label : 'Street'
  @sap.quickinfo : 'Street and House Number'
  StreetName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country'
  @sap.quickinfo : 'Country Key'
  Country : String(3);
  @sap.label : 'Int. Location No.'
  @sap.quickinfo : 'Cocatenated International Location Number'
  ConcatenatedInternationalLocNo : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Block Function'
  @sap.quickinfo : 'Function That Will Be Blocked'
  SupplierProcurementBlock : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Actual QM System'
  @sap.quickinfo : 'Supplier''s QM system'
  SuplrQualityManagementSystem : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'QM System Valid To'
  @sap.quickinfo : 'Validity date of certification'
  SuplrQltyInProcmtCertfnValidTo : Date;
  @sap.label : 'Language Key'
  SupplierLanguage : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Alternative Payee'
  @sap.quickinfo : 'Account Number of the Alternative Payee'
  AlternativePayeeAccountNumber : String(10);
  @sap.label : 'Telephone 1'
  @sap.quickinfo : 'First telephone number'
  PhoneNumber1 : String(16);
  @sap.label : 'Fax Number'
  FaxNumber : String(31);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Natural Person'
  IsNaturalPerson : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Number'
  @sap.quickinfo : 'Tax Number at Responsible Tax Authority'
  TaxNumberResponsible : String(18);
  @sap.label : 'Business Type'
  @sap.quickinfo : 'Subcontractor''s Business Type'
  UK_ContractorBusinessType : String(12);
  @sap.label : 'Prtnr''s Trading Name'
  @sap.quickinfo : 'Partner''s Trading Name'
  UK_PartnerTradingName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner''s UTR'
  @sap.quickinfo : 'Partner''s Unique Tax Reference (UTR)'
  UK_PartnerTaxReference : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Verification Status'
  UK_VerificationStatus : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Verification Number'
  UK_VerificationNumber : String(20);
  @sap.label : 'Comp. House Reg. No.'
  @sap.quickinfo : 'Companies House Registration Number'
  UK_CompanyRegistrationNumber : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Status'
  @sap.quickinfo : 'Tax Status of the Verified Subcontractor'
  UK_VerifiedTaxStatus : String(1);
  @sap.label : 'Title'
  FormOfAddress : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Acct Group'
  @sap.quickinfo : 'Reference Account Group for One-Time Account (Vendor)'
  ReferenceAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Liable for VAT'
  VATLiability : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax type'
  ResponsibleType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax number type'
  @sap.quickinfo : 'Tax Number Type'
  TaxNumberType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fiscal address'
  @sap.quickinfo : 'Account number of the master record with fiscal address'
  FiscalAddress : String(10);
  @sap.label : 'Type of Business'
  BusinessType : String(30);
  @sap.display.format : 'Date'
  @sap.label : 'Date of Birth'
  @sap.quickinfo : 'Date of Birth of the Person Subject to Withholding Tax'
  BirthDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment block'
  @sap.quickinfo : 'Payment Block'
  PaymentIsBlockedForSupplier : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Search term'
  @sap.quickinfo : 'Sort field'
  SortField : String(10);
  @sap.label : 'Telephone 2'
  @sap.quickinfo : 'Second telephone number'
  PhoneNumber2 : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deletion flag'
  @sap.quickinfo : 'Central Deletion Flag for Master Record'
  DeletionIndicator : Boolean;
  @sap.label : 'Rep''s Name'
  @sap.quickinfo : 'Name of Representative'
  TaxInvoiceRepresentativeName : String(10);
  @sap.label : 'Type of Industry'
  IndustryType : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'GST Ven Class.'
  @sap.quickinfo : 'Vendor Classification for GST'
  IN_GSTSupplierClassification : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Relevant for POD'
  @sap.quickinfo : 'Supplier indicator relevant for proof of delivery'
  SuplrProofOfDelivRlvtCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Trading Partner No.'
  @sap.quickinfo : 'Company ID of Trading Partner'
  TradingPartner : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax split'
  @sap.quickinfo : 'Tax Split'
  BR_TaxIsSplit : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Enterprise in AU'
  @sap.quickinfo : 'Is payer making payment in course of carrying on enterprise'
  AU_PayerIsPayingToCarryOnEnt : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Individual'
  @sap.quickinfo : 'Is an individual under 18 and payment does not exceed $350'
  AU_IndividualIsUnder18 : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment does not exc'
  @sap.quickinfo : 'The payment does not exceed $75, excl. GST'
  AU_PaymentIsExceeding75 : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Wholly Input Taxed'
  @sap.quickinfo : 'The supply that the payment relates to is wholly input taxed'
  AU_PaymentIsWhollyInputTaxed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Individual w/o gain'
  @sap.quickinfo : 'The supply is made by an individual without gain'
  AU_PartnerIsSupplyWithoutGain : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ABN Eligible'
  @sap.quickinfo : 'The supplier is not entitled to an ABN'
  AU_SupplierIsEntitledToABN : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Exempt'
  @sap.quickinfo : 'The whole of the payment is exempt income.'
  AU_PaymentIsIncomeExempted : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Hobby'
  @sap.quickinfo : 'An activity done as a private recreational pursuit'
  AU_SupplyIsMadeAsPrivateHobby : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Domestic'
  @sap.quickinfo : 'wholly of a private or domestic nature'
  AU_SupplyMadeIsOfDmstcNature : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Origin Acceptance'
  @sap.quickinfo : 'Acceptance At Origin'
  IsToBeAcceptedAtOrigin : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Office'
  @sap.quickinfo : 'Account Number of Master Record of Tax Office Responsible'
  SuplrTaxAuthorityAccountNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payee in Document'
  @sap.quickinfo : 'Indicator: Alternative Payee in Document Allowed?'
  AlternativePayeeIsAllowed : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Supplier Invoice'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_SupplierInvoice {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoice Document No.'
  @sap.quickinfo : 'Document Number of an Invoice Document'
  key SupplierInvoice : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal Year'
  key FiscalYear : String(4) not null;
  @sap.label : 'GUID'
  @sap.quickinfo : 'GUID: MM Supplier Invoice in S-Innovations'
  SupplierInvoiceUUID : UUID;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Invoice Date'
  @sap.quickinfo : 'Invoice Date in Document'
  DocumentDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Posting Date'
  @sap.quickinfo : 'Posting Date in the Document'
  PostingDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Invoice Receipt Date'
  InvoiceReceiptDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference'
  @sap.quickinfo : 'Reference Document Number'
  SupplierInvoiceIDByInvcgParty : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoicing Party'
  @sap.quickinfo : 'Different Invoicing Party'
  InvoicingParty : String(10);
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  DocumentCurrency : String(5);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Gross Invoice Amount'
  @sap.quickinfo : 'Gross Invoice Amount in Document Currency'
  InvoiceGrossAmount : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoice'
  @sap.quickinfo : 'Indicator: post invoice'
  IsInvoice : String(1);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Unplanned Del. Costs'
  @sap.quickinfo : 'Unplanned Delivery Costs'
  UnplannedDeliveryCost : Decimal(14, 3);
  @sap.label : 'Document Header Text'
  DocumentHeaderText : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Entered By'
  @sap.quickinfo : 'Name of the Processor Who Entered the Object'
  CreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'User Name'
  LastChangedByUser : String(12);
  @sap.label : 'Created by'
  @sap.quickinfo : 'Entered by external system user'
  SuplrInvcExtCreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Entry Date'
  @sap.quickinfo : 'Day On Which Accounting Document Was Entered'
  CreationDate : Date;
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'CD Amount'
  @sap.quickinfo : 'Cash Discount Amount in Document Currency'
  ManualCashDiscount : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment terms'
  @sap.quickinfo : 'Terms of payment key'
  PaymentTerms : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Baseline Date'
  @sap.quickinfo : 'Baseline date for due date calculation'
  DueCalculationBaseDate : Date;
  @sap.label : 'Disc.percent 1'
  @sap.quickinfo : 'Cash discount percentage 1'
  CashDiscount1Percent : Decimal(5, 3);
  @sap.label : 'Days 1'
  @sap.quickinfo : 'Cash discount days 1'
  CashDiscount1Days : Decimal(3, 0);
  @sap.label : 'Disc.percent 2'
  @sap.quickinfo : 'Cash Discount Percentage 2'
  CashDiscount2Percent : Decimal(5, 3);
  @sap.label : 'Days 2'
  @sap.quickinfo : 'Cash discount days 2'
  CashDiscount2Days : Decimal(3, 0);
  @sap.label : 'Days Net'
  @sap.quickinfo : 'Net Payment Terms Period'
  NetPaymentDays : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment block'
  @sap.quickinfo : 'Payment Block Key'
  PaymentBlockingReason : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Type'
  AccountingDocumentType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoice doc. status'
  @sap.quickinfo : 'Invoice document status'
  SupplierInvoiceStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'IV category'
  @sap.quickinfo : 'Origin of a Logistics Invoice Verification Document'
  SupplierInvoiceOrigin : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bus. Network Origin'
  @sap.quickinfo : 'Origin of the Business Network Document'
  BusinessNetworkOrigin : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reversed by'
  @sap.quickinfo : 'Reversal document number'
  ReverseDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Year'
  @sap.quickinfo : 'Fiscal year of reversal document'
  ReverseDocumentFiscalYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Transaction Type'
  @sap.quickinfo : 'Transaction Type in AG08 (Internal Document Type)'
  SuplrInvcTransactionCategory : String(2);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Supp.Error(net)'
  @sap.quickinfo : 'Supplier Error (Exclusive of Tax)'
  SuplrInvcManuallyReducedAmount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Tax, Supp.Error'
  @sap.quickinfo : 'Tax in Supplier Error'
  SuplrInvcManualReductionTaxAmt : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Inv. reduction'
  @sap.quickinfo : 'Automatic Invoice Reduction Amount (Net)'
  SuplrInvcAutomReducedAmount : Decimal(14, 3);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Tax inv. reduction'
  @sap.quickinfo : 'Sales Tax Portion of Automatic Invoice Reduction Amount'
  SuplrInvcAutomReductionTaxAmt : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Part.bank type'
  @sap.quickinfo : 'Partner bank type'
  BPBankAccountInternalID : String(4);
  @sap.label : 'Exchange rate'
  ExchangeRate : Decimal(9, 5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'SCB Indicator'
  @sap.quickinfo : 'State Central Bank Indicator'
  StateCentralBankPaymentReason : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplying Cntry'
  @sap.quickinfo : 'Supplying Country'
  SupplyingCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Method'
  PaymentMethod : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pmt Meth. Supplement'
  @sap.quickinfo : 'Payment method supplement'
  PaymentMethodSupplement : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment reference'
  @sap.quickinfo : 'Payment Reference'
  PaymentReference : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'InR.Reference number'
  @sap.quickinfo : 'Invoice reference: Document number for invoice reference'
  InvoiceReference : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal Year'
  @sap.quickinfo : 'Fiscal Year of the Relevant Invoice (for Credit Memo)'
  InvoiceReferenceFiscalYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fixed'
  @sap.quickinfo : 'Fixed Payment Terms'
  FixedCashDiscount : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Code'
  UnplannedDeliveryCostTaxCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  UnplndDelivCostTaxJurisdiction : String(15);
  @sap.label : 'Assignment'
  @sap.quickinfo : 'Assignment number'
  AssignmentReference : String(18);
  @sap.label : 'Item Text'
  SupplierPostingLineItemText : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Calculate Tax'
  @sap.quickinfo : 'Calculate Tax Automatically'
  TaxIsCalculatedAutomatically : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business place'
  @sap.quickinfo : 'Business Place'
  BusinessPlace : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'PBC/ISR number'
  @sap.quickinfo : 'ISR subscriber number'
  PaytSlipWthRefSubscriber : String(11);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Check digit'
  @sap.quickinfo : 'POR check digit'
  PaytSlipWthRefCheckDigit : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISR/QR Reference No.'
  @sap.quickinfo : 'ISR/QR Reference Number'
  PaytSlipWthRefReference : String(27);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Purp Compl'
  @sap.quickinfo : 'Business Purpose Completed'
  IsEndOfPurposeBlocked : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Section Code'
  BusinessSectionCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Business Area'
  BusinessArea : String(4);
  @sap.label : 'Mexico UUID'
  ElectronicInvoiceUUID : String(36);
  @sap.display.format : 'Date'
  @sap.label : 'Tax Date'
  @sap.quickinfo : 'Date for Determining Tax Rates'
  TaxDeterminationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reporting Country'
  @sap.quickinfo : 'Reporting Country for Delivery of Goods Within the EU'
  DeliveryOfGoodsReportingCntry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'VAT Registration No.'
  @sap.quickinfo : 'VAT Registration Number'
  SupplierVATRegistration : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'EU Triangular Deal'
  @sap.quickinfo : 'Indicator: Triangular Deal Within the EU'
  IsEUTriangularDeal : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Tax Reporting Date'
  TaxReportingDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Country'
  @sap.quickinfo : 'Tax Reporting Country'
  TaxCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Country'
  @sap.quickinfo : 'Tax Reporting Country'
  UnplndDeliveryCostTaxCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery(Inv/Cr)'
  @sap.quickinfo : 'Posting logic for delivery items (invoice/credit memo)'
  SuplrInvcDebitCrdtCodeDelivery : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Returns(Inv/Cr)'
  @sap.quickinfo : 'Posting logic for returns items (invoice/credit memo)'
  SuplrInvcDebitCrdtCodeReturns : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Supplier Invoice Item Purchase Order Reference'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_SupplierInvoiceItemPurOrdRef {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Number'
  @sap.quickinfo : 'Accounting Document Number'
  key SupplierInvoice : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal Year'
  key FiscalYear : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Invoice Item'
  @sap.quickinfo : 'Document Item in Invoice Document'
  key SupplierInvoiceItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Document'
  @sap.quickinfo : 'Purchasing Document Number'
  PurchaseOrder : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item Number of Purchasing Document'
  PurchaseOrderItem : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  Plant : String(4);
  @sap.label : 'Text'
  @sap.quickinfo : 'Item Text'
  SupplierInvoiceItemText : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  PurchaseOrderItemMaterial : String(40);
  @sap.label : 'Order Unit'
  @sap.quickinfo : 'Purchase Order Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  PurchaseOrderQuantityUnit : String(3);
  @sap.unit : 'PurchaseOrderQuantityUnit'
  @sap.label : 'Quantity'
  QuantityInPurchaseOrderUnit : Decimal(13, 3);
  @sap.label : 'Order Price Unit'
  @sap.quickinfo : 'Order Price Unit (Purchasing)'
  @sap.semantics : 'unit-of-measure'
  PurchaseOrderPriceUnit : String(3);
  @sap.unit : 'PurchaseOrderPriceUnit'
  @sap.label : 'Qty in OPUn'
  @sap.quickinfo : 'Quantity in Purchase Order Price Unit'
  QtyInPurchaseOrderPriceUnit : Decimal(13, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition type'
  SuplrInvcDeliveryCostCndnType : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Step Number'
  SuplrInvcDeliveryCostCndnStep : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Condition Counter'
  SuplrInvcDeliveryCostCndnCount : String(3);
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  DocumentCurrency : String(5);
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Amount'
  @sap.quickinfo : 'Amount in Document Currency'
  SupplierInvoiceItemAmount : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subseq. Debit/Credit'
  @sap.quickinfo : 'Indicator: Subsequent Debit/Credit'
  IsSubsequentDebitCredit : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Code'
  @sap.quickinfo : 'Tax on sales/purchases code'
  TaxCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Jurisdiction'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reference Document'
  @sap.quickinfo : 'Document No. of a Reference Document'
  ReferenceDocument : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Year current period'
  @sap.quickinfo : 'Fiscal Year of Current Period'
  ReferenceDocumentFiscalYear : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Reference Doc. Item'
  @sap.quickinfo : 'Item of a Reference Document'
  ReferenceDocumentItem : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Debit/Credit ind'
  @sap.quickinfo : 'Debit/Credit Indicator'
  DebitCreditCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Vendor'
  @sap.quickinfo : 'Account Number of Vendor or Creditor'
  FreightSupplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'W/o Cash Dscnt'
  @sap.quickinfo : 'Indicator: Line Item Not Liable to Cash Discount?'
  IsNotCashDiscountLiable : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Blocking Reas. Price'
  @sap.quickinfo : 'Blocking Reason: Price'
  SuplrInvcItemHasPriceVariance : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Blocking Reason: Qty'
  @sap.quickinfo : 'Blocking Reason: Quantity'
  SuplrInvcItemHasQtyVariance : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Block. Reason: Date'
  @sap.quickinfo : 'Blocking Reason: Date'
  SuplrInvcItemHasDateVariance : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Blocking Reason:OPQ'
  @sap.quickinfo : 'Blocking Reason: Order Price Quantity'
  SuplrInvcItemHasOrdPrcQtyVarc : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Manual Block. Reason'
  @sap.quickinfo : 'Manual Blocking Reason'
  SuplrInvcItemHasOtherVariance : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Blkg Reas. Amount'
  @sap.quickinfo : 'Blocking Reason: Item Amount'
  SuplrInvcItemHasAmountOutsdTol : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'BlockReason:Quality'
  @sap.quickinfo : 'Blocking Reason: Quality'
  SuplrInvcItmHasQualityVariance : Boolean;
  IsOnlineSupplierInvoiceItem : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Item category'
  @sap.quickinfo : 'Item category in purchasing document'
  PurchasingDocumentItemCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product Type Group'
  ProductType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Country'
  @sap.quickinfo : 'Tax Reporting Country'
  TaxCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Valuation Type'
  InventoryValuationType : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  SuplrInvcPurgDocItmCompanyCode : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Supplier Quotation'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_SupplierQuotation {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier Quotation'
  @sap.quickinfo : 'Supplier Quotation Number'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SupplierQuotation : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purch. Doc. Category'
  @sap.quickinfo : 'Purchasing Document Category'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchasingDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Quotation Type'
  @sap.quickinfo : 'Supplier Quotation Document Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurchasingDocumentType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Supplier'
  Supplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Created by'
  @sap.quickinfo : 'Name of Person who Created the Object'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Created on'
  @sap.quickinfo : 'Date on which the record was created'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.label : 'Last Changed'
  @sap.quickinfo : 'Change Time Stamp'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeDateTime : Timestamp;
  @sap.label : 'Language Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Language : String(2);
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  DocumentCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms (Part 1)'
  IncotermsClassification : String(3);
  @sap.label : 'Incoterms (Part 2)'
  IncotermsTransferLocation : String(28);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms Version'
  IncotermsVersion : String(4);
  @sap.label : 'Incoterms Location 1'
  IncotermsLocation1 : String(70);
  @sap.label : 'Incoterms Location 2'
  IncotermsLocation2 : String(70);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Terms'
  @sap.quickinfo : 'Terms of Payment Key'
  PaymentTerms : String(4);
  @sap.label : 'Days 1'
  @sap.quickinfo : 'Cash discount days 1'
  CashDiscount1Days : Decimal(3, 0);
  @sap.label : 'Days 2'
  @sap.quickinfo : 'Cash discount days 2'
  CashDiscount2Days : Decimal(3, 0);
  @sap.label : 'Disc.percent 1'
  @sap.quickinfo : 'Cash discount percentage 1'
  CashDiscount1Percent : Decimal(5, 3);
  @sap.label : 'Disc.percent 2'
  @sap.quickinfo : 'Cash Discount Percentage 2'
  CashDiscount2Percent : Decimal(5, 3);
  @sap.label : 'Days Net'
  @sap.quickinfo : 'Net Payment Terms Period'
  NetPaymentDays : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Procedure'
  @sap.quickinfo : 'Procedure (Pricing, Output Control, Acct. Det., Costing,...)'
  PricingProcedure : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Doc. Condition No.'
  @sap.quickinfo : 'Number of the Document Condition'
  PurchasingDocumentCondition : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Organization'
  PurchasingOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchasing Group'
  PurchasingGroup : String(3);
  @sap.display.format : 'Date'
  @sap.label : 'Document Date'
  @sap.quickinfo : 'Purchasing Document Date'
  PurchasingDocumentOrderDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'RFQ'
  @sap.quickinfo : 'Request for Quotation'
  RequestForQuotation : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Quotation'
  @sap.quickinfo : 'Quotation Number'
  SupplierQuotationExternalID : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Quotation Date'
  @sap.quickinfo : 'Quotation Submission Date'
  QuotationSubmissionDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Quotation Deadline'
  @sap.quickinfo : 'Deadline for Submission of Bid/Quotation'
  QuotationLatestSubmissionDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Binding Period'
  @sap.quickinfo : 'Binding Period for Quotation'
  BindingPeriodValidityEndDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fixed Exchange Rate'
  @sap.quickinfo : 'Indicator for Fixed Exchange Rate'
  ExchangeRateIsFixed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Supplier Quotation Lifecycle Status'
  QtnLifecycleStatus : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Follow-On Document Category'
  @sap.quickinfo : 'Follow-On Purchasing Document Category'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FollowOnDocumentCategory : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Follow-On Document Type'
  @sap.quickinfo : 'Follow-On Purchasing Document Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FollowOnDocumentType : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Valid From'
  @sap.quickinfo : 'Start of Validity Period'
  PurContrValidityStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Valid To'
  @sap.quickinfo : 'End of Validity Period'
  PurContrValidityEndDate : Date;
  @sap.unit : 'DocumentCurrency'
  @sap.label : 'Target Value'
  @sap.quickinfo : 'Target Value for Header Area per Distribution'
  PurchaseContractTargetAmount : Decimal(16, 3);
  @sap.label : 'Business Purp Compl'
  @sap.quickinfo : 'Business Purpose Completed'
  IsEndOfPurposeBlocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Deletion indicator'
  @sap.quickinfo : 'Deletion indicator in purchasing document'
  PurchasingDocumentDeletionCode : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Unit of Measure'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_UnitOfMeasure {
  @sap.text : 'UnitOfMeasure_Text'
  @sap.label : 'Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  key UnitOfMeasure : String(3) not null;
  @sap.label : 'UoM Text'
  @sap.quickinfo : 'Unit of Measurement Text (Maximum 30 Characters)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  UnitOfMeasure_Text : String(30);
  @sap.label : 'Internal SAP Code'
  @sap.quickinfo : 'Unit of Measurement, Internal SAP Code (No Conversion)'
  UnitOfMeasureSAPCode : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO code'
  @sap.quickinfo : 'ISO code for unit of measurement'
  UnitOfMeasureISOCode : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Primary code'
  @sap.quickinfo : 'Selection field for conversion from ISO code to int. code'
  IsPrimaryUnitForISOCode : Boolean;
  @sap.label : 'Decimal Rounding'
  @sap.quickinfo : 'No. of decimal places for rounding'
  UnitOfMeasureNumberOfDecimals : Integer;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Commercial meas.unit'
  @sap.quickinfo : 'Commercial measurement unit ID'
  UnitOfMeasureIsCommercial : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Dimension'
  @sap.quickinfo : 'Dimension key'
  UnitOfMeasureDimension : String(6);
  @sap.label : 'Numerator'
  @sap.quickinfo : 'Numerator for conversion to SI unit'
  SIUnitCnvrsnRateNumerator : Integer;
  @sap.label : 'Denominator'
  @sap.quickinfo : 'Denominator for conversion into SI unit'
  SIUnitCnvrsnRateDenominator : Integer;
  @sap.label : 'Exponent'
  @sap.quickinfo : 'base ten exponent for conversion to SI unit'
  SIUnitCnvrsnRateExponent : Integer;
  @sap.label : 'Additive constant'
  @sap.quickinfo : 'Additive constant for conversion to SI unit'
  SIUnitCnvrsnAdditiveValue : Decimal(9, 6);
  @sap.label : 'float. point exp.'
  @sap.quickinfo : 'Base ten exponent for floating-point display'
  UnitOfMeasureDspExponent : Integer;
  @sap.label : 'Decimal Places'
  @sap.quickinfo : 'Number of decimal places for number display'
  UnitOfMeasureDspNmbrOfDcmls : Integer;
  @sap.unit : 'UnitOfMeasureTemperatureUnit'
  @sap.label : 'Temperature'
  UnitOfMeasureTemperature : Double;
  @sap.label : 'Temperature unit'
  @sap.semantics : 'unit-of-measure'
  UnitOfMeasureTemperatureUnit : String(3);
  @sap.unit : 'UnitOfMeasurePressureUnit'
  @sap.label : 'Pressure Value'
  UnitOfMeasurePressure : Double;
  @sap.label : 'Unit of Pressure'
  @sap.semantics : 'unit-of-measure'
  UnitOfMeasurePressureUnit : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Workitems for a Workpackage'
entity ZCA_BPF_LAYOUT_METADATA_SRV.I_WorkItem {
  @sap.display.format : 'UpperCase'
  @sap.text : 'WorkItem_Text'
  @sap.label : 'Work Item ID'
  key WorkItem : String(10) not null;
  @sap.label : 'Work Item Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WorkItem_Text : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Material Documents Document Flow'
entity ZCA_BPF_LAYOUT_METADATA_SRV.Mmim_MatDocDocFlow {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Preceding Document'
  key PrecedingDocument : String(20) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Undefined range (can be used for patch levels)'
  @sap.heading : ''
  key PrecedingDocumentYear : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subsequent Document'
  key SubsequentDocument : String(20) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Undefined range (can be used for patch levels)'
  @sap.heading : ''
  key SubsequentDocumentYear : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Char20'
  @sap.quickinfo : 'Char 20'
  key PrecedingDocumentItem : String(20) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Char20'
  @sap.quickinfo : 'Char 20'
  key SubsequentDocumentItem : String(20) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Char20'
  @sap.quickinfo : 'Char 20'
  key MaterialDocument : String(20) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Doc. Year'
  @sap.quickinfo : 'Material Document Year'
  key MaterialDocumentYear : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Char20'
  @sap.quickinfo : 'Char 20'
  key MaterialDocumentItem : String(20) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Undefined range (can be used for patch levels)'
  @sap.heading : ''
  key FiscalYear : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Component of the Version Number'
  @sap.heading : ''
  PrecedingDocumentCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Component of the Version Number'
  @sap.heading : ''
  SubsequentDocumentCategory : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  CompanyCode : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Status Issuing'
entity ZCA_BPF_LAYOUT_METADATA_SRV.Mmim_MatDocFlowIssuingStatus {
  key MaterialDocument : String(20) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Document Year'
  key MaterialDocumentYear : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Document Item'
  key MaterialDocumentItem : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Undefined range (can be used for patch levels)'
  @sap.heading : ''
  Status : String(4);
  Plant : String(35);
  StorageLocation : String(21);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stock Type'
  @sap.quickinfo : 'Stock Type of Goods Movement (Stock Identifier)'
  StockType : String(2);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Status Receiving'
entity ZCA_BPF_LAYOUT_METADATA_SRV.Mmim_MatDocFlowReceivingStatus {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Char20'
  @sap.quickinfo : 'Char 20'
  key MaterialDocument : String(20) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Document Year'
  key MaterialDocumentYear : String(4) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Document Item'
  key MaterialDocumentItem : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Undefined range (can be used for patch levels)'
  @sap.heading : ''
  Status : String(4);
  Plant : String(35);
  StorageLocation : String(21);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Stock Type'
  @sap.quickinfo : 'Stock Type of Goods Movement (Stock Identifier)'
  StockType : String(2);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Material Documents Document Flow Status'
entity ZCA_BPF_LAYOUT_METADATA_SRV.Mmim_MatDocFlowStatus {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Document'
  @sap.quickinfo : 'Number of Material Document'
  key MaterialDocument : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Doc. Year'
  @sap.quickinfo : 'Material Document Year'
  key MaterialDocumentYear : String(4) not null;
  @sap.display.format : 'NonNegative'
  Status : String(2);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Material Documents Document Flow Status'
entity ZCA_BPF_LAYOUT_METADATA_SRV.Mmim_MatDocFlowStatus2 {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Document'
  @sap.quickinfo : 'Number of Material Document'
  key MaterialDocument : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Doc. Year'
  @sap.quickinfo : 'Material Document Year'
  key MaterialDocumentYear : String(4) not null;
  @sap.display.format : 'NonNegative'
  Status : String(2);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Document Flow Status Accounting'
entity ZCA_BPF_LAYOUT_METADATA_SRV.Mmim_MatDocFlowStatusa {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Number'
  @sap.quickinfo : 'Accounting Document Number'
  key AccountingDocument : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Fiscal Year'
  key FiscalYear : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Undefined range (can be used for patch levels)'
  @sap.heading : ''
  Status : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Document Flow Status MATDOC'
entity ZCA_BPF_LAYOUT_METADATA_SRV.Mmim_MatDocFlowStatuso {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase order'
  @sap.quickinfo : 'Purchase order number'
  key ReferenceDocument : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Undefined range (can be used for patch levels)'
  @sap.heading : ''
  Status : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Process Flow Status Production'
entity ZCA_BPF_LAYOUT_METADATA_SRV.Mmim_MatDocFlowStatusp {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order'
  @sap.quickinfo : 'Order Number'
  key ReferenceDocument : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Undefined range (can be used for patch levels)'
  @sap.heading : ''
  Status : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Status Reversal Documents'
entity ZCA_BPF_LAYOUT_METADATA_SRV.Mmim_Matdocflowstatusr {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Document'
  @sap.quickinfo : 'Number of Material Document'
  key MaterialDocument : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Doc. Year'
  @sap.quickinfo : 'Material Document Year'
  key MaterialDocumentYear : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Undefined range (can be used for patch levels)'
  @sap.heading : ''
  Status : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Status Reversal Documents'
entity ZCA_BPF_LAYOUT_METADATA_SRV.Mmim_Matdocflowstatusr2 {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material Document'
  @sap.quickinfo : 'Number of Material Document'
  key MaterialDocument : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Material Doc. Year'
  @sap.quickinfo : 'Material Document Year'
  key MaterialDocumentYear : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Undefined range (can be used for patch levels)'
  @sap.heading : ''
  Status : String(4);
};

@cds.external : true
type ZCA_BPF_LAYOUT_METADATA_SRV.DummyFunctionImportResult {
  @sap.label : 'TRUE'
  IsInvalid : Boolean;
};

@cds.external : true
type ZCA_BPF_LAYOUT_METADATA_SRV.ValidationFunctionResult {
  @sap.label : 'Is valid'
  IsValid : Boolean;
};

@cds.external : true
action ZCA_BPF_LAYOUT_METADATA_SRV.C_PurchaseOrderTPCwr_po(
  PurchasingDocument : String(10),
  PurchasingDocumentCategory : String(1)
) returns ZCA_BPF_LAYOUT_METADATA_SRV.C_PurchaseOrderTP;

