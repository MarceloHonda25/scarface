Dado("que eu estiver na home") do
  find(:xpath, '//*[@id="homeslider"]/li[4]/div/p[2]/button')
end

Quando("clicar no campo T-SHIRTS") do 
find(:xpath, '//*[@id="block_top_menu"]/ul/li[3]/a').click
end

E("repousar o cursor do mouse no item em exibição Faded Short Sleeve T-shirts") do
  page.execute_script('window.scrollBy(0,800)')
  find(:xpath, '//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img').hover
  find(:xpath, '//*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[1]/span').click
end

E("clicar em proceed to checkout1") do
  find(:xpath, '//*[@id="layer_cart"]/div[1]/div[2]/div[4]/a/span').click
end

E("clicar em proceed to checkout2") do
  page.execute_script('window.scrollBy(0,700)')
  find(:xpath, '//*[@id="center_column"]/p[2]/a[1]/span').click
end

E("clicar em proceed to checkout3") do
  page.execute_script('window.scrollBy(0,500)')
  first('#email').send_keys('emailteste@nomail.com')
  fill_in(@id="passwd",:with => '12345')
  find(:xpath, '//*[@id="SubmitLogin"]/span').click
end

E("clicar em proceed to checkout4") do
  page.execute_script('window.scrollBy(0,800)')
  sleep 3
  find(:xpath, '//*[@id="center_column"]/form/p/button/span').click
end

E("clicar em proceed to checkout5") do
  page.execute_script('window.scrollBy(0,300)')
  find(:xpath, '//*[@id="form"]/div/p[2]/label').click
  sleep 3
  page.execute_script('window.scrollBy(0,800)')
  find(:xpath, '//*[@id="form"]/p/button/span').click
end

E("clicar na opção pay by bank Wire") do
  find(:xpath, '//*[@id="HOOK_PAYMENT"]/div[1]/div/p/a').click
end

E("clicar no botão confirm my order") do
  find(:xpath, '//*[@id="cart_navigation"]/button').click
end

Então("a compra será realizada com sucesso") do
end
