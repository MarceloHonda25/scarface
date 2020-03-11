Dado("que eu esteja logado na home") do 
  find(:xpath, '//*[@id="header"]/div[2]/div/div/nav/div[1]/a').click
  first('#email').send_keys('emailteste@nomail.com')
  fill_in(@id="passwd",:with => '12345')
  find(:xpath, '//*[@id="SubmitLogin"]/span').click
end

Quando("clicar em signout") do
  find(:xpath, '//*[@id="header"]/div[2]/div/div/nav/div[2]/a').click
end

Então("o usuário retornará a home deslogado") do
  find(:xpath, '//*[@id="header"]/div[2]/div/div/nav/div[1]/a')
end