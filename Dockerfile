FROM zhaowh/centos-java                                                                                                    
MAINTAINER  Zhao Weihong                                                                                                   
                                                                                                                           
RUN cd /opt && \                                                                                                           
  wget http://downloads.typesafe.com/play/2.2.3/play-2.2.3.zip -O /opt/play.zip && \                                            
  unzip /opt/play.zip -d /opt && \                                                                                         
  rm -f /opt/play.zip && \                                                                                                 
  mv /opt/play-2.2.3 /opt/play  && \                                                                                       
  ln -s /opt/play/play /usr/local/bin/play                                                                                 
                                                                                                                           
RUN mkdir /opt/workspace && chmod 755 /opt/workspace && cd /opt/workspace                                                  
                                                                                                                           
VOLUME ["/opt/workspace"]                                                                                                  
WORKDIR /opt/workspace                                                                                            
EXPOSE 9000                                                                                                       
CMD ["/opt/play/play"]  
