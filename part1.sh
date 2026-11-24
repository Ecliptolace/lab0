#!/bin/bash
# Создание структуры каталогов

#!/bin/bash

mkdir -p claude_monet/warehouse \
         claude_monet/meat_delivery \
         claude_monet/fish_delivery \
         claude_monet/kitchen/hot_station \
         claude_monet/kitchen/cold_station \
         claude_monet/office

touch claude_monet/warehouse/stock_list \
      claude_monet/warehouse/rejection_log \
      claude_monet/meat_delivery/senya_invoice \
      claude_monet/meat_delivery/supplier_note \
      claude_monet/fish_delivery/fedya_invoice \
      claude_monet/fish_delivery/freshness_report \
      claude_monet/kitchen/hot_station/barinov_claim \
      claude_monet/kitchen/cold_station/fish_order \
      claude_monet/office/vika_payment \
      delivery_call

echo "На складе осталось десять упаковок мяса" > claude_monet/warehouse/stock_list
echo "Свежая рыба размещена в холодильнике" >> claude_monet/warehouse/stock_list
echo "Поставщик зелени ожидается вечером" >> claude_monet/warehouse/stock_list

echo "Поставщик забрал коробку испорченных овощей" > claude_monet/warehouse/rejection_log
echo "Две упаковки мяса отправлены на возврат" >> claude_monet/warehouse/rejection_log
echo "Баринов потребовал заменить продукты сегодня" >> claude_monet/warehouse/rejection_log

echo "Говядина двадцать килограммов" > claude_monet/meat_delivery/senya_invoice
echo "Телятина десять килограммов" >> claude_monet/meat_delivery/senya_invoice
echo "Поставщик мяса подтвердил вес заказа" >> claude_monet/meat_delivery/senya_invoice

echo "Доставка мяса задержалась на сорок минут" > claude_monet/meat_delivery/supplier_note
echo "Сеня принял продукты на складе" >> claude_monet/meat_delivery/supplier_note
echo "Следующий заказ привезут утром" >> claude_monet/meat_delivery/supplier_note

echo "Сибас двенадцать штук" > claude_monet/fish_delivery/fedya_invoice
echo "Дорадо восемь штук" >> claude_monet/fish_delivery/fedya_invoice
echo "Поставщик рыбы добавил коробку льда" >> claude_monet/fish_delivery/fedya_invoice

echo "Рыба имеет свежий запах" > claude_monet/fish_delivery/freshness_report
echo "Температура при доставке не нарушена" >> claude_monet/fish_delivery/freshness_report
echo "Федя разрешил использовать весь заказ" >> claude_monet/fish_delivery/freshness_report

echo "Баринов недоволен опозданием машины" > claude_monet/kitchen/hot_station/barinov_claim
echo "Шеф требует проверять каждого поставщика" >> claude_monet/kitchen/hot_station/barinov_claim
echo "Качество продуктов важнее скидки" >> claude_monet/kitchen/hot_station/barinov_claim

echo "Для банкета требуется свежая рыба" > claude_monet/kitchen/cold_station/fish_order
echo "Федя выбрал сибаса и дорадо" >> claude_monet/kitchen/cold_station/fish_order
echo "Заказ нужно передать Вике" >> claude_monet/kitchen/cold_station/fish_order

echo "Вика получила накладные от Сени и Феди" > claude_monet/office/vika_payment
echo "Оплата поставщикам назначена на вечер" >> claude_monet/office/vika_payment
echo "Возврат продуктов вычитается из суммы" >> claude_monet/office/vika_payment

echo "Поставщик позвонил перед открытием ресторана" > delivery_call
echo "Машина с продуктами стоит у входа" >> delivery_call
echo "Лёва должен открыть склад" >> delivery_call

chmod 755 claude_monet
chmod u=rwx,g=rx,o= claude_monet/warehouse
chmod 640 claude_monet/warehouse/stock_list
chmod u=rw,g=r,o= claude_monet/warehouse/rejection_log
chmod 750 claude_monet/meat_delivery
chmod u=rw,g=r,o= claude_monet/meat_delivery/senya_invoice
chmod 644 claude_monet/meat_delivery/supplier_note
chmod u=rwx,g=rx,o= claude_monet/fish_delivery
chmod 640 claude_monet/fish_delivery/fedya_invoice
chmod u=rw,g=r,o=r claude_monet/fish_delivery/freshness_report
chmod 750 claude_monet/kitchen
chmod u=rwx,g=rx,o= claude_monet/kitchen/hot_station
chmod 640 claude_monet/kitchen/hot_station/barinov_claim
chmod u=rwx,g=rx,o= claude_monet/kitchen/cold_station
chmod u=rw,g=r,o= claude_monet/kitchen/cold_station/fish_order
chmod 750 claude_monet/office
chmod 640 claude_monet/office/vika_payment
chmod u=rw,g=r,o= delivery_call

