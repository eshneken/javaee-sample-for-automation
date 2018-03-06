FROM 129.213.22.38:5000/weblogic-1221

ENV APP_NAME="sample" \
    APP_PKG_FILE="javaee-0.0.1.war" \
    APP_PKG_LOCATION="/u01/oracle"

COPY container_scripts/* /u01/oracle/
COPY target/javaee-0.0.1.war /u01/oracle

RUN /bin/bash /u01/oracle/create-domain.sh
RUN /u01/oracle/oracle_common/common/bin/wlst.sh /u01/oracle/app-deploy.py

CMD /bin/bash /u01/oracle/start-weblogic.sh
