################################################################
################### Installing Neo4j ###########################
################################################################

mkdir Downloads

cd Downloads/

wget https://neo4j.com/artifact.php?name=neo4j-community-4.4.5-unix.tar.gz

tar -xvf artifact.php\?name\=neo4j-community-4.4.5-unix.tar.gz

rm -rf artifact.php\?name\=neo4j-community-4.4.5-unix.tar.gz

sudo mv neo4j-community-4.4.5/ /opt/neo4j

echo "

" >> ~/.bash_profile

echo "export NEO4J_HOME=/opt/neo4j" >> ~/.bash_profile

echo "

" >> ~/.bash_profile

echo "export PATH=$PATH:$NEO4J_HOME/bin" >> ~/.bash_profile


################################################################
################## Installing JDK 11 ###########################
################################################################

sudo yum install java-11-openjdk

echo "

" >> ~/.bash_profile

echo "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-11.0.14.1.1-1.el7_9.x86_64" >> ~/.bash_profile

source ~/.bash_profile


###############################################################
####################### First Run #############################
###############################################################


$NEO4J_HOME/bin/neo4j start
sudo sistemctl firewall stop
