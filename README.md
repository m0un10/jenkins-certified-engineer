# Jenkins Certified Engineer (JCE)

Useful resources for anyone wanting to become a Jenkins Certified Engineer.

## Useful links

- [Study Guide 2018](https://www.cloudbees.com/sites/default/files/cje-study-guide-2018.pdf)
- [Jenkins User Guide](https://jenkins.io/doc/)
- [CJE Notes]( https://github.com/luckylittle/jenkins-ci/blob/master/CJE_Notes.txt) - thanks to [luckylittle](https://github.com/luckylittle)
- [CJE Docker Setup](https://github.com/ydubreuil/jenkins-certification)  - thanks to [ydubreuil](https://github.com/ydubreuil)
- Jenkins Version: 2.121.3
  - [Suggested Plugins](
https://github.com/jenkinsci/jenkins/blob/jenkins-2.121.3/core/src/main/resources/jenkins/install/platform-plugins.json)

##  Key CI/CD/Jenkins Concepts (18%)

- Continuous Delivery/Continuous Integration Concepts
- Define continuous integration, continuous delivery, continuous deployment
- Difference between CI and CD
  - CD: release at any time
  - CI: practice of integrating the code continuously
- Stages of CI and CD
- Continuous delivery versus continuous deployment
  - Continuous Delivery: code CAN be released at any time (potentially includes manual step)
  - Continuous Deployment: code IS released continuously, automatically
- Jobs
  - What are [jobs in Jenkins](https://jenkins-le-guide-complet.github.io/html/sect-first-steps-first-job.html)?
  - Types of jobs
    - Freestyle project
    - Maven project
    - Pipeline
    - [External job](https://stackoverflow.com/questions/11830098/setup-jenkins-to-monitor-external-job)
    - Multi-configuration project
    - Folder
    - GitHub Organization
    - Multibranch pipeline
  - Scope of jobs (see links above)
- Builds
  - What are builds in Jenkins?
  - What are build steps, triggers, artifacts, and repositories?
  - Build tools configuration
- Source
  - What are source code management systems and how are they used?
  - Cloud-based SCMs
  - Jenkins changelogs
  - Incremental updates v clean check out
  - Checking in code
  - Infrastructure-as-Code
  - Branch and Merge Strategies
- Testing
  - Benefits of testing with Jenkins
  - Define unit test, smoke test, acceptance test, automated verification/functional tests
    - unit. specific functionality testing, individual classes, methods etc.
    - smoke. aka sanity testing. testing the general functionality as a whole (came from mechanical engineering, "does the car go?", if not machine starts to smoke)
    - integration. multiple modules/pieces coming together and have expected functionality
    - acceptance. business requirement(s) testing
- Notifications
  - Types of notifications in Jenkins
  - Importance of notifications
- Distributed Builds
  - What are distributed builds?
  - Functions of masters and agents
- Plugins
  - What are plugins?
  - What is the plugin manager?
- Jenkins Rest API
  - How to interact with it
  - Why use it?
- Security
  - Authentication versus authorization
    - [Authentication](https://searchsecurity.techtarget.com/definition/authentication) provides a way of identifying a user, typically by having the user enter a valid user name and valid password before access is granted.
    - Following authentication, a user must gain [Authorization](https://searchsoftwarequality.techtarget.com/definition/authorization) for doing certain tasks.
  - Matrix security
    - Overall - as a whole
      - Administer
      - ConfigureUpdateCenter
      - Read
      - RunScripts
      - UploadPlugins
    - Credentials
      - Create
      - Delete
      - ManageDomains
      - Update
      - View (on the main dashboard)
    - Agent
      - Build
      - Configure
      - Connect
      - Create
      - Delete
      - Disconnect
    - Job (also known as project)
      - Build
      - Cancel
      - Configure
      - Create
      - Delete
      - Discover (if a user doesn't have rights, it will bring you to the login page)
      - Move (to a different folder)
      - Read
      - Workspace
    - Run
      - Delete
      - Replay
      - Update
    - View (ability to have a dashboard with information that you want)
      - Configure
      - Create
      - Delete
      - Read
    - SCM
      - Tag
  - Definition of auditing, credentials, and other key security concepts
- Fingerprints
  - What are fingerprints?
  - How do fingerprints work?
- Artifacts
  - How to use artifacts in Jenkins
  - Storing artifacts
- Using 3rd party tools
  - How to use 3rd party tools
    - [Jenkins Job Builder](https://www.devopslibrary.com/lessons/ccjpe-jjb)
- Installation Wizard
  - What is the Jenkins Installation Wizard?
  - How to use the Wizard?
  - Which configurations are covered by the Installation Wizard?

## Jenkins usage (features and functionality)

- Jobs
  - Organizing jobs in Jenkins
    - Folders
      - One way to manage projects
      - New item - Folder
        - Name
        - Display name
        - Description
        - Health metrics - Items in nested sub-folders are used to calculate the folder's health
        - Properties
        - Pipeline libraries
        - Pipeline model definition
      - "Jenkins" path is the root folder of the projects, you can move existing projects to the newly created folder (click project properties - "Move")
      - You can have nested folders
    - Views
      - The global view is the same for all of the users
      - On the default view, after clicking on the "+" tab on the main screen, we see
        - View name
        - List View - simple list format (choosing this will take you directly to the configuration page)
        - My View - automatically displays all the jobs that the current user has an access to
      - After that, you can "Edit View" on the left side
        - Name
        - Description
        - Filter build queue
        - Filter build executors
      - Job filters
        - Status filter - all selected, enabled jobs only, disabled jobs only
        - Recurse in subfolders [] - you will see all jobs in all folders below
        - Jobs [] TOP LEVEL FOLDER
        - Use regular expression to include jobs into the view: `.*Downstream.*``
      - Add Job Filter
        - Columns
          - Status
          - Weather
          - Name
          - Last success
          - Last failure
          - Last duration
          - Build button
      - Manage Jenkins - Configure system - Default view
        - You can specify own set of per-user views in "My Views"
        - Include a global view
     - Types of View
       - Build Pipeline View
       - List View
       - My View
       - Radiator View: Focused minimialist view with no-Jenkins branding (good for a dashboard)
  - Parameterized jobs
    - Types of parameters
      - Boolean parameter
      - Choice parameter
      - Credentials parameter
      - File parameter
      - List subversion tags (and more)
      - Multi-line string parameter
      - Password parameter - not protected from showing up in the build log (!)
      - Run parameter (jobname, jobname.number, jobname_NAME, jobname_RESULT, jobname_JOBNAME, jobname_NUMBER...)
      - String parameter
    - How to pass parameters between the upstream/downstream:
      - Plugins - "Parameterized Trigger plugin"
      - Downstream project - must be parameterized - e.g. String parameter `$IMPORTANT_PARAM`
      - Upstream project - Add build step - Trigger/call build on other projects - Downstream project - Add predefined parameters `IMPORTANT_PARAM=$BUILD_NUMBER`
  - Usage of Freestyle/Pipeline/Matrix jobs
- Build
  - Setting up build steps and triggers
  - Configuring build tools
  - Running scripts as part of build steps
- Source Code Management
  - Polling source code management
  - Creating hooks
  - Including version control tags and version information
- Test
  - Testing for code coverage
  - Test reports in Jenkins
  - Displaying test results
  - Integrating with test automation tools
  - Breaking builds
- Notifications
  - Setup and usage
    - Manage Jenkins - Configure System - Extended E-mail Notification
      - SMTP server
      - SMTP port
      - Default recipient
    - Also adjust "Jenkins Location" - "System Admin e-mail address"
    - Add the catchall notification when anything fails in Jenkinsfile (global scope, outside of stages)
    ```
    post {
      failure {
        emailext(
          subject: "${env.JOB_NAME [${env.BUILD_NUMBER}] Failed!",
          body: "<html> bla bla bla bla</html>",
          to: "admin@domain.com"
        }
      }
    }
    ```
    - Add similar alert when you build a master (post on success) - not global scope
    - On the freestyle type project, you can add "Editable Email Notification" as a post-build action
      - Project Recipient List
      - Project reply-to list
      - Content type
      - Default subject
      - Default content
      - Attachments
      - Attach build log
      - Advanced
        - Triggers
          - Aborted
          - Always
          - Failure
          - Fixed
          - Not built
          - Success
        - Send to: Recipient list
  - Email notifications, instant messaging    
  - Alarming on notifications
- Distributed Builds
  - Setting up and running builds in parallel
  - Setting up and using SSH agents, JNLP agents, cloud agents
  - Monitoring nodes
- Plugins
  - Setting up and using Plugin Manager
  - Finding and configuring required plugins
- CI/CD
  - Using Pipeline (formerly known as “Workflow”)
  - Integrating automated deployment
  - Release management process
  - Pipeline stage behavior
- Jenkins Rest API
  - Using REST API to trigger jobs remotely, access job status, create/delete jobs
  - Data formats: XML & JSON
  - Go to http://(jenkins_master):8080/me/configure (same as "Manage Users" then your username)
    - API Token
      - Show API Token
  - You can see the API help, when you add /api at the end of the URL and it will show you the help page
  - Examples using cURL:
    - Call job: `curl -X POST http://(jenkins_master):8080/job/Freestyles/job/My%20Freestyle%20Project/buildWithParameters --user luckylittle:<API_TOKEN>`
    - Call job with parameter: `curl -X POST curl -X POST http://(jenkins_master):8080/job/Freestyles/job/My%20Freestyle%20Project/buildWithParameters?BRANCH=foo --user luckylittle:<API_TOKEN>`
    - Get job config: `curl  http://(jenkins_master):8080/job/Freestyles/job/My%20Freestyle%20Project/config.xml --user luckylittle:<API_TOKEN>`
    - Get job in JSON format `curl
     http://(jenkins_master):8080/job/Freestyles/job/My%20Freestyle%20Project/api/json --user luckylittle:<API_TOKEN>`
    - Disable a job: `curl -X post
     http://(jenkins_master):8080/job/Freestyles/job/My%20Freestyle%20Project/disable --user luckylittle:<API_TOKEN>`
    - Get job logs: `curl
   http://(jenkins_master):8080/job/Freestyles/job/My%20Freestyle%20Project/43/consoleText --user luckylittle:<API_TOKEN>`
    - Prepare for restart: `curl -X POST http://localhost:8080/quietDown --user luckylittle:<API_TOKEN>`
    - Cancel preparation for restart: `curl -X POST http://localhost:8080/cancelQuietDown --user luckylittle:<API_TOKEN>`
    - Safe restart: `curl -X POST http://localhost:8080/safeRestart --user luckylittle:<API_TOKEN>`
  - [Short tutorial on the REST API](https://www.devopslibrary.com/lessons/ccjpe-api)   
    - Get job and statuses example
      `curl  -g -u admin:066aaf7a0fea2677bcbf75590388a3fb "http://localhst:8080/api/json?pretty=true&tree=jobs[name,color]"`
    - Get current settings example
       `curl  -g -u admin:066aaf7a0fea2677bcbf75590388a3fb "httpst:8080/job/helloworld/config.xml" -o config.xml`
    - Update existing example
       `curl -X POST  -g -u admin:066aaf7a0fea2677bcbf75590388a3fb "http://localhost:8080/job/helloworld/config.xml" -d "@config.xml"``
- Security
  - Setting up and using security realms
  - User database, project security, Matrix security
  - Setting up and using auditing
  - Setting up and using credentials
- Fingerprints
  - Fingerprinting jobs shared or copied between jobs
    - Add 'post' directive to the Jenkinsfile:
    ```
    post {
      always {   <-- this can be also 'success'
        archive '<DIR>/*.jar'
      }
    }
    ```
    - When you click on the build #, you will see a new column "Build Artifacts"
    - If you want better tracking of artifacts (the additional option "See Fingerprints" on the left in each build)
      ```
      post {
        always {
          archiveArtifacts artifacts: '<DIR>/*.jar', fingerprint: true
        }
      }
      ```
    - Everything lands on the master inside `$JENKINS_HOME/jobs/<JOB_NAME>/builds/<BUILD_NUMBER>/archive/<DIR>/*.jar`
- Artifacts
  - Copying artifacts
    - Install new plugin 'Copy Artifact Plugin', we can set permissions between projects to allow artifacts copying
      - [X]Permission to Copy Artifacts:
      - New build step:
        - Copy artifacts from another project:
          - Project name:
          - Which build: Latest successful build/Latest saved build/Upstream/Downstream/Last completed (ignoring status)/Specific etc etc.
          - Artifacts to copy: `<DIR>/rectangle.jar`
          - Artifacts not to copy
          - Target directory
          - [X]Fingerprint artifacts
  - Using artifacts in Jenkins
    - When you go to the "Workspace" in the project, you will see the artifact(s)
  - Artifact retention policy
    - Retention policy can be set up in Jenkinsfile:
    ```
    options {
      buildDiscarder(logRotator(numToKeepStr: '2', artifactNumToKeepStr: '1'))
    }
    ```
    - In the console this is called "Discard old builds", click Advanced and also post-build action: "Archive the artifacts"
      - File to archive: ``<DIR>/rectangle.jar"``
- Alerts
  - Making basic updates to jobs and build scripts
  - Troubleshooting specific problems from build and test failure alerts

  ## Building Continuous Delivery (CD) Pipelines

  - Pipeline Concepts
    - Value stream mapping for CD pipelines
    -  Why create a pipeline?
    - Gates within a CD pipeline
    - How to protect centralized pipelines when multiple groups use same tools
    - Definition of binary reuse, automated deployment, multiple environments
    - Elements of your ideal CI/CD pipeline - tools
    - Key concepts in building scripts (including security/password, environment information, etc.)
  - Upstream and downstream
    - Triggering jobs from other jobs
    - Setting up the Parameterized Trigger plugin
    - Upstream/downstreamjobs
  - Triggering
    - Triggering Jenkins on code changes
      - Trigger builds remotely (e.g. from scripts)
      - Build manually
      - Build after other projects are built
      - Build periodically - cron format
      - GitHub hook trigger for GIT
        - Add Githook functionality (Github - Project - Settings - Integration & Services - Jenkins hook url)
        - Add new item in Jenkins UI - Pipeline - My Java Projects
          - [X]Github project
          - [X]GitHub hook trigger for GITScm polling
          - Pipeline
            - Definition: Pipeline script from SCM
            - SCM: Git
              - Repository URL
              - Credentials
            - Branches to build
              - Branch Specifier (blank for 'any'): `*/development`
            - Repoitory browser: githubweb
              - URL: <PROJECT URL>
            - Script path: `Jenkinsfile`
      - Scm polling
    - Difference between push and pull
    - When to use push vs. pull
  - Pipeline (formerly known as “Workflow”)
    - Benefits of Pipeline vs linked jobs
    - Functionalities offered by Pipeline
      - `Jenkinsfile` lives in the SCM that defines the Jenkins pipeline
      - needs pipeline plugin
      - 2 styles:
        - Declarative - defining the state as oppose to scripted
        - Scripted - more like a bash script, Groovy programing style
      - Example - basic layout:
      ```
      pipeline {
        agent any   <- which agent are we going to use for this pipeline (any/none/label '<MATCH>'/docker '<IMAGE>')

        stages {   <- stages of build
          stage('Build') {
            steps {
              echo 'Buidling..'
            }
          }
          stage('Test') {
            steps {
              echo 'Testing..'
            }
          }
          stage('Deploy') {
            steps {
              echo 'Deploying..'
            }
          }
        }
      }
      ```
      - directives can be either on the top and it applies to all steps, or in each step explicitly (e.g. different docker image for test and for deploy)
      - tons of different "steps" associated with plugins
      - "sh" for a shell script is the most commonly used
      - "echo" prints a string
      - environment directive sets EVN vars and they are available from the scope where they are defined:
      ```
      environment {
        ENV_VAR = "my value"
      }
      ```
      - Use Groovy lint in your IDE
    - How to use Pipeline
    - Pipeline stage view
  - Folders
    - How to control access to items in Jenkins with folders
    - Referencing jobs in folders
  - Parameters
    - Setting up test automation in Jenkins against an uploaded executable
    - Passing parameters between jobs
    - Identifying parameters and how to use them: file parameter, string parameter
    - Jenkins CLI parameters
      - Associate the SSH public key with the user: Manage Jenkins - Manage Users - gear - SSH Public Keys
      - Download the Jenkins client:
      ```
      wget http://(jenkins_master):8080/jnlpJars/jenkins-cli.jar
      echo "JENKINS_URL='http://localhost:8080'" >> /etc/environment
      echo "alias jenkins-cli='java -jar jenkins-cli.jar'" >> ~/.bashrc
      <LOGOUT><LOGIN> the bash session
      jenkins-cli
        Usage: java -jar jenkins-cli.jar [-s URL] command [opts...] args...
        Options:
          -s URL
          -i KEY
          -p HOST:PORT
          -noCertificateCheck
          -noKeyAuth    
      jenkins-cli help
      ```
      - Few different commands that are useful:
      ```
      jenkins-cli who-am-i
      jenkins-cli build "Freestyles/My Freestyle Project"
      jenkins-cli version
      jenkins-cli shutdown
      jenkins-cli safe-shutdown
      jenkins-cli restart
      jenkins-cli install-plugin thinBackup -restart
      jenkins-cli console "Freestyle/My Freestyle Project" 51
      ```
  - Promotions
    - Promotion of a job
    - Why promote jobs?
    - How to use the Promoted Builds plugin
  - Notifications
    - How to radiate information on CD pipelines to teams
  - Pipeline [Multibranch](https://jenkins.io/blog/2015/12/03/pipeline-as-code-with-multibranch-workflows-in-jenkins/) and Repository Scanning
    - Usage of Multibranch jobs
      - [Example for Java Project](https://github.com/linuxacademy/content-jenkins-java-project/blob/master/Jenkinsfile)
      - You can have conditions in the Jenkinsfile:
        ```when {
          branch 'development'
        }
        ```
      - When we have trunk branch where everyone pushes the code and then when tests are fine we want to promote to a different branch - we need to select "Multibranch pipeline"
        - Name
        - Display name
        - Description
        - Branch Sources
          - Add source - Git   <--not GitHub, because it uses HTTPS
            - Project repository: git@...
            - Credentials: jenkins
            - Repository browser: githubweb
              - URL: https://...
            - Additional Behaviours
            - Advanced:
              - Include branches
              - Exclude branches
              - Property strategy - All branches get the same properties
        - Health Metrics
          - [X]Recursive - individual projects will dictate the health
        - Pipeline Libraries
        - Pipeline Model Definition
      - After you save, it is determining the available branches
      - Disable the previous pipeline        
      - Add a new stage "Promote Development to Master"
      ```
        agent {
          label 'apache'
        }
        when {
          branch 'development'
        }
        steps {
          sh 'git stash'   <--stashing any local changes
          sh 'git checkout development'
          sh 'git pull origin'
          sh 'git checkout master'
          sh 'git merge development'
          sh 'git push origin master'
        }
        ```
      - Change "when branch development" to "master"
      - ENV var called ${env.BRANCH_NAME} is only available in multibranch pipeline project
      - Use this ENV var to create subdirectories where artifacts will be stored (../rectangles/all/development etc.)
      - Use "Scan Multibranch Pipeline" on the left pane
      - Fully automated merge will be triggered after the development build is finished
    - Scanning GitHub and Bitbucket Organization
    - Scanning basic SCM repositories
  - Pipeline Global Libraries
    - How to share code across Pipelines
      - library that has methods accessible amongst different projects
      - extend the functionality of your pipeline
      - Groovy/pipeline syntax
      - Put a file "sayHello.groovy" inside jenkins-global-library/vars
      ```
      def call(String name = 'you') {
        echo "Hello, ${name}"
      }
      ```
      - To add it on the global level - Manage Jenkins - Configure System - Global Pipeline Libraries - Add
        - Name
        - Default version: master
        - Load implicitly [X]
        - Allow default version to be overriden [X]
        - Retrieval method
          - Modern SCM
            - [X]GitHub
              - Owner
              - Scan credentials
               - Repository: jenkins-global-library
      - Modify Jenkinsfile to invoke it
        ```
        stage('Say Hello') {
          agent any
          steps {
            sayHello 'Lucian Maly'
          }
        }
        ```
      - We can add it per specific project as well (!)
      - Scripted pipeline is more flexible
        ```
        call library
          script {
            def myLib = new linuxacademy.git.gitStuff();
            echo "My Commit: ${myLib.GitCommit("${env.WORKSPACE}/.git")}"
          }
        ```
    - Usages of the [Shared Libraries](https://jenkins.io/doc/book/pipeline/shared-libraries/)
    - Interaction with Folders and Repository scanning
    - Security and Groovy sandbox

## CD-as-Code Best Practices

- [Distributed builds architecture](https://wiki.jenkins.io/display/JENKINS/Distributed+builds)
- [Fungible (replaceable) agents](https://jenkins.io/doc/book/hardware-recommendations/#choosing-the-right-build-machines)
- Master-agent connectors and protocol
  - Option 1: Master initiated to Agent over SSH.
  - Option 2: Agent initiated to Master over JNLP.
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

Ways to visualise items
- [Paramaterized Trigger Plugin](https://plugins.jenkins.io/parameterized-trigger) + [Conditional Build Step](https://plugins.jenkins.io/conditional-buildstep). Powerful. Hard to configure. No longer needed when using Jenkinsfile (Pipeline).
- [Build Pipeline Plugin](https://plugins.jenkins.io/build-pipeline-plugin). A Jenkin View visualising connected jobs. Also, allows integrated manual steps. Again, not really needed when using Jenkinsfile (Pipeline).
- [Pipeline Plugin](https://plugins.jenkins.io/workflow-aggregator). Aka Jenkinsfile. Define relationships between steps in a DSL

Cool plugins
- [Jenkins Literate Plugin](https://plugins.jenkins.io/literate). Write jobs in Markdown
- [Timestamper Plugin](https://plugins.jenkins.io/timestamper). Find out when something happened by logging time against each log record.

Groovy scripts
- [Jenkins Groovy Script Catalog](https://github.com/jenkinsci/jenkins-scripts/tree/master/scriptler)
