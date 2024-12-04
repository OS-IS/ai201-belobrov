- Для роботи повноважного керування доступом, створемо необхідні таблиці:

![image](https://github.com/user-attachments/assets/d2295b09-39bf-4cfb-aecf-0c0c1431674f)

- У початковій таблиці з даними створимо новий стовпчик `access_level` та заповнимо його:

![image](https://github.com/user-attachments/assets/d08df0d6-b452-41bd-b21c-9350c62d4115)

- Створимо таблицю `user_access_level`, яка буде визначати рівень доступу відпоовідних користувачів та надамо рівень доступу `restricted` створеному раніше користувачеві:

![image](https://github.com/user-attachments/assets/49ee8cb9-0b21-40cc-b8d3-48b785ba3433)

- У раніше створеній схемі, створимо новий view, доступ до якого даних якого буде відповідати поточному рівню доступу створеного користувача:

![image](https://github.com/user-attachments/assets/931816e9-90fd-46fe-8f0f-8818326da8d9)

- Створимо правила `bielobrov_insert`, `bielobrov_update`, `bielobrov_delete` аналогічні створеним раніше правилам, які дозволять користувачеві маніпулювати даними початкової таблиці використовуючи віртуальну, надамо права на додавання, редагування та видалення даних з віртуальної таблиці користувачеві:

![image](https://github.com/user-attachments/assets/2e149110-08ae-4173-a723-4b3e1dc79873)

- Перевіримо роботу механізму повноважного керування доступом виконавши наступні команди від імені створеного користувача:

![image](https://github.com/user-attachments/assets/593b8a8b-8fed-4380-b75f-8db443132ec1)
![image](https://github.com/user-attachments/assets/7c07e569-df71-47c0-bafe-0b3e461a1ebf)
