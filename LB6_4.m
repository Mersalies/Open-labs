clc;
clear;

disp('Задание №: 4');
disp('Тема: Обработка и сортировка данных в одномерных массивах');
disp('Вариант: 18');
disp('ФИО: *********');
disp('Номер группы: ****');
disp('');

%-----------------------------------------------------

% Ввод данных
K = input('Введите коэффициент K: ');
L = input('Введите коэффициент L: ');


% Ввод количества элементов массива
n = input('Введите количество элементов массива X: ');

% Проверка на отрицательную длину массива
if n <= 0
    disp('Массив не может быть отрицательной или нулевой длины');
else

% Массива X
X = zeros(1, n);

%-----------------------------------------------------

% Ввод элементов массива X
disp('Введите элементы массива X:');
for i = 1:n
    X(i) = input(['Элемент ' num2str(i) ': ']);
end

% Преобразование с циклом
S_m = zeros(1, n);
for i = 1:n
    S_m(i) = K * X(i) + L;
end
% Преобразование без цикла
S_vec = K * X + L;


%-----------------------------------------------------
% Вывод заголовков таблицы
disp('');
disp('Исходный массив X | S (цикл) | S (векториз.)');
disp('---------------------------------------------');

% Вывод результатов
for i = 1:n
    fprintf('%15.3f | %9.3f | %10.3f\n', X(i), S_m(i), S_vec(i));
end
end
clear ans;
