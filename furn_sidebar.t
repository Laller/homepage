
	{{if eq $where "perfurn"}}
	{{end}}
	{{if eq $where "swsubtag"}}
		<p>{{.loc.ope.other_cat}}</p>
		<ul>
			<li>
				<a href="/articles?subtag=custom-kitchens">{{.loc.ope.custom_kitchens}}</a>
			</li>
			<li>
				<a href="/articles?subtag=wardrobes">{{.loc.ope.wardrobes}}</a>
			</li>
			<li>
				<a href="/articles?subtag=institutions">{{.loc.ope.institutions}}</a>
			</li>
		</ul>
	{{end}}
	{{if eq $where "furnGetsingle"}}
		<p>{{.loc.ope.related_posts}}</p>
			{{$subtag := .main.subtag}}
			{{$sl := get_list "articles" "subtag" $subtag}}
			{{$list := elem $sl 0}}
			{{range $list}}
				{{$related := .}}
				{{$id := ._id}}
					<a href="/articles/{{$id}}">{{$related.title}}</a>,
			{{end}}	
		<p>{{.loc.ope.other_cat}}</p>
		<ul>
			<li>
				<a href="/articles?subtag=custom-kitchens">{{.loc.ope.custom_kitchens}}</a>
			</li>
			<li>
				<a href="/articles?subtag=wardrobes">{{.loc.ope.wardrobes}}</a>
			</li>
			<li>
				<a href="/articles?subtag=institutions">{{.loc.ope.institutions}}</a>
			</li>
		</ul>				
	{{end}}
	<p>
		Bútorokkal kapcsolatos kérdéseivel, forduljon kollégáinkhoz bizalommal, örömmel válaszolnak.
	</p>
	<p>
		Ha van már elképzelése vagy megtetszett valamlyik termékünk, akkor kérjen előzetes árajánlatot.
	</p>
	<a href="/contact">Árajánlatot kérek.</a>
	<br /><br />
	{{html .loc.ope.activity}}