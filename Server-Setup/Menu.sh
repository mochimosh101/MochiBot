#!/usr/bin/env bash
export "MOCHIHOME=$(pwd)/test.sh" # PLEASE RE EDIT THIS EVN PLEASE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
export "NAME=$(whoami)"
export BOT="\"MochiBot\""
export LOOPEND=""
clear
printf "\nWelcome, %s\n" "$NAME!"
printf "My name is %s\n" "$BOT"
sleep 1
printf "\nWould you like to save me as a shell command? [y/N]\n"
read -r COMMAND
until [[ $LOOPEND == true ]]; do

if [[ "$COMMAND" == "y" ]]; then
    alias mochibot='$MOCHIHOME'
  
else [[ "$COMMAND" != "y" ]];
    echo "You have selected something that I have not been program to do!"
    sleep 1
    "$LOOPEND=true"
fi

done


printf "I will be helping you with your initial server set up!\n" 
echo -e "What would you like to start with?"
echo -e "   =================================
1. | User Management               |
2. | Distro Management             |
3. | SSH Management                |
4. | Custom Management             |
5. | Exit Menu                     |
   ================================="

export one="User Management"
export two="Distro Management"
export three="SSH Management"
export four="Custom Configuration"
export five="Exit Menu"

read -r USERINPUT

############## Menu 1 ##############
if [[ $USERINPUT == "1" ]]; then
    echo -e "You have selected: $one\n"
    sleep 1
    echo -e "User Management:
    - (a) Adds a new user (Optional Inputs: Add Home Dir | Add Shell | Add User Discription)
    - (b) Add to a new group (this could be for the sudo group)
    - (c) Add or Change Password for the user"

    if [[ $USERINPUT == "a" ]]; then
        # Redirect the user to the 1st Menu List Folder (Option A)
        ./Menu-List/a-user.sh

    elif [[ $USERINPUT == "b" ]]; then
        # Redirect the user to the 1st Menu List Folder (Option B)
        ./Menu-List/b-user.sh
        
    elif [[ $USERINPUT == "c" ]]; then
        # Redirect the user to the 1st Menu List Folder (Option C)
        ./Menu-List/c-user.sh

    elif [[ $USERINPUT == "d" ]]; then
        # Redirect the user to the 1st Menu List Folder (Option D)
        ./Menu-List/d-user.sh

    fi

############## Menu 2 #####################
elif [[ $USERINPUT == "2" ]]; then
    echo -e "You have selected: $two\n"
    sleep 1
    echo -e "Distro Update:
    - (a) Update the full distro
    - (b) Upgrade the distro"

    if [[ $USERINPUT == "a" ]]; then
        # Redirect the user to the 2nd Menu List Folder (Option A)
        ./Menu-List/a-distro.sh

    elif [[ $USERINPUT == "b" ]]; then
        # Redirect the user to the 2nd Menu List Folder (Option B)
        ./Menu-List/b-distro.sh
        
    elif [[ $USERINPUT == "c" ]]; then
        # Redirect the user to the 2nd Menu List Folder (Option C)
        ./Menu-List/c-distro.sh

    elif [[ $USERINPUT == "d" ]]; then
        # Redirect the user to the 2nd Menu List Folder (Option D)
        ./Menu-List/d-distro.sh

    fi

############## Menu 3 #####################
elif [[ $USERINPUT == "3" ]]; then
    echo -e "You have selected: $three\n"
    sleep 1
    echo -e "SSH Management
    - (a) Adds .ssh directory into: $HOME 
    - (b) Configure: $HOME/.ssh/config
    - (c) Configure sshd_config
    - (d) Restarts SSHD"

    if [[ $USERINPUT == "a" ]]; then
        # Redirect the user to the 3rd Menu List Folder (Option A)
        ./Menu-List/a-ssh.sh

    elif [[ $USERINPUT == "b" ]]; then
        # Redirect the user to the 3rd Menu List Folder (Option B)
        ./Menu-List/b-ssh.sh
        
    elif [[ $USERINPUT == "c" ]]; then
        # Redirect the user to the 3rd Menu List Folder (Option C)
        ./Menu-List/c-ssh.sh

    elif [[ $USERINPUT == "d" ]]; then
        # Redirect the user to the 3rd Menu List Folder (Option D)
        ./Menu-List/d-ssh.sh

    fi

############## Menu 4 #####################
elif [[ $USERINPUT == "4" ]]; then
    echo -e "You have selected: $four\n"
    sleep 1
    echo 

    if [[ $USERINPUT == "a" ]]; then
        # Redirect the user to the 4th Menu List Folder (Option A)
        ./Menu-List/a-user.sh

    elif [[ $USERINPUT == "b" ]]; then
        # Redirect the user to the 4th Menu List Folder (Option B)
        ./Menu-List/b-user.sh
        
    elif [[ $USERINPUT == "c" ]]; then
        # Redirect the user to the 4th Menu List Folder (Option C)
        ./Menu-List/c-user.sh

    elif [[ $USERINPUT == "d" ]]; then
        # Redirect the user to the 4th Menu List Folder (Option D)
        ./Menu-List/d-user.sh

    fi

############## Menu 5 #####################
elif [[ $USERINPUT == "5" ]]; then
    echo -e "You have selected: $five\n"
    sleep 1
    if [[ $USERINPUT == "a" ]]; then
        # Redirect the user to the 5th Menu List Folder (Option A)
        ./Menu-List/a-user.sh

    elif [[ $USERINPUT == "b" ]]; then
        # Redirect the user to the 5th Menu List Folder (Option B)
        ./Menu-List/b-user.sh
        
    elif [[ $USERINPUT == "c" ]]; then
        # Redirect the user to the 5th Menu List Folder (Option C)
        ./Menu-List/c-user.sh

    elif [[ $USERINPUT == "d" ]]; then
        # Redirect the user to the 5th Menu List Folder (Option D)
        ./Menu-List/d-user.sh

    fi

############## Error Message Exit 1########
elif [[ $USERINPUT -le "6" ]]; then
    echo "EERRROOORRRRRRRR"
    sleep 1
    echo -e "You have selected something that I have not been program to do!"
    sleep 1
    echo -e "Plrease try again and select another option.."
    exit 1
fi