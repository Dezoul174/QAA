﻿#language: ru

@tree

Функционал: Прикрепление файла картинки

 Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения
	
Сценарий: подготовительный
	Когда добавление картинок

Сценарий: прикрепления файла картинки
* Добавление картинки в карточку товара
	И Я открываю навигационную ссылку "e1cib/list/Справочник.Товары"
	Когда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Ремонт'       |
	И в таблице "Список" я выбираю текущую строку
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"			
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'     |
		| 'itempicture1.png' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Проверка картинки в карточке товара
	Тогда элемент формы с именем "ФайлКартинки" стал равен 'itempicture1.png'
		
		
		

	
		
		

		
		
	
		
