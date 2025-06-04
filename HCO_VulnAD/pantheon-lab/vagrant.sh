#!/bin/bash

# Couleurs pour les messages
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Démarrage de la recréation des machines virtuelles...${NC}"

# Fonction pour gérer une machine virtuelle
handle_vm() {
    local vm_name=$1
    local vm_path=$2
    
    echo -e "\n${GREEN}Gestion de $vm_name...${NC}"
    cd "$vm_path"
    
    echo -e "${GREEN}Destruction de $vm_name...${NC}"
    vagrant destroy -f
    
    echo -e "${GREEN}Création de $vm_name...${NC}"
    vagrant up
    
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}$vm_name a été recréé avec succès${NC}"
    else
        echo -e "${RED}Erreur lors de la création de $vm_name${NC}"
        exit 1
    fi
}

# Gestion de DC01
handle_vm "pantheon-dc01" "vagrant/dc01"

# Gestion de CA01
handle_vm "pantheon-ca01" "vagrant/ca01"

echo -e "\n${GREEN}Toutes les machines virtuelles ont été recréées avec succès !${NC}" 