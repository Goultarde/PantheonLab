![PantheonLab Logo](assets/pantheonlab.png)

<p align="center">
  <a href="https://github.com/bbuddha/vulnad">
    <img alt="Maintained" src="https://img.shields.io/badge/maintained-yes-brightgreen?style=flat-square">
  </a>
  <img alt="Lab Status" src="https://img.shields.io/badge/lab-Active-blue?style=flat-square">
  <img alt="Contributions Welcome" src="https://img.shields.io/badge/contributions-welcome-orange?style=flat-square">
  <img alt="License" src="https://img.shields.io/badge/license-MIT-blue?style=flat-square">
  <img alt="Mythologie" src="https://img.shields.io/badge/thème-Mythologie%20grecque-yellow?style=flat-square">
</p>

# VulnAD - Le Panthéon de l'Active Directory Vulnérable

Bienvenue dans PantheonLab, un laboratoire immersif et modulaire dédié à l'apprentissage de la sécurité Active Directory et des techniques de pentest, le tout dans un univers inspiré du Panthéon grec !

## 🌩️ Présentation générale
PantheonLab propose plusieurs environnements ("labs") prêts à l'emploi, chacun incarnant une facette du Panthéon : chaque dieu ou déesse représente un scénario, une faille ou une technique d'attaque/défense Active Directory ou Linux. Le but est d'offrir un terrain de jeu réaliste, progressif et scénarisé pour les passionnés de cybersécurité, formateurs, étudiants ou professionnels.

## ⚡ Thématique Panthéon
Chaque lab, machine ou rôle fait référence à une divinité grecque : Zeus, Héra, Athéna, Hermès, etc. Les indices, scripts et visuels sont pensés pour renforcer l'immersion et la cohérence pédagogique.

## 🔧 Prérequis
- **Vagrant** (>=2.2)
- **VirtualBox** ou autre provider compatible Vagrant
- **Ansible** (>=2.9)
- **git**

## 🚀 Démarrage rapide
1. **Cloner le dépôt**
   ```bash
   git clone <repo-url>
   cd vulnad
   ```
2. **Choisir un lab**
   - Pour le lab principal :
     ```bash
     cd HCO_VulnAD/pantheon-lab
     vagrant up
     # puis voir les dossiers ansible/ pour les playbooks
     ```
   - Pour le lab WordPress :
     ```bash
     cd AME_VulnAD/ansible/wordpress-lamp_ubuntu1804
     vagrant up
     ansible-playbook -i inventory playbook.yml
     ```
   - Pour les challenges privesc (ex : Héra) :
     ```bash
     cd KPA/ansible/role-privesc-hera
     # Voir le README du rôle ou le main.yml pour les hooks
     ```

3. **Personnaliser et explorer**
   - Les variables, inventaires et scénarios sont adaptables à vos besoins.
   - Les hooks privesc sont chiffrés et à exploiter pour progresser dans le lab.

## 🧩 Contribution
- Proposez de nouveaux scénarios, dieux, failles ou visuels !
- Respectez la thématique et l'esprit pédagogique du projet.
- Documentez vos ajouts (README, commentaires, scripts).

## 📚 Ressources utiles
- [Guide Ansible WordPress LAMP](https://www.digitalocean.com/community/tutorials/how-to-use-ansible-to-install-and-set-up-wordpress-with-lamp-on-ubuntu-18-04)
- [Active Directory Attacks & Defense](https://adsecurity.org/)
- [HackTricks Active Directory](https://book.hacktricks.xyz/pentesting/pentesting-active-directory)

## 👑 Remerciements
Projet inspiré par la mythologie grecque et la passion de la communauté cybersécurité.

---

*Que la sagesse d'Athéna, la ruse d'Hermès et la puissance de Zeus t'accompagnent dans ta quête de la faille ultime !* 