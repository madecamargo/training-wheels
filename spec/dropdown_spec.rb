

describe "Caixa de Selecao", :dropdown do #select simples
  it "item especifico simples" do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"
    select("Loki", from: "dropdown") #funciona com elemento select que contem id
    sleep 3 #temporario
  end
  #drop vai ser a variavel que vai armazenar o elemento find no caso de nao ter o id
  it "item especifico com o find" do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"
    drop = find(".avenger-list")
    drop.find("option", text: "Scott Lang").select_option
    sleep 3
  end

  it "qualquer item", :sample do #metodo find busca apenas um elemento
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"
    drop = find(".avenger-list")
    drop.all("option").sample.select_option #vai trazer um array de options e o sample vai sortear uma opcao qualquer dentro de um array
  end
end
