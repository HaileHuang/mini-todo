require 'rubygems'
require 'net/ssh'

@hostname = "47.98.112.55"
@username = "root"
@password = ""
@cmd = "cd /root/workspace/mini-todo"

begin
  ssh = Net::SSH.start(@hostname, @username, :password => @password)
  res = ssh.exec!("cd /root/workspace/mini-todo;
                   killall node;
                   git pull;
                   npm install;
                   PORT=80 node app.js > foo.out 2> foo.err < /dev/null &")
  puts res
  ssh.close
rescue Exception => e
  puts "Unable to connect to #{@hostname} using #{@username}/#{@password}"
end
