(require :cl-irc)
(require :cl+ssl)
(in-package :irc)

(defvar connection (connect :username "Cirrusbbot"
			    :server "irc.lainchan.org"
			    :password "password"
			    :connection-security :ssl
			    :port 6697))

(read-message-loop connection)

(join connection "#bots")

(read-message-loop connection)
