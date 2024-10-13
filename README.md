# calculate-hyprland

## Hyprland Profile for Calculate Linux Desktop

### Проблемы:
1. **Звук** (alsa/pipewire) - [Подробнее](https://forums.gentoo.org/viewtopic-t-1169508.html)
2. **Настройка жестов на тачпаде** - поддержка жестов с 3 и 4 пальцами
3. **Исправление tmux** (проблема с xdg-desktop-session)
4. **Восстановление файла `/etc/hosts`**
5. **Автоматический запуск cl-desktop** при каждом входе в сессию (возможно, через tuigreet)
6. **Настройка копирования и вставки** (привязка жеста двумя пальцами к нажатию средней кнопки мыши)

> **Предупреждение:** Это может занять много времени. Вы потеряете установленные программы, которых нет в шаблонах профиля.

---

### Как создать образ в Calculate Linux Desktop OS?

**Рекомендуемый способ — использовать утилиты Calculate:**

1. [Скачать](https://wiki.calculate-linux.org/desktop) образ Calculate Linux Scratch (CLS)
2. Подготовить новый билд ОС:
    ```bash
    cl-builder-prepare --iso /[путь_к_образу]/[название_образа].iso --id distros:CLDT/amd64/20
    ```
3. Обновить сборку ОС:
    ```bash
    cl-builder-update -o on -e on -C on -v on -f
    ```
4. Обновить профиль сборки ОС:
    ```bash
    cl-builder-profile --id distros:CLDT/amd64/20 --url https://github.com/vmtlw/cldt-overlay.git CLDT/20
    ```
5. Войти в chroot:
    ```bash
    chroot /run/calculate/mount/distros_CLDT_amd64_20/
    ```
6. Создать образ:
    ```bash
    cl-builder-image --id distros:CLDT/amd64/20 --video off
    ```
7. Завершить сборку:
    ```bash
    cl-builder-break
    ```

Новый образ будет находиться в директории `/var/calculate/linux/`.

> **Предупреждение:** Процесс создания может занять значительное время.

