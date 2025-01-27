<table class="ctable" border="0" cellpadding="1" cellspacing="0"  {{{style}}}}>
    <tr style="font-weight: bolder;">
        <td colspan="3">Чек {{document_number}}</td>
    </tr>
    {{#fiscalnumber}}
    <tr>
        <td colspan="3">Фискальный чек</td>
    </tr>
    <tr>
        <td colspan="3">ФН чека {{fiscalnumber}}</td>
    </tr>
    {{/fiscalnumber}}
    {{#fiscalnumberpos}}
    <tr>
        <td colspan="3">ФН РРО {{fiscalnumberpos}}</td>
    </tr>
    {{/fiscalnumberpos}}
    <tr>

        <td colspan="3">от {{time}}</td>
    </tr>
    <tr>

        <td colspan="2"> {{firm_name}}</td>
    </tr>
    <tr>

        <td colspan="3">ИНН {{inn}}</td>
    </tr>
    {{#shopname}}
    <tr>
        <td colspan="3"> {{shopname}}</td>
    </tr>
    {{/shopname}}

    <tr>

        <td colspan="3"> {{address}}</td>
    </tr>
    <tr>
        <td colspan="3"> {{phone}}</td>
    </tr>
    {{#customer_name}}
    <tr>
        <td colspan="3"> Покупатель:</td>
    </tr>
    <tr>
        <td colspan="3"> {{customer_name}}</td>
    </tr>

    {{/customer_name}}

 
    <tr>
        <td colspan="3">Кассир:</td>
    </tr>
    <tr>
        <td colspan="3"> {{username}}</td>
    </tr>


    {{#_detail}}
  


    <tr>
        <td colspan="3">{{tovar_name}}</td>
        <td valign="top"  align="right">{{quantity}}</td>
        <td valign="top"  align="right">{{amount}}</td>
    </tr>
    {{/_detail}}
    <tr style="font-weight: bolder;">
        <td colspan="2" align="right">Всего:</td>
        <td align="right">{{total}}</td>
    </tr>

    {{^prepaid}}
    {{#isdisc}}
    <tr style="font-weight: bolder;">
        <td colspan="2" align="right">Скидка:</td>
        <td align="right">{{paydisc}}</td>
    </tr>
    {{/isdisc}}
    <tr style="font-weight: bolder;">
        <td colspan="2" align="right">К оплате:</td>
        <td align="right">{{payamount}}</td>
    </tr>
    <tr style="font-weight: bolder;">
        <td colspan="2" align="right">Оплата:</td>
        <td align="right">{{payed}}</td>
    </tr>
    <tr style="font-weight: bolder;">
        <td colspan="2" align="right">Сдача:</td>
        <td align="right">{{exchange}}</td>
    </tr>
    
    
    <tr>
               <td colspan="3" > 
    {{#nal}}
    Форма оплаты: наличные
    {{/nal}}
    {{^nal}}
    Форма оплаты: банковская карта
    {{/nal}}

             </td>
       </tr>       
    
    {{/prepaid}}


              

   
    <tr  >
        <td colspan="3"><br>{{checkslogan}}</td>

    </tr>
       <tr>                    
                        <td colspan="3"> 
                            {{{docqrcode}}}
                        </td>

                    </tr>    
</table>