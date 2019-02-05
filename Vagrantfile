# Global Ports
OPENED_PORT_LIST={
    "3306" => 3306, # MySQL DB 
    "8081" => 8081, # Locally Exposed Web Apps
    "8082" => 8082, # Locally Exposed Web Apps 
    "8091" => 8091, # Locally Exposed Web Apps 
    "8092" => 8092, # Locally Exposed Web Apps 
    "9091" => 9091, # Locally Exposed Web Apps
    "9092" => 9092, # Locally Exposed Web Apps
    "27017" => 27017, # MongoDB
    "4369" => 4369, # Rabbit MQ
    "5671" => 5671, # Rabbit MQ
    "5672" => 5672, # Rabbit MQ
    "15671" => 15671, # Rabbit MQ
    "15672" => 15672, # Rabbit MQ
    "25672" => 25672 # Rabbit MQ
}

Vagrant.configure("2") do |config|
  config.vm.box = "AlbanMontaigu/boot2docker"

  config.vm.network "public_network"
  
  OPENED_PORT_LIST.each do |guest, host|
    config.vm.network "forwarded_port", guest: "#{guest}", host: "#{host}", protocol: "tcp"
  end
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.name = "boot2docker-vm"
    vb.cpus = 2
    # Check if this is necessary
    # vb.customize [ "modifyvm", :id, "--natdnshostresolver1", "on" ]
  end
end
