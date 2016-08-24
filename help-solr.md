



Start solr

        bin/solr start

 Crate Core
9
        ./solr create -c hellosolr

./solr create –c hellosolr -d sample_techproducts_configs -p 8983

solr create_core –c <core-name> -d <conf-dir> -p <path>

export $JAVA_HOME=/opt/jdk1.8.0_65 && /opt/solr/bin/solr create –c gissa_ce_taua_normativo -d sample_techproducts_configs

Delete core

        bin/solr delete -c gissa-ce-taua-normativo

Index

    bin/post -c gissa_ce_taua_normativo /home/joao_lourenco/taua-leis

Config Sets
Solr 4.8 introduced a provision to create Config Sets, a set of sharable
configuration files, that can be used for creating new cores.

* basic_configs
    This contains the minimal configuration needed for running Solr.
* data_driven_schema_configs
    If you want to go schemaless, you can use this config. It’s configured to
    support a managed schema with field guessing.
* sample_techproducts_configs
    This is a full-fledged configuration with most of the optional features
    enabled. You can use this configset as a starting point for your core
    configuration.


# Install Solr as Service
Solr includes a service installation script (bin/install_solr_service.sh) to
help you install Solr as a service on Linux

curl -O http://ftp.unicamp.br/pub/apache/lucene/solr/6.1.0/solr-6.1.0.tgz
tar xzf solr-6.1.0.tgz solr-6.1.0/bin/install_solr_service.sh --strip-components=2
sudo bash install_solr_service.sh solr-6.1.0.tgz -i /opt -d /var/solr -u solr -s solr -p 8983

sudo service solr status

sudo bash ./install_solr_service.sh -help

Usage: install_solr_service.sh path_to_solr_distribution_archive OPTIONS

  The first argument to the script must be a path to a Solr distribution archive, such as solr-5.0.0.tgz
    (only .tgz or .zip are supported formats for the archive)

  Supported OPTIONS include:

    -d     Directory for live / writable Solr files, such as logs, pid files, and index data; defaults to /var/solr

    -i     Directory to extract the Solr installation archive; defaults to /opt/
             The specified path must exist prior to using this script.

    -p     Port Solr should bind to; default is 8983

    -s     Service name; defaults to solr

    -u     User to own the Solr files and run the Solr process as; defaults to solr
             This script will create the specified user account if it does not exist.

    -f     Upgrade Solr. Overwrite symlink and init script of previous installation.

 NOTE: Must be run as the root user


 # Install Solr as Service
 Solr inclui um script de instalação (bin/install_solr_service.sh)
 Solr includes a service installation script (bin/install_solr_service.sh) to
 help you install Solr as a service on Linux

 Commands:

         curl -O http://ftp.unicamp.br/pub/apache/lucene/solr/6.1.0/solr-6.1.0.tgz
         tar xzf solr-6.1.0.tgz solr-6.1.0/bin/install_solr_service.sh --strip-components=2
         sudo bash install_solr_service.sh solr-6.1.0.tgz

 Script Help:

         sudo bash ./install_solr_service.sh -help
         Usage: install_solr_service.sh path_to_solr_distribution_archive OPTIONS

           The first argument to the script must be a path to a Solr distribution archive, such as solr-5.0.0.tgz
             (only .tgz or .zip are supported formats for the archive)

           Supported OPTIONS include:

             -d     Directory for live / writable Solr files, such as logs, pid files, and index data; defaults to /var/solr

             -i     Directory to extract the Solr installation archive; defaults to /opt/
                      The specified path must exist prior to using this script.

             -p     Port Solr should bind to; default is 8983

             -s     Service name; defaults to solr

             -u     User to own the Solr files and run the Solr process as; defaults to solr
                      This script will create the specified user account if it does not exist.

             -f     Upgrade Solr. Overwrite symlink and init script of previous installation.

          NOTE: Must be run as the root user

 # Create core
 Use sollr app to create core

         sudo su solr -c "/opt/solr/bin/solr create -c gissa_ce_taua_normativo -d sample_techproducts_configs"

 # Index local files
 Solr provide post application to index files.

         ./solr-6.1.0/bin/post -host 192.168.2.81 -c gissa_ce_taua_normativo /home/joao_lourenco/taua-leis
