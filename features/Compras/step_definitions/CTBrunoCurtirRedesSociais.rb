Dado("que eu esteja logado") do
    find(:xpath, '//*[@id="header"]/div[2]/div/div/nav/div[1]/a').click
    first('#email').send_keys('emailteste@nomail.com')
    fill_in(@id="passwd",:with => '12345')
    find(:xpath, '//*[@id="SubmitLogin"]/span').click
end

Quando("eu clicar no icone do YouTube localizado no canto inferior direito da página") do
  page.execute_script('window.scrollBy(0,1000)')
  find(:xpath, '//*[@id="social_block"]/ul/li[3]/a').click
end

Então("O usuário será redirecionado a página do YouTube onde seguirá a página") do
end
  