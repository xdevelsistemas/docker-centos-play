FROM zhaowh/centos-java                                                                                                    
MAINTAINER  Zhao Weihong                                                                                                   
                                                                                                                           
RUN cd /opt && \                                                                                                           
  wget http://downloads.typesafe.com/play/2.2.3/play-2.2.3.zip -O /opt/play.zip && \                                            
  unzip /opt/play.zip -d /opt && \                                                                                         
  rm -f /opt/play.zip && \                                                                                                 
  mv /opt/play-2.2.3 /opt/play  && \                                                                                       
  ln -s /opt/play/play /usr/local/bin/play                                                                                 
                                                                                                                           
                                                                                                                           
VOLUME ["/data"]                                                                                                  
WORKDIR /data                                                                                            
EXPOSE 9000                                                                                                       
CMD ["/opt/play/play"]  
