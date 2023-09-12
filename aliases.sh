# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# --show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l'
alias pa='php artisan'
alias seed='php artisan db:seed'
alias watch='npm run watch'
alias pull='git pull origin'
alias prod='npm run prod'
alias uncommit='git reset --hard HEAD'
alias fresh="php artisan migrate:fresh --seed"
alias tinker="php artisan tinker"

alias fun="echo '¯\_(ツ)_/¯' | pbcopy"

# PHP
alias cfresh="rm -rf vendor/ composer.lock && composer i"

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"

alias cu='composer update'
alias ca='composer dump-autoload'
alias wip="git add . && git commit -m 'wip'"
alias tab='/git-bash.exe & > /dev/null 2&>1'

case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac
