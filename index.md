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

table.owid-charts td {
  padding: 0px;
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

<table>
  <tr>
    <th>אחוז התמותה למקרים שתוצאתם ידועה (CFR)</th>
  </tr>
  <tr>
    <td>
    <span style="color: red;">{{ data['cfr'] }}%</span>
    </td>
  </tr>
</table>

<center><h4><a href="https://ourworldindata.org/coronavirus">גרפים מהאתר Our World In Data</a></h4></center>

<table class="owid-charts">
  <tr>
    <th>מקרים מאומתים חדשים — ממוצע תלת-יומי</th>
    <th>בדיקות שהתבצעו — ממוצע תלת-יומי</th>
  </tr>
  <tr>
    <td><iframe src="https://ourworldindata.org/grapher/daily-covid-cases-3-day-average?time=2020-03-01..&country=ISR" style="width: 100%; height: 400px; border: 0px none;"></iframe></td>
    <td><iframe src="https://ourworldindata.org/grapher/daily-covid-19-tests-rolling-3-day-average?time=2020-03-01..&country=ISR" style="width: 100%; height: 400px; border: 0px none;"></iframe></td>
  </tr>
  <tr>
    <th>מקרים מאומתים</th>
    <th>נפטרים</th>
  </tr>
  <tr>
    <td><iframe src="https://ourworldindata.org/grapher/total-cases-covid-19?time=2020-03-01..&country=ISR" style="width: 100%; height: 400px; border: 0px none;"></iframe></td>
    <td><iframe src="https://ourworldindata.org/grapher/total-deaths-covid-19?time=2020-03-01..&country=ISR" style="width: 100%; height: 400px; border: 0px none;"></iframe></td>
  </tr>
</table>


</div>