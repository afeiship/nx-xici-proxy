# nx-xici-proxy
> Xici proxy for nx.

## installation
```rb
# from gem
gem 'nx-xici-proxy'
# from git
gem 'nx-xici-proxy', git: 'git@github.com:afeiship/nx-xici-proxy.git',ref:'a6b0a57acd05315f97a70c9b45ffbbb7405afa0c'
```

## usage
```rb
Nx::XiciProxy::fetch

# result
[
    {
        :ip=>"138.197.74.25", 
        :port=>"8118"
    }, 
    {
        :ip=>"167.172.17.86", 
        :port=>"3128"
    }
    # ...
]
```

## build/publish
```shell
# build
gem build nx-xici-proxy.gemspec

# publish
gem push nx-xici-proxy-0.1.0.gem
```
