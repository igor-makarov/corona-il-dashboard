---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: page
---

{% assign data = site.data.data %}

<div dir="rtl">
<center><h4><a href="https://govextra.gov.il/ministry-of-health/corona/corona-virus">{{ data['timestamp'] }}</a></h4></center>

<style>
table {
  border: none;
  border-collapse: collapse;
  table-layout: fixed;
  width: 100%;
  text-align: center;
  margin-bottom: 10pt;
}
</style>

<table>
  <tr>
    <th>מקרים מאומתים</th>
    <th>מקרים חדשים</th>
  </tr>
  <tr>
    <td>{{ data['total_cases'] }}</td>
    <td>{{ data['new_cases'] }}</td>
  </tr>
</table>

<table>
  <tr>
    <th>קל</th>
    <th>בינוני</th>
    <th>קשה</th>
  </tr>
  <tr>
    <td>{{ data['easy'] }}</td>
    <td>{{ data['medium'] }}</td>
    <td>{{ data['hard'] }} ({{ data['ventilated'] }} מתוכם מונשמים) </td>
  </tr>
</table>

<table>
  <tr>
    <th>מאושפזים</th>
    <th>אשפוז בית</th>
    <th>אשפוז מלונית</th>
  </tr>
  <tr>
    <td>{{ data['hospitalized'] }}</td>
    <td>{{ data['home_care'] }}</td>
    <td>{{ data['hotel'] }}</td>
  </tr>
</table>


<table>
  <tr>
    <th>נפטרו</th>
    <th>החלימו</th>
  </tr>
  <tr>
    <td>{{ data['deceased'] }}</td>
    <td>{{ data['recovered'] }}</td>
  </tr>
</table>

</div>