# frozen_string_literal: true

server '54.199.112.63', user: 'moom', roles: %w[app db web]
set :ssh_options, keys: '/Users/moomy/.ssh/id_rsa'
