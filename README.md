# Cellular Filling

https://github.com/shutrup/CellularFillingTest/assets/84622862/154df9b9-8691-4709-a2ab-0747c6f87085

Этот проект является приложением на SwiftUI для симуляции создания нового мира с клетками, где каждая клетка может быть живой или мертвой. Приложение позволяет динамически добавлять клетки в мир с определенными правилами о зарождении жизни и ее исчезновении.

## Описание

Приложение представляет из себя визуальную симуляцию, где пользователь может добавлять клетки в мир, нажимая на кнопку. Каждая новая клетка может быть живой или мертвой с равной вероятностью. Особые условия приводят к зарождению жизни или ее угасанию:

- Жизнь зарождается, если трижды подряд создается живая клетка.
- Если трижды подряд рождается мертвая клетка, жизнь в окрестности угасает.

## Технологии

- Swift
- SwiftUI
