<table class="ctable" border="0" cellspacing="0" cellpadding="2">


    <tr>
        <td style="font-weight: bolder;font-size: larger;" align="center" colspan="7" valign="middle">
            Заказ № {{document_number}} от {{date}} <br>
        </td>
    </tr>

 
 
    <tr>
        <td></td>
        <td valign="top"><b>Терминал</b></td>
        <td colspan="5">{{pos_name}}</td>
    </tr>
    {{#fiscalnumber}}
 
    <tr>
        <td></td>
        <td valign="top"><b>ФН чека</b></td>
        <td colspan="5">{{fiscalnumber}}</td>    
    
        
    </tr>
    {{/fiscalnumber}}
    {{#contact}}
    <tr>
        <td></td>
        <td valign="top"><b>Контакт</b></td>
        <td colspan="5">{{contact}}</td>
    </tr>
    {{/contact}}
   {{#isdelivery}}
    <tr>
        <td></td>
        <td valign="top"><b>Доставка</b></td>
        <td colspan="5">{{deliverydata}}</td>
    </tr>
    {{/isdelivery}}
  {{#notes}}
    <tr>
        <td></td>
        <td valign="top"><b>Коментарий</b></td>
        <td colspan="5">{{notes}}</td>
    </tr>
    {{/notes}}
    <tr style="font-weight: bolder;">
        <th style="border-top:1px #000 solid;border-bottom:1px #000 solid;" width="30">№</th>
        <th style="border-top:1px #000 solid;border-bottom:1px #000 solid;text-align: left;">Наименование</th>
        <th style="border-top:1px #000 solid;border-bottom:1px #000 solid;text-align: left;">Код</th>
        <th style="border-top:1px #000 solid;border-bottom:1px #000 solid;">Ед.</th>

        <th style="text-align: right;border-top:1px #000 solid;border-bottom:1px #000 solid;" width="60">Кол.</th>
        <th style="text-align: right;border-top:1px #000 solid;border-bottom:1px #000 solid;" width="60">Цена</th>
        <th style="text-align: right;border-top:1px #000 solid;border-bottom:1px #000 solid;" width="80">Сумма</th>
    </tr>
    {{#_detail}}
    <tr>
        <td align="right">{{no}}</td>
        <td>{{tovar_name}}</td>
        <td>{{tovar_code}}</td>
        <td>{{msr}}</td>

        <td align="right">{{quantity}}</td>
        <td align="right">{{price}}</td>
        <td align="right">{{amount}}</td>
    </tr>
    {{/_detail}}
    <tr style="font-weight: bolder;">
        <td style="border-top:1px #000 solid;" colspan="6" align="right">Итого:</td>
        <td style="border-top:1px #000 solid;" align="right">{{total}}</td>
    </tr>

    {{^prepaid}}
    {{#isdisc}}
    <tr style="font-weight: bolder;">
        <td colspan="6" align="right">Скидка:</td>
        <td align="right">{{paydisc}}</td>
    </tr>
    {{/isdisc}}
    <tr style="font-weight: bolder;">
        <td colspan="6" align="right">К оплате:</td>
        <td align="right">{{payamount}}</td>
    </tr>
    <tr style="font-weight: bolder;">
        <td colspan="6" align="right">Оплата:</td>
        <td align="right">{{payed}}</td>
    </tr>
    <tr style="font-weight: bolder;">
        <td colspan="6" align="right">Сдача:</td>
        <td align="right">{{exchange}}</td>
    </tr>
    {{/prepaid}}

</table>

