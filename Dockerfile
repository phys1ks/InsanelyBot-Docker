FROM matthewfeickert/docker-python3-ubuntu
LABEL maintainer="phys1ks <phys1ks@gmail.com>"
COPY setup.sh /home/docker/data
RUN sudo -H pip install --upgrade pip aiohttp==3.3.0 && \
    git clone https://bitbucket.org/insanelyhack/insanelybot.git && \
    sudo -H python3 -m pip install -U discord.py discord.py[voice] pycparser cffi six PyNaCl pillow Wavelink Requests parsedatetime psutil pyparsing pyquery git+https://github.com/paulovn/python-aiml speedtest-cli pytz wikipedia mtranslate git+https://github.com/shaunduncan/giphypop.git#egg=giphypop numpy pymongo igdb_api_python geopy && \
   sudo chmod +x /home/docker/data/setup.sh
CMD sudo ./setup.sh
