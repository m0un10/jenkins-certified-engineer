# Jenkins Certified Engineer (JCE)

Useful resources for anyone wanting to become a Jenkins Certified Engineer.

## Useful links

- [Study Guide 2018](https://www.cloudbees.com/sites/default/files/cje-study-guide-2018.pdf)
- [Jenkins User Guide](https://jenkins.io/doc/)
- [CJE Notes]( https://github.com/luckylittle/jenkins-ci/blob/master/CJE_Notes.txt) - thanks to [luckylittle](https://github.com/luckylittle)
- [CJE Docker Setup](https://github.com/ydubreuil/jenkins-certification)  - thanks to [ydubreuil](https://github.com/ydubreuil)

## CD-as-Code Best Practices

- [Distributed builds architecture](https://wiki.jenkins.io/display/JENKINS/Distributed+builds)
- [Fungible (replaceable) agents](https://jenkins.io/doc/book/hardware-recommendations/#choosing-the-right-build-machines)
- Master-agent connectors and protocol
  - Option 1: Master initiated over SSH
  - Option 2: Agent initiated over JNLP
    In this case Master does not need network access to the Agent.
- [Tool installations on agents](https://wiki.jenkins.io/display/JENKINS/Tool+Environment+Plugin)
- Cloud agents
  - [EC2](https://plugins.jenkins.io/ec2)
  - [Azure](https://plugins.jenkins.io/azure-vm-agents)
  - [Google Compute Engine](https://plugins.jenkins.io/google-compute-engine)
  - [VMware vSphere](https://plugins.jenkins.io/vsphere-cloud)
  - [Docker](https://plugins.jenkins.io/docker-plugin)
  - [Kubernetes (Generic)](https://plugins.jenkins.io/kubernetes)
  - [Kubernetes on Google Container Engine](https://www.cloudbees.com/blog/demand-jenkins-slaves-kubernetes-and-google-container-engine)
- Traceability
  - [Best Practices for Setting up Jenkins Auditing and Compliance](https://www.cloudbees.com/blog/best-practices-setting-jenkins-auditing-and-compliance)
    - [Audit Trail Plugin](https://plugins.jenkins.io/audit-trail)
    - [Job Configuration History Plugin](https://plugins.jenkins.io/jobConfigHistory)
  - [Example traceability using Pipelines](https://littlegreensoftware.com/blog/engineering/continuous-integration-setup-for-validated-products-a-universal-jenkins-workflow#traceability)
  - [CloudBees Docker Traceability](https://github.com/jenkinsci/docker-traceability-plugin/blob/master/README.md)
- High availability
  - [Active-Passive](https://i.stack.imgur.com/BZSjX.png)
  - [Blue/Green Jenkins on AWS](https://medium.com/@sebolabs/jenkins-ha-aws-cd55d82057c8)
  - [How to setup Jenkins HA (StackOverflow)](https://stackoverflow.com/questions/36173214/how-to-setup-jenkins-with-ha)
  - [CCJE Jenkins High Availability](https://www.devopslibrary.com/lessons/jenkins-ha)
- Other
  - [Architecting for Scale](https://jenkins.io/doc/book/architecting-for-scale/)
  - [Seven Habits of Highly Effective Jenkins Users](https://www.slideshare.net/JulesPierreLouis/7-habits-of-highly-effective-jenkins-users-67026922)  
  - [thinBackup Plugin](https://plugins.jenkins.io/thinBackup)

## Appendix

Ways to visualise
- [Paramaterized Trigger Plugin](https://plugins.jenkins.io/parameterized-trigger) + [Conditional Build Step](https://plugins.jenkins.io/conditional-buildstep). Powerful. Hard to configure. No longer needed when using Jenkinsfile (Pipeline).
- [Build Pipeline Plugin](https://plugins.jenkins.io/build-pipeline-plugin). View visualising connected jobs. Also, allowing integrated manual steps.
- [Pipeline Plugin](https://plugins.jenkins.io/workflow-aggregator). Aka Jenkinsfile. Definition relationships between steps in a DSL

Cool plugins
- [Jenkins Literate Plugin](https://plugins.jenkins.io/literate). Write jobs in Markdown
- [Timestamper Plugin](https://plugins.jenkins.io/timestamper). Find out when something happened by logging time against each log record.

Groovy scripts
- [Jenkins Groovy Script Catalog](https://github.com/jenkinsci/jenkins-scripts/tree/master/scriptler)
