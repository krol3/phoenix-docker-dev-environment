FROM elixir:alpine

WORKDIR /app

RUN mix local.hex --force \
    && mix archive.install --force  https://github.com/phoenixframework/archives/raw/master/phx_new-1.3.4.ez \
    && apk update \
    && apk add git nodejs inotify-tools \
    && mix local.rebar --force

EXPOSE 4000

# Migrate
RUN mix ecto.create
RUN mix ecto.migrate

CMD ["mix", "phx.server"]