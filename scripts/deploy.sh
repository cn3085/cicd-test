version: 0.0
os: linux
files:
  - source: /
    destination: /home/ubuntu/cicd/test
    overwrite: yes
permisstions:
  - object: /
    pattern: "**"
    owner: ubuntu
    group: ubuntu
hooks:
  AfterInstall: 
    - location: scripts/deploy.sh
      timeout: 60
#      runas: ubuntu