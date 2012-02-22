# -*- coding: utf-8 -*- 
<%inherit file="base.mako"/>

<h1>Add a new paste</h1>

<form action="${request.route_url('index')}" method="post">
  <textarea name="code"></textarea>
  <input type="submit" name="add" value="ADD" class="button">
</form>

<h3>10 most recent pastes</h3>
<ul>
% for i in pastes:
    <li>${request.route_url('view',id=i)}</li>
% endfor
</ul>

