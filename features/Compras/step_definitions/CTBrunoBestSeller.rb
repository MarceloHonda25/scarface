Dado("que eu esteja na home") do 
  find(:xpath,'//*[@id="home-page-tabs"]/li[2]/a')
end

E("Clicar no botão best seller localizado abaixo do carrocel") do 
  
  find(:xpath, '//*[@id="home-page-tabs"]/li[2]/a').click
end

Então("a página exibirá os produtos que são best sellers") do
  find(:xpath,'//*[@id="home-page-tabs"]/li[2]/a')
  
end