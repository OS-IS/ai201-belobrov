- Від імені кореневого користувача (postgres) додамо 3 нових рядки до таблиці (усього 4):

![image](https://github.com/user-attachments/assets/ed67e496-28f5-4568-8d52-9f1d0b734125)

- Створимо нову схему, додамо новий view що буде фільтрувати таблицю за ідентифікатором `t_id` та надамо права на читання з нього користувачеві:

![image](https://github.com/user-attachments/assets/0fb485fe-309e-46a8-a5dc-c6e06ba4e361)

- Перевіримо роботу механізмом вибіркового керування доступом, виконаємо наступні команди від імені користувача:

![image](https://github.com/user-attachments/assets/1052dc3e-a9bb-4399-893a-96fe65cce841)

- Створимо нові правила `bielobrov_insert`, `bielobrov_update`, `bielobrov_delete` для виконання відповідних операцій над віртуальною таблицею:

![image](https://github.com/user-attachments/assets/61260ac3-6a75-43c5-9575-55fed256070a)

- Надамо користувачеві доступ до виконання операцій додавання, оновлення, видалення даних до віртуальної таблиці. Перевіримо роботу нових правил:

![image](https://github.com/user-attachments/assets/e4dc7bb2-c563-4c4d-a64a-ce583b2318b2)
![image](https://github.com/user-attachments/assets/b738976e-e153-4422-b99f-04fc6e6be730)





