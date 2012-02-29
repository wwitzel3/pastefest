# -*- coding: utf-8 -*- 
<%inherit file="base.mako"/>

    <section id="main">
    <div class="row-fluid">
    <div class="span12">

      <form class="form-horizontal" action="${request.route_url('index')}" method="post">
      <legend>Share your code with Pastefest</legend>
        <div class="control-group">
          <label class="control-label" for="desc">Description</label>
          <div class="controls">
            <input type="text" class="input-xlarge" id="desc" />
            <p class="help-block">Optional description for your paste.</p>
          </div>
        </div>

        <textarea name="code"></textarea>

        <div class="form-actions">
          <input type="submit" name="add" value="Paste" class="btn-primary" />
        </div>
      </form>

    </div>
    </div>
    </section>

    <section id="recent">
    <div class="page-header"><h1>Recent <small>10 most recent pastes.</small></h1></div>
    <div class="row-fluid">
    <div class="span12">
        <ul>
	% for paste in pastes:
	<li><a href="${request.route_url('view',id=paste.id)}">pastefest-${paste.id}</a></li>
	%endfor
	</ul>
    </div>
    </div>
    </section>

    <section id="about">
    <div class="page-header"><h1>About <small>Why did I create this app?</small></h1></div>
    <div class="row-fluid">
      <div class="span12">...</div>
    </div>
    </section>

    <section id="contact">
    <div class="page-header"><h1>Contact <small>Want me to change or add something?</small></h1></div>
    <div class="row-fluid">
      <div class="span12">...</div>
    </div>
    </section>

