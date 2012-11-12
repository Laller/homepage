{{require main_header.t}}
{{$title := .loc.ope.furniture}}
{{require small_header.t}}
	<div id="above-nonmain" class="container">
		{{$furn := true}}
		{{$contact := false}}
		{{require breadcrumb.t}}
		<div class="row-fluid">
			<div class="span3" id="sidebar">
				{{require sidebar.t}}
			</div>
			<div class="span9" id="mainbar">
				<ul class="thumbnails">
					<li class="span4">
						<a href="/articles?subtag=custom-kitchens" class="thumbnail">
							<img src="/template/img/costum.jpg" alt="custom-kitchens">
						</a>
						<div class="caption">
							<h5>{{.loc.ope.custom_kitchens}}</h5>
							<p><a href="/articles?subtag=custom-kitchens" class="btn btn-large">{{.loc.ope.more}}</a></p>
						</div>
					</li>
					<li class="span4">
						<a href="/articles?subtag=wardrobes" class="thumbnail">
							<img src="/template/img/wardrobe.jpg" alt="wardrobes">
						</a>
						<div class="caption">
							<h5>{{.loc.ope.wardrobes}}</h5>
							<p><a href="/articles?subtag=wardrobes" class="btn btn-large">{{.loc.ope.more}}</a></p>
						</div>
					</li>
					<li class="span4">
						<a href="/articles?subtag=institutions" class="thumbnail">
							<img src="/template/img/shop.jpg" alt="institutions">
						</a>
						<div class="caption">
							<h5>{{.loc.ope.institutions}}</h5>
							<p><a href="/articles?subtag=institutions" class="btn btn-large">{{.loc.ope.more}}</a></p>
						</div>
					</li>
				</ul>
				<div class="row-fluid under-subcat">
					<div class="span4">
						<p>
							
						</p>
					</div>	
					<div class="span4">	
						<p>
							
						</p>
						<p>
							
						</p>
					</div>
					<div class="span4">
						
					</div>
				</div>
			</div>
		</div>
	</div>
{{require footer.t}}