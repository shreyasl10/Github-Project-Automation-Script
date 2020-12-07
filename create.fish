 function create        
		cd Documents/Projects
		mkdir $argv
	    cd $argv
	    git init
	    set pat (gpg -d ~/Documents/PAT.txt.gpg)
		set rep '"'name'"':'"'$argv'"'
		echo $rep
		curl -u "shreyasl10:$pat" https://api.github.com/user/repos -d "{$rep}"
		git push -u origin master
		code .
end
