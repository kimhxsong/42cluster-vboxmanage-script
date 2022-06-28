ifndef vm
 vm = default
endif

start:
	vBoxManage startvm ${vm}

off:
	VBoxManage controlvm ${vm} acpipowerbutton

foff:
	VBoxManage controlvm ${vm} poweroff

setup: clean
	sh setup_vbm ${vm}

clean:
	sh cleanup_vbm ${vm}

fclean: clean
	rm -rf ./VM

re: fclean setup
