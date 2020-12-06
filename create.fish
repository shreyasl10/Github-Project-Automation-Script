function create        
	cd Documents/Projects
	mkdir $argv
	cd $argv
	git init
	gh repo create
	git push -u origin master
	code .
end
