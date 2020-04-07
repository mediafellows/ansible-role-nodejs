[![Build Status](https://travis-ci.com/mediafellows/ansible-role-nodejs.svg?branch=master)](https://travis-ci.com/mediafellows/ansible-role-nodejs)

# Ansible Role: Node.js

Installs Node.js on RHEL/CentOS or Debian/Ubuntu.

## Requirements

Machine running supported Linux versions, see above and in meta/main.yml

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

    nodejs_version: "8.x"

The Node.js version to install. "8.x" is the default and works on all supported OSes. Other versions such as "8.x", "11.x", "12.x", and "12.x" should work on the latest versions of Debian/Ubuntu and RHEL/CentOS.

    nodejs_install_npm_user: "{{ ansible_ssh_user }}"

The user for whom the npm packages will be installed can be set here, this defaults to ansible_user

    npm_config_prefix: "~/.npm-global"

The global installation directory. This should be writeable by the nodejs_install_npm_user.

    npm_config_unsafe_perm: "false"

Set to true to suppress the UID/GID switching when running package scripts. If set explicitly to false, then installing as a non-root user will fail.

    nodejs_npm_global_packages: []

Add a list of npm packages with a `name` and (optional) `version` to be installed globally. For example:

    nodejs_npm_global_packages:
      # Install a specific version of a package.
      - name: jslint
        version: 0.9.3
      # Install the latest stable release of a package.
      - name: node-sass

## Dependencies

None.

## Example Playbook

    - hosts: some_hosts
      vars:
        nodejs_version: '5.8.0'
        nodejs_npm_global_packages:
          - name: jslint
          - name: node-sass
      roles:
        - mediafellows.nodejs

## License

MIT / BSD

## Author Information

This role was created in 2014 by Jeff Geerling, see original repo here: https://github.com/geerlingguy/ansible-role-nodejs
