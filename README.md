DotGuard

DotGuard is a configuration management system built with Terraform, and configured by Ansible. It treats Linux desktop environments and window managers as "Infrastructure as Code", ensuring that system configurations and dotfiles are version controlled, reproducible, and are securely deployable.

Project Goals

    - Consistency: Ensure the system state always matches the configuration 
    
    - Portability: Rapidly deploy a consistent, custom Fedora/Hyprland environment on new hardware
    
    - Security: Enforce strict file permissions on sensitive configuration files using Terraform

    - Automation: Via systemd automating tasks to prevent drift

Tech Stack 

    - Provisioning: Terraform (local)
    
    - Configuration: Ansible

    - Automation: Systemd (services & timers)

    - Observability: Prometheus & Grafana

    - Environment: Fedora

    
Security Implementation 

As this project is developed within a Cybersecurity framework, DotGuard implements:

    - Exclusion: .tfstate files are gitignored to prevent sensitive data leakage to public repositories

    - Privilege: Configurations are deployed with explicit permissions (0600 for sensitive configs) to prevent unauthorized local read access

    - Continuous Auditing: Custom Prometheus exporter continuously scrapes file metadata for drift

Automation and Observability

    - Observe: Custom bash script scrapes the perms of files via Systemd timers and feeds data to Prometheus 
    
    - Visualize: Grafana "stat" shows the Prometheus data in a dashboard with colour coded thresholds to identify proper perms
        
        + Green    (600)    - strictest access
        + Yellow   (644)    - standard read write access
        + Red      (700+)   - UNSECURE access
    
    - Enforce: Utilizes Ansible via Systemd timer to automatically enforcing a self-healing system
        
<img width="2559" height="1599" alt="grafana" src="https://github.com/user-attachments/assets/04e4ba79-f37a-4e45-b8e7-2a1f85cec40a" />

<br>
<br>

