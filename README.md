DotGuard

DotGuard is a configuration management system built with Terraform. It treats Linux desktop environments and window managers as "Infrastructure as Code", ensuring that system configurations and dotfiles are version controlled, reproducible, and are securely deployable.

Project Goals

    - Consistency: Ensure the system state always matches the configuration 
    
    - Portability: Rapidly deploy a consistent, custom Fedora/Hyprland environment on new hardware
    
    - Security: Enforce strict file permissions on sensitive configuration files using Terraform

Tech Stack 

    - Technology: Terraform (Local Provider Module)

    - Operating System: Fedora Linux

    - Window Manager: Hyprland (Wayland)

    - Terminal Emulator: Kitty

    - Version Control: Git

Security Implementation 

As this project is developed within a Cybersecurity framework, DotGuard implements:

    - Exclusion: .tfstate files are gitignored to prevent sensitive data leakage to public repositories

    - Privilege: Configurations are deployed with explicit permissions (0600 for sensitive configs) to prevent unauthorized local read access

Quick Start 

    1. Clone the repository:
        git clone https://github.com/sj-0306/DotGuard.git
        cd DotGuard
    
    2. Initialize the environment:
        terraform init
    
    3. Preview changes:
        terraform plan

    4. Deploy configurations:
        terraform apply
