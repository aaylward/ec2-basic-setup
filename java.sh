cd /opt/
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.tar.gz"

tar xzvf jdk-8u25-linux-x64.tar.gz

cd /opt/jdk1.8.0_25/
alternatives --install /usr/bin/java java /opt/jdk1.8.0_25/bin/java 2
alternatives --config java

alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_25/bin/jar 2
alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_25/bin/javac 2
alternatives --set jar /opt/jdk1.8.0_25/bin/jar
alternatives --set javac /opt/jdk1.8.0_25/bin/javac

cat <<EOF >> /home/ec2-user/.bash_profile

export JAVA_HOME=/opt/jdk1.8.0_25
export PATH=$PATH:/opt/jdk1.8.0_25/bin:/opt/jdk1.8.0_25/jre/bin

EOF

