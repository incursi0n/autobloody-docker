# A dockerfile must always start by importing the base image.
# We use the keyword 'FROM' to do that.
# In our example, we want to import the python image.
# So we write 'python' for the image name and 'latest' for the version.
FROM python:latest

# Add Kali Linux repositories and update the package list.
RUN apt-get update && \
    apt-get install -y --no-install-recommends gnupg2 curl && \
    curl -fsSL https://archive.kali.org/archive-key.asc | gpg --dearmor -o /usr/share/keyrings/kali-archive-keyring.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/kali-archive-keyring.gpg] http://http.kali.org/kali kali-rolling main non-free contrib" > /etc/apt/sources.list && \
    echo "deb-src [signed-by=/usr/share/keyrings/kali-archive-keyring.gpg] http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y libkrb5-dev && \
    pip install autobloody bloodyAD==1.1.1

# We need to define the command to launch when we are going to run the image.
# We use the keyword 'CMD' to do that.
# The following command will execute "autobloody".
CMD [ "autobloody" ]

