#define include #include

include "stdio.rs"

#define PROMPT "What is your name: "
#define ERROR "Fail reading string"
#define FORMAT "Hello, {}!"

fn main() {
    // Создаем новый строковый буфер для хранения ввода
    let mut name = String::new();

    // Запрашиваем ввод пользователя
    print(PROMPT);

    // Читаем строку из стандартного ввода
    input(name, ERROR);

    // Убираем перенос строки
    let name = name.trim();

    // Выводим приветствие
    print(FORMAT, name);
}
