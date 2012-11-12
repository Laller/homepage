{{if eq $furn true}}
	{{$where := "perfurn"}}
	{{require furn_sidebar.t}}
{{else}}
	{{if .form.subtag}}
		{{$where := "swsubtag"}}
		{{require furn_sidebar.t}}
	{{else}}
		{{if .form.tag}}
			{{require adv.t}}
		{{else}}
			{{if .main1}}
				{{require adv.t}}
			{{else}}
				{{if eq .main.tag "furnitures"}}
					{{$where := "furnGetsingle"}}
					{{require furn_sidebar.t}}
				{{else}}
					{{require adv.t}}
				{{end}}
			{{end}}
		{{end}}
	{{end}}
{{end}}
