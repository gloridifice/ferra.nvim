try
	call plug#begin()
	Plug expand('<sfile>')[0:-16]
	call plug#end()

	lua require("ferra").setup {}
  colorscheme ferra
catch
	echo v:exception
	1cq
finally
	0cq
endtry
