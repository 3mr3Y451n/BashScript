#!/bin/sh

echo çift tırnak ile kaçış karakteri kullanma
echo -e "Ömer""'""i gördün mü?\n"

echo tek tırnak ile kaçış karakteri kullanma
echo -e 'Ömer'\''i gördün mü?\n'

echo dolar ve tek tırnak ile kaçış karakteri kullanma
echo $'Ömer\'i gördün mü?\n'
