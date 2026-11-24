#!/bin/bash  
ls -lR . | grep "^-" | grep -v "copy" | sort -n -k 5 | tail -n 5  
grep -rih -e "поставщик" -e "продукт" claude_monet | grep -iv "утром" | sort | head -n 6  
grep -rl "рыб" claude_monet/fish_delivery claude_monet/warehouse/fish_backup | wc -l  
cat claude_monet/meat_delivery/*_invoice claude_monet/fish_delivery/*_invoice | tail -n 2 | grep -i -e "поставщик" -e "килограмм" -e "штук" | sort -r  
grep -v "поставщик" claude_monet/warehouse/all_invoices | sort -r | head -n 3 | wc -w  
ls -liR . | grep -E "^[0-9]+[[:space:]]+-[^[:space:]]+[[:space:]]+2[[:space:]]" | sort -n -k 1
ls -lR . | grep "^l" | sort -k 9 | tail -n 1

rm claude_monet/office/call_copy
rm stock_link
rm claude_monet/kitchen/warehouse_access
rm claude_monet/meat_delivery/invoice_duplicate
rm claude_monet/office/urgent_fish_order
rmdir claude_monet/kitchen/cold_station
rm claude_monet/warehouse/rejection_log
rm -R claude_monet/warehouse/fish_backup