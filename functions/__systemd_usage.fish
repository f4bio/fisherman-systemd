function __systemd_usage
    # set -l uline (set_color -u)
    # set -l nc (set_color normal)

    echo "Usage: sc <SUBCOMMAND> [<PARAMETERS>]"
    echo
    echo "where SUBCOMMAND can be one of following user commands:"
    echo "  list-units is-active status show help"
    echo "  list-unit-files is-enabled list-jobs "
    echo "  show-environment cat list-timers"
    echo "or one of following sudo commands:"
    echo "  start stop reload restart try-restart"
    echo "  isolate kill reset-failed enable disable"
    echo "  reenable preset mask unmask link load cancel"
    echo "  set-environment unset-environment edit"
    echo
end
