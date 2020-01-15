#
# Set prompt
#


if ( $?term ) then
    if ($term == "screen" ) then
	set prompt="%{\033]2;%n@%m:%l %~^G%}%S[8\^)%s"
    else if ($term == "xterm" || $term == "xterm-256color") then
	set prompt="%{\033]2;%n@%m:%l %~^G%}%m %S[8\^)%s"
    else
	set prompt="%m %S[8\^)"
    endif
endif
