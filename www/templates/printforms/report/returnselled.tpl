<table class="ctable" border="0" cellpadding="2" cellspacing="0">

    <tr style="font-size:larger; font-weight: bolder;">
        <td align="center" colspan="3">
            Возвраты  от  покупателей.
        </td>
    </tr>

    <tr style="font-weight: bolder;">

         
        <th style="border: solid black 1px">Товар</th>
        <th style="border: solid black 1px">Код</th>
        <th align="right" style="border: solid black 1px">Продано</th>
        <th align="right" style="border: solid black 1px">Возврат</th>
        <th align="right" style="border: solid black 1px">%</th>

    </tr>
    {{#_detail}}
    <tr>

   
        <td>{{itemname}}</td>
        <td>{{item_code}}</td>

        <td align="right">{{sellqty}}</td>
        <td align="right">{{rqty}}</td>
        <td align="right">{{pr}}</td>

    </tr>
    {{/_detail}}


</table>
<br> <br>
</body>
</html>
