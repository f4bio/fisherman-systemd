set user_commands list-units is-active status \
  show help list-unit-files is-enabled list-jobs \
  show-environment cat list-timers
set sudo_commands start stop reload restart try-restart \
  isolate kill reset-failed enable disable reenable \
  preset mask unmask link load cancel set-environment \
  unset-environment edit

for uc in $user_commands
  alias sc$uc="systemctl $uc"
end
for sc in $sudo_commands
  alias sc$sc="sudo systemctl $sc"
end

alias scenablenow="sc-enable --now"
alias scdisablenow="sc-disable --now"
alias scmasknow="sc-mask --now"

function sc -d "generate checksum files"
  set -g sc_version 0.0.1
  set -g systemd_version (systemctl --version)[1]

  for idx in (seq (count $argv))

  	switch $argv[$idx]
  		case -h --help help
  			__systemd_usage > /dev/stderr
  			return
  		case -v --version version
  			echo "v$sc_version (using: $systemd_version)"
  			return
  	end
  	if $argv[$idx] in user_commands
  		echo "executing user_command"
  	end
    if $argv[$idx] in sudo_commands
  		echo "executing sudo_command"
  	end
  end
end
