﻿#language: ru

@tree

Функционал: заказ покупателя

Как Тестировщик я хочу
проверить заполнение полей документа Заказ покупателя 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения
	
Сценарий: подготовительный сценарий (заказ покупателя)
	Когда экспорт основных данных

Сценарий: проверка заполнения полей документа Заказ покупаетля
	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
	И я нажимаю кнопку выбора у поля с именем "Partner"
	И в таблице "List" я активизирую поле с именем "Description"
	И в таблице "List" я перехожу к строке:
		| 'Наименование'            |
		| 'Клиент 1 (1 соглашение)' |
	И в таблице "List" я выбираю текущую строку	
	И в таблице "ItemList" я активизирую поле с именем "ItemListLineNumber"
	И я нажимаю кнопку выбора у поля с именем "Agreement"
	И в таблице "List" я активизирую поле с именем "Description"
	И в таблице "List" я перехожу к строке:
		| 'Наименование'                                                    |
		| 'Соглашение с клиентами (расчет по документам + кредитный лимит)' |
	И в таблице "List" я выбираю текущую строку
	Тогда открылось окно 'Табличная часть товаров будет обновлена'
	И я нажимаю на кнопку с именем 'FormCancel'	

Сценарий: блокировка поля контрагент, если не выбран партнер	
	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
	И в поле с именем 'Partner' я ввожу текст ''
	И я перехожу к следующему реквизиту
	Тогда элемент формы "Контрагент" не доступен
	И я нажимаю кнопку выбора у поля с именем "Partner"
	И в таблице "List" я активизирую поле с именем "Description"
	И в таблице "List" я перехожу к строке:
		| 'Наименование'            |
		| 'Клиент 1 (1 соглашение)' |
	И в таблице "List" я выбираю текущую строку
	И я перехожу к следующему реквизиту
	Тогда открылось окно 'Табличная часть товаров будет обновлена'
	И я нажимаю на кнопку с именем 'FormCancel'
	Тогда элемент формы "Контрагент" доступен	