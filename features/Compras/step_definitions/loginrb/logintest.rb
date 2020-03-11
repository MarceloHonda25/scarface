Dado("que eu estou na tela de login") do
  @login_page = LoginPage.new
  @login_page.load
  expect(@login_page).to have_email
end

Quando("eu digitar meu usuario válido e senha errados e clicar em login") do
  @login_page.email.set 'emailtesty@teste.com'
  @login_page.password.set 'Ulalala'
  @login_page.loginbtn.click
end

Entao("receberei uma mensagem de login invalido") do
  expect(@login_page).to have_loginfail
  page.has_content?(text: 'Authentication failed.')
end

Quando("eu digitar um usuario invalido e clicar em login") do
  @login_page.email.set 'Luanafeliz'
  @login_page.password.set 'Ulalala1'
  @login_page.loginbtn.click
end

Entao("receberei uma mensagem de usuario invalido") do
  expect(@login_page).to have_loginfail
  page.has_content?(text: 'Invalid email address.')
 end

Quando("eu digitar um usuario sem senha e clicar em login") do
 @login_page.email.set 'Luanafeliz@inmetrics.com.br'
 @login_page.loginbtn.click
end

Entao("Uma mensagem de senha obrigatória será exibida") do
  expect(@login_page).to have_loginfail
  page.has_content?(text: 'Password is required.')
end

Quando("eu digitar somente a senha e clicar em login") do
  @login_page.password.set '12345'
  @login_page.loginbtn.click
end

Entao("receberei mensagem que usuário deverá ser informado") do
  expect(@login_page).to have_loginfail
  page.has_content?(text: 'An email address required.')
end