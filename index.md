---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: page
---

{% assign data = site.data.data %}

<center><h4>{{ data['timestamp'] }}</h4></center>

<style>
table {
  border: none;
  border-collapse: collapse;
  table-layout: fixed;
  width: 100%;
  text-align: center;
}
</style>

<table>
  <tr>
    <th>total</th>
    <th>new</th>
  </tr>
  <tr>
    <td>{{ data['total_cases'] }}</td>
    <td>{{ data['new_cases'] }}</td>
  </tr>
</table>

<table>
  <tr>
    <th>easy</th>
    <th>medium</th>
    <th>hard</th>
  </tr>
  <tr>
    <td>{{ data['easy'] }}</td>
    <td>{{ data['medium'] }}</td>
    <td>{{ data['hard'] }} ({{ data['ventilated'] }} ventilated) </td>
  </tr>
</table>

<table>
  <tr>
    <th>hospitalized</th>
    <th>home_care</th>
    <th>hotel</th>
  </tr>
  <tr>
    <td>{{ data['hospitalized'] }}</td>
    <td>{{ data['home_care'] }}</td>
    <td>{{ data['hotel'] }}</td>
  </tr>
</table>


<table>
  <tr>
    <th>deceased</th>
    <th>recovered</th>
  </tr>
  <tr>
    <td>{{ data['deceased'] }}</td>
    <td>{{ data['recovered'] }}</td>
  </tr>
</table>
