docker pull mrdos89/hbgogumaserver:latest
@REM docker pull mrdos89/hbgoguma-project:latest

cd compose
docker compose down
docker compose --env-file .env up -d
cd ..

call npm install react-icons
call npm install react-router-dom
call npm install qrcode.react
call npm install react-dom

call npm install && npm run dev