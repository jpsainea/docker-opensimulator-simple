FROM mono:6.10

RUN curl http://opensimulator.org/dist/opensim-0.9.2.2.tar.gz -s | tar xzf -
ADD Regions.ini /opensim-0.9.2.2/bin/Regions/
ADD OpenSim.ini /opensim-0.9.2.2/bin/
EXPOSE 9000
WORKDIR /opensim-0.9.2.2/bin

CMD [ "mono",  "./OpenSim.exe" ]
