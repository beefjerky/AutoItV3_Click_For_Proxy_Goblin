chdir /d C:\Program Files (x86)\WinSCP
WinSCP.com /command "option batch continue" "option confirm off" "open scp://USERNAME:PASSWORD@SERVER:22" "option transfer binary" "put D:\local\raw_proxy.txt /REMOTE_DIR/" "exit"
