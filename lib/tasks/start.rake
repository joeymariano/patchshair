task :start do
  exec 'thin -R config.ru -a 127.0.0.1 -p 3000 start --ssl'
end
