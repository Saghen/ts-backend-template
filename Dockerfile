FROM oven/bun:1.1-alpine as bun

RUN chown -R bun:bun .
USER 1000

COPY . .
RUN bun install --production --frozen-lockfile --ignore-scripts

CMD ["bun", "."]
