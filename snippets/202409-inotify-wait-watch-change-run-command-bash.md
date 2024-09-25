while inotifywait -e modify scripts/generate-md.ts; do npm run generate-md; done
