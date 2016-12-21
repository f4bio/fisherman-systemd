set user_commands list-units is-active status show help list-unit-files is-enabled list-jobs show-environment cat list-timers

set sudo_commands start stop reload restart try-restart isolate kill reset-failed enable disable reenable preset mask unmask link load cancel set-environment unset-environment edit

for uc in $user_commands
  alias sc$uc="systemctl $uc"
end
for sc in $sudo_commands
  alias sc$sc="sudo systemctl $sc"
end

alias sc-enable-now="sc-enable --now"
alias sc-disable-now="sc-disable --now"
alias sc-mask-now="sc-mask --now"
