
SET NAMES 'utf8';


 
INSERT INTO `users` (`user_id`, `userlogin`, `userpass`, `createdon`, `email`, `acl`, `disabled`, `options`) VALUES(4, 'admin', '$2y$10$GsjC.thVpQAPMQMO6b4Ma.olbIFr2KMGFz12l5/wnmxI1PEqRDQf.', '2017-01-01', 'admin@admin.admin', 'a:8:{s:7:"acltype";i:0;s:6:"onlymy";i:0;s:7:"aclview";N;s:7:"acledit";N;s:6:"aclexe";N;s:9:"aclbranch";N;s:7:"widgets";N;s:7:"modules";N;}', 0, 'a:4:{s:9:"smartmenu";s:3:"7,8";s:8:"defstore";s:2:"19";s:5:"defmf";s:1:"2";s:8:"pagesize";s:2:"15";}');

 
INSERT INTO `stores` (`store_id`, `storename`, `description`, `branch_id`) VALUES (28, 'Основний склад', '', 0);
INSERT INTO `mfund` (`mf_id`, `mf_name`, `description`, `branch_id`) VALUES (2, 'Каса', 'Основна каса', 0);

  
INSERT INTO `metadata` (`meta_id`, `meta_type`, `description`, `meta_name`, `menugroup`, `disabled`) VALUES
	(1, 4, 'Склади', 'StoreList', 'Товары', 0),
	(2, 4, 'Номенклатура', 'ItemList', 'Товары', 0),
	(3, 4, 'Співробітники', 'EmployeeList', '', 0),
	(4, 4, 'Категорії товарів', 'CategoryList', 'Товары', 0),
	(5, 4, 'Контрагенти', 'CustomerList', '', 0),
	(6, 1, 'Прибуткова накладна', 'GoodsReceipt', 'Закупки', 0),
	(7, 1, 'Видаткова накладна', 'GoodsIssue', 'Продажи', 0),
	(8, 3, 'Загальний журнал', 'DocList', '', 0),
	(10, 1, 'Гарантійний талон', 'Warranty', 'Продажи', 0),
	(12, 2, 'Рух по складу', 'ItemActivity', 'Склад', 0),
	(13, 2, 'ABC аналіз', 'ABC', '', 0),
	(14, 4, 'Послуги, роботи', 'ServiceList', '', 0),
	(15, 1, 'Акт виконаних робіт', 'ServiceAct', 'Услуги', 0),
	(16, 1, 'Повернення від покупця', 'ReturnIssue', 'Продажи', 0),
	(18, 3, 'Наряди', 'TaskList', '', 0),
	(19, 1, 'Наряд', 'Task', 'Производство', 0),
	(20, 2, 'Оплата за нарядами', 'EmpTask', 'Производство', 0),
	(21, 2, 'Закупівлі', 'Income', 'Закупки', 0),
	(22, 2, 'Продажі', 'Outcome', 'Продажи', 0),
	(27, 3, 'Замовлення клієнтів', 'OrderList', 'Продажи', 0),
	(28, 1, 'Замовлення', 'Order', 'Продажи', 0),
	(30, 1, 'Оприбуткування з виробництва', 'ProdReceipt', 'Производство', 0),
	(31, 1, 'Списання на виробництво', 'ProdIssue', 'Производство', 0),
	(32, 2, 'Звіт по виробництву', 'Prod', 'Производство', 0),
	(33, 4, 'Виробничі дільниці', 'ProdAreaList', '', 0),
	(35, 3, 'Продажі', 'GIList', 'Продажи', 0),
	(36, 4, 'Устаткування', 'EqList', '', 0),
	(37, 3, 'Закупівлі', 'GRList', 'Закупки', 0),
	(38, 1, 'Заявка постачальнику', 'OrderCust', 'Закупки', 0),
	(39, 3, 'Заявки постачальникам', 'OrderCustList', 'Закупки', 0),
	(40, 2, 'Прайс', 'Price', 'Склад', 0),
	(41, 1, 'Повернення постачальнику', 'RetCustIssue', 'Закупки', 0),
	(44, 1, 'Перекомплектація ТМЦ', 'TransItem', 'Склад', 0),
	(46, 4, 'Каси', 'MFList', '', 0),
	(47, 3, 'Журнал платежів', 'PayList', 'Касса и платежи', 0),
	(48, 2, 'Рух по грошовим рахунках', 'PayActivity', 'Платежи', 0),
	(50, 1, 'Прибутковий ордер', 'IncomeMoney', 'Платежи', 0),
	(51, 1, 'Видатковий ордер', 'OutcomeMoney', 'Платежи', 0),
	(53, 2, 'Платіжний баланс', 'PayBalance', 'Платежи', 0),
	(57, 1, 'Інвентаризація', 'Inventory', 'Склад', 0),
	(58, 1, 'Рахунок вхідний', 'InvoiceCust', 'Закупки', 0),
	(59, 1, 'Рахунок-фактура', 'Invoice', 'Продажи', 0),
	(60, 5, 'Імпорт', 'Import', '', 0),
	(61, 3, 'Рух ТМЦ', 'StockList', 'Склад', 0),
	(62, 1, 'Касовий чек', 'POSCheck', 'Продажи', 0),
	(63, 2, 'Товари в дорозі', 'CustOrder', 'Закупки', 0),
	(64, 1, 'Списання ТМЦ', 'OutcomeItem', 'Склад', 0),
	(65, 1, 'Оприбуткування ТМЦ', 'IncomeItem', 'Склад', 0),
	(67, 5, 'АРМ касира', 'ARMPos', '', 0),
	(69, 3, 'Роботи, послуги', 'SerList', '', 0),
	(70, 3, 'Розрахунки з контрагентами', 'PayCustList', 'Касса и платежи', 0),
	(71, 3, 'Товари на складі', 'ItemList', 'Склад', 0),
	(75, 5, 'Експорт', 'Export', '', 0);