#https://www.server-world.info/en/note?os=Fedora_26&p=desktop&f=8

case $1 in
	yum)
		sudo yum install -y novnc tigervnc-server xorg-x11-server-Xvfb.x86_64 @xfce ;;
esac

openssl req -x509 -nodes -newkey rsa:2048 -keyout /etc/pki/tls/certs/novnc.pem -out /etc/pki/tls/certs/novnc.pem -days 365
echo 123456 | vncpasswd -f ~/.vnc/passwd && chmod 0600 ~/.vnc/passwd
