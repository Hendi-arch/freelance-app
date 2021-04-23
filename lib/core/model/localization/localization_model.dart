class LocalizationModel {
  String? userName;
  String? password;
  String? signIn;
  String? forgotPassword;
  String? noDataToDisplay;
  String? addTask;
  String? task;
  String? taskId;
  String? assignmentName;
  String? taskDate;
  String? dueDate;
  String? save;
  String? taskDetail;
  String? start;
  String? finish;
  String? attachment;
  String? showAttachment;
  String? search;
  String? taskAssignmentApproval;
  String? documentReminder;
  String? goodsReceiptSupplier;
  String? goodsReceiptHeadOffice;
  String? opnameStock;
  String? itemRequest;
  String? shipTravelHistory;
  String? detailedTransactionList;
  String? listItemRequest;
  String? listOpnameStock;
  String? item;
  String? deck;
  String? deckOrEngine;
  String? engine;
  String? activity;
  String? history;
  String? itemRequestHistory;
  String? goodsReceiptHistory;
  String? assignmentHistory;
  String? stockOpnameHistory;
  String? approval;
  String? sync;
  String? renewDocument;
  String? effectiveDate;
  String? validityDate;
  String? notes;
  String? cancel;
  String? renew;
  String? goodsReceipt;
  String? number;
  String? deliveryOrders;
  String? supplier;
  String? date;
  String? receiptDate;
  String? confirm;
  String? showMoreDetail;
  String? itemName;
  String? unitName;
  String? itemCode;
  String? qty;
  String? receiptQty;
  String? opname;
  String? opnameDate;
  String? delete;
  String? addItem;
  String? ship;
  String? dateFrom;
  String? dateTo;
  String? openMapView;
  String? filterPeriode;
  String? requestDate;
  String? dateRequired;
  String? tapToSee;

  LocalizationModel(
      {this.userName,
      this.password,
      this.signIn,
      this.forgotPassword,
      this.noDataToDisplay,
      this.addTask,
      this.task,
      this.taskId,
      this.assignmentName,
      this.taskDate,
      this.dueDate,
      this.save,
      this.taskDetail,
      this.start,
      this.finish,
      this.attachment,
      this.showAttachment,
      this.search,
      this.taskAssignmentApproval,
      this.documentReminder,
      this.goodsReceiptSupplier,
      this.goodsReceiptHeadOffice,
      this.opnameStock,
      this.itemRequest,
      this.shipTravelHistory,
      this.detailedTransactionList,
      this.listItemRequest,
      this.listOpnameStock,
      this.item,
      this.deck,
      this.deckOrEngine,
      this.engine,
      this.activity,
      this.history,
      this.itemRequestHistory,
      this.goodsReceiptHistory,
      this.assignmentHistory,
      this.stockOpnameHistory,
      this.approval,
      this.sync,
      this.renewDocument,
      this.effectiveDate,
      this.validityDate,
      this.notes,
      this.cancel,
      this.renew,
      this.goodsReceipt,
      this.number,
      this.deliveryOrders,
      this.supplier,
      this.date,
      this.receiptDate,
      this.confirm,
      this.showMoreDetail,
      this.itemName,
      this.unitName,
      this.itemCode,
      this.qty,
      this.receiptQty,
      this.opname,
      this.opnameDate,
      this.delete,
      this.addItem,
      this.ship,
      this.dateFrom,
      this.dateTo,
      this.openMapView,
      this.filterPeriode,
      this.requestDate,
      this.dateRequired,
      this.tapToSee});

  LocalizationModel.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    password = json['password'];
    signIn = json['signIn'];
    forgotPassword = json['forgotPassword'];
    noDataToDisplay = json['noDataToDisplay'];
    addTask = json['addTask'];
    task = json['task'];
    taskId = json['taskId'];
    assignmentName = json['assignmentName'];
    taskDate = json['taskDate'];
    dueDate = json['dueDate'];
    save = json['save'];
    taskDetail = json['taskDetail'];
    start = json['start'];
    finish = json['finish'];
    attachment = json['attachment'];
    showAttachment = json['showAttachment'];
    search = json['search'];
    taskAssignmentApproval = json['taskAssignmentApproval'];
    documentReminder = json['documentReminder'];
    goodsReceiptSupplier = json['goodsReceiptSupplier'];
    goodsReceiptHeadOffice = json['goodsReceiptHeadOffice'];
    opnameStock = json['opnameStock'];
    itemRequest = json['itemRequest'];
    shipTravelHistory = json['shipTravelHistory'];
    detailedTransactionList = json['detailedTransactionList'];
    listItemRequest = json['listItemRequest'];
    listOpnameStock = json['listOpnameStock'];
    item = json['item'];
    deck = json['deck'];
    deckOrEngine = json['deckOrEngine'];
    engine = json['engine'];
    activity = json['activity'];
    history = json['history'];
    itemRequestHistory = json['itemRequestHistory'];
    goodsReceiptHistory = json['goodsReceiptHistory'];
    assignmentHistory = json['assignmentHistory'];
    stockOpnameHistory = json['stockOpnameHistory'];
    approval = json['approval'];
    sync = json['sync'];
    renewDocument = json['renewDocument'];
    effectiveDate = json['effectiveDate'];
    validityDate = json['validityDate'];
    notes = json['notes'];
    cancel = json['cancel'];
    renew = json['renew'];
    goodsReceipt = json['goodsReceipt'];
    number = json['number'];
    deliveryOrders = json['deliveryOrders'];
    supplier = json['supplier'];
    date = json['date'];
    receiptDate = json['receiptDate'];
    confirm = json['confirm'];
    showMoreDetail = json['showMoreDetail'];
    itemName = json['itemName'];
    unitName = json['unitName'];
    itemCode = json['itemCode'];
    qty = json['qty'];
    receiptQty = json['receiptQty'];
    opname = json['opname'];
    opnameDate = json['opnameDate'];
    delete = json['delete'];
    addItem = json['addItem'];
    ship = json['ship'];
    dateFrom = json['dateFrom'];
    dateTo = json['dateTo'];
    openMapView = json['openMapView'];
    filterPeriode = json['filterPeriode'];
    requestDate = json['requestDate'];
    dateRequired = json['dateRequired'];
    tapToSee = json['tapToSee'];
  }
}
