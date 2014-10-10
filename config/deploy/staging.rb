# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.


# Extended Server Syntax
# ======================git ls-remote
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

server '172.16.157.128',
       user: 'user',
       roles: %w{web app},
       ssh_options: {
           forward_agent: false,
           auth_methods: %w(publickey password),
           password: 'please use keys'
       }

# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------

set :deploy_to, "/home/user/suo"
set :rails_env, "production"
set :conditionally_migrate, true


