{{require main_header.t}}
	{{require large_header.t}}
	<div id="above" class="container">
		<div class="row-fluid">
			<div class="span3" id="sidebar">
				<li class="span12">
					<h4>{{.loc.ope.who_are_we}}</h4>
					{{html .loc.ope.front_desc}}	
				</li>
			</div>
			<div class="span9" id="mainbar">
				<ul class="thumbnails">
					<li class="span4">
						<a href="/articles?tag=it" class="thumbnail">
							<img src="/template/img/it.jpg" alt="">
						</a>
						<div class="caption">
							<h3>{{.loc.ope.it}}</h3>
							<p class="desc">
								{{.loc.ope.it_desc}}
							</p>
							<p><a href="/articles?tag=it" class="btn btn-large">{{.loc.ope.more}}</a></p>
						</div>
					</li>
					<li class="span4">
						<a href="/furnitures" class="thumbnail">
								<img src="/template/img/carpenter3.jpg" alt="">
						</a>
						<div class="caption">
							<h3>{{.loc.ope.furniture}}</h3>
								<p class="desc">
									{{.loc.ope.furniture_desc}}
								</p>
							<p><a href="/articles?tag=furnitures" class="btn btn-large">{{.loc.ope.more}}</a></p>
						</div>
					</li>
					<li class="span4">
						<a href="/articles?tag=events" class="thumbnail">
								<img src="/template/img/rendezveny3.jpg" alt="">
						</a>
						<div class="caption">
							<h3>{{.loc.ope.event}}</h3>
							<p class="desc">
								{{.loc.ope.event_desc}}
							</p>
							<p><a href="/articles?tag=events" class="btn btn-large">{{.loc.ope.more}}</a></p>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>	
	<div class="container">
		<div class="row-fluid">
			<div class="span6">
				<div id="myCarousel" class="carousel slide">
					<!-- Carousel items -->
					<div class="carousel-inner">
						{{$c := counter}}
						{{$sl := get_list "articles" "tag" "slider"}}
						{{$list := elem $sl 0}}
						{{range $list}}
							{{$id := ._id}}
							{{if .sliderpics}}
								{{range .sliderpics}}
									<div class="{{if $c.Eq 0}}active{{end}} item">
										<img src="/uploads/articles/{{$id}}/sliderpics/{{.}}" alt="">
									</div>
									{{$c.Inc}}
								{{end}}
							{{end}}
						{{end}}
					</div>
					<!-- Carousel nav -->
					<a class="carousel-control left cbtn" href="#myCarousel" data-slide="prev">&lsaquo;</a>
					<a class="carousel-control right cbtn" href="#myCarousel" data-slide="next">&rsaquo;</a>
				</div>
			</div>
			<div class="span6">
				<ul class="thumbnails">
					<li class="span12">
						{{html .loc.ope.front_desc_2}}
					</li>
				</ul>
			</div>
		</div>
	</div>
{{require footer.t}}