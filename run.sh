DISPLAY=:0 startxfce4&
websockify -D --web=/usr/share/novnc/ --cert=/etc/pki/tls/certs/novnc.pem 6080 localhost:5901
