# Copper and Zinc complexes as proposed metalloallosteric therapy for cutaneous neurofibroma
## Hack for NF - NF Hackathon 2020, 11 November 2020
## Team Shirin: Isaac Dimitrovsky and Lars Ericson

The paper is here: https://www.synapse.org/#!Synapse:syn23552461/wiki/607085

### jupyter Docker Image (Local)

1. Open a command line interface, such as Terminal. 
2. Do `docker pull catskillsresearch/ctf_hackathon_2020_team_shirin_cnf_drug_discovery` to get the Docker image. 
3. Do `docker run -p 8888:8888 catskillsresearch/ctf_hackathon_2020_team_shirin_cnf_drug_discovery` to start the container.
4. Open your preferred browser and navigate to the one of the links provided in your Terminal window after running the previous command. It should look something like: `http://127.0.0.1:8888/?token=abcd1234abcd1234abcd1234abcd1234abcd1234abcd1234`. 
5. In the Files pane, click on "Work" and then "0-setup.ipynb" to get started, and to learn how to make your Synapse credentials available to the Python `synapseclient`. 

*IMPORTANT NOTE* To save any results created during your Docker session, you'll need to mount a local directory to the Docker container when you run it. This will copy anything saved to the working directory to your local machine. Before step 4, do `mkdir output` to create an output directory locally. Then run the command in step 4 with a `-v` flag e.g. `docker run -p 8888:8888 -v $PWD/output:/home/jovyan/work/output catskillsresearch/ctf_hackathon_2020_team_shirin_cnf_drug_discovery
` Alternatively, or in addition, you can save all of your results to Synapse using `synapseclient`.

### Running Docker containers on Windows

These instructions for running Docker on Windwows courtesy of [Lars Ericson](https://www.synapse.org/#!Synapse:syn18666641/discussion/threadId=5866):

We are given some [docker images provisioned with data and Python or R](https://github.com/Sage-Bionetworks/nfhackathon2020) for quick setup for the challenge.

I haven't tried to dual-boot my Windows Home Edition PC to Linux.  I can still run the docker images.  Here is the path:

* Download [Docker Toolbox](https://docs.docker.com/toolbox/toolbox_install_windows/).  Note this is what works on Windows Home Edition.  You need Windows Professional to run the more recent Docker.  But it's OK, it still works.

* Run the newly installed Docker Quickstart 

* In Docker Quickstart, download one of the docker images listed on the GitHub, for example ```docker pull catskillsresearch/ctf_hackathon_2020_team_shirin_cnf_drug_discovery```

* In Docker Quickstart, run ```docker-machine ip``` to get the IP address.  Suppose it is 123.456.78.910.

* Run the docker image ``` docker run -p 8888:8888 catskillsresearch/ctf_hackathon_2020_team_shirin_cnf_drug_discovery ``` It will tell you something like ```[I 00:16:50.410 NotebookApp] The Jupyter Notebook is running at: [I 00:16:50.411 NotebookApp]  http://127.0.0.1:8888/?token=fa13464756954b325753106b75c8398c991ce9d05ff523de```

* Replace IP address 127.0.0.1 with the string you wrote down in Step 3 (because Windows will probably be blocked 127.0.0.1 for Docker).  So something like ``` http://123.456.78.910:8888/?token=fa13464756954b325753106b75c8398c991ce9d05ff523de ```

* Paste the modified URL into your Browser to get to the Docker image Jupyter notebook.
