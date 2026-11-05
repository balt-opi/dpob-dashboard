[private]
@default:
    just -l

# deploy `static/` to azure static web apps using `swa` cli
deploy:
    swa deploy -nu --env production
