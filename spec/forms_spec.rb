## puts find("#flash").visible? (pode ser assim pra imprimir se ta visível ou nao)
##você troca para expect quando precisar validar a notificação, no caso abaixo##expect(find("#flash").text).to eql "Olá, Tony Stark. Você acessou a área logada!" aqui vai dar bo por caractere

describe "Forms" do
  it "login com sucesso" do
    visit "https://training-wheels-protocol.herokuapp.com/login"

    fill_in "username", with: "stark"
    fill_in "password", with: "jarvis!"

    click_button "Login"

    expect(find("#flash").visible?).to be true

    ##puts find("#flash").text
    ##puts "Olá, Tony Stark. Você acessou a área logada!"

    ## esse jeito é bao, mas o de baixo é melhor. expect(find("#flash").text).to include "Olá, Tony Stark. Você acessou a área logada!"
    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end
end
