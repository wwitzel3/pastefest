# -*- coding: utf-8 -*- 
<%inherit file="base.mako"/>

<label for="embed">Embed Code</label>
<input type="text" name="embed" size="100" value="&lt;script&nbsp;src=&quot;${request.route_url('js', id=id)}&quot;&gt;&nbsp;&lt;script&gt;" />
${paste.html() | n}
