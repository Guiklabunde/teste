README - Projeto E-commerce
Este é o README do projeto E-commerce, que contém instruções para executar o projeto em seu ambiente local, e exemplos de requisições para utilização da API.

Tecnologias Utilizadas:

- ReactJS.
- Tailwind CSS.
- TypeScript.
- PHP.
- MySQL.
- Composer.
- Laravel.
- Insomnia.

Instruções para executar o projeto:

Certifique-se de seguir as etapas abaixo para configurar corretamente o ambiente de desenvolvimento.

Requisitos:

Wampserver64: Certifique-se de possuir o Wampserver64 instalado em seu sistema. Você pode baixá-lo em: https://sourceforge.net/projects/wampserver/
Laravel: Certifique-se de possuir o laravel.
Node.js: Verifique se o Node.js está instalado em seu sistema. Ele pode ser baixado em: https://nodejs.org.
Visual Studio Code: Você pode utilizar o Visual Studio Code ou qualquer outro editor de sua preferência.

Configuração do Backend:

Baixe o arquivo "backend" e salve-o dentro da pasta C:\wamp64\www.
Baixe o arquivo SQL "produtos" (banco de dados) que contém a tabela "produtos".
Abra o WampServer e acesse o phpMyAdmin em seu navegador, digitando http://localhost/phpmyadmin.
Importe o banco de dados "produtos" no phpMyAdmin.

Executando o Backend:

Abra o Prompt de Comando e navegue até a pasta C:\wamp64\www\backend. *Prefiro abrir a pasta e digitar cmd*.
No Prompt de Comando, execute o seguinte comando: php artisan serve. Isso iniciará o servidor local do Laravel.
Agora, o backend estará em execução e pronto para atender às solicitações.

Configuração do Frontend:

Abra a pasta "frontend" no Visual Studio Code (ou no seu editor de código preferido).
Abra o terminal integrado no Visual Studio Code.
No terminal, execute o seguinte comando: npm install react-router-dom. Isso instalará a biblioteca React Router DOM.
Após a conclusão, execute o seguinte comando: npm install axios. Isso instalará a biblioteca Axios.
Quando as dependências estiverem instaladas, execute o comando: npm run dev. Isso iniciará o servidor de desenvolvimento local.
Agora, o frontend estará em execução e você poderá acessá-lo no navegador.

Exemplos de Requisições (utilizei o Insomnia):

A seguir, estão exemplos de requisições para utilização da API do projeto E-commerce:

Obter todos os produtos
Rota: GET /api/produtos

Retorno EXEMPLO:
json

[
  {
    "id": 1,
    "marca": "Electrolux",
    "nome": "Refrigerador Frost Free",
    "foto": "url da imagem",
    "descricao": "Refrigerador Frost Free, ótimo para deixar seus alimentos frescos",
    "tensao": "127",
    "preco": "2400.00",

  },
  {
    "id": 2,
    "marca": "Brastemp",
    "nome": "Refrigerador Inox",
    "foto": "url da imagem",
    "descricao": "Refrigerador Inox, ótimo para manter a picanha fresquinha",
    "tensao": "127",
    "preco": "3600.00",
  },
  ...
]

Obter um produto específico:

Rota: GET /api/produtos/{id}
Dados de entrada: Substitua {id} pelo ID do produto desejado.
Retorno:
json

{
    "id": 1,
    "marca": "Electrolux",
    "nome": "Refrigerador Frost Free",
    "foto": "url da imagem",
    "descricao": "Refrigerador Frost Free, ótimo para deixar seus alimentos frescos",
    "tensao": "127",
    "preco": "2400.00",
}

Criar um novo produto:

Rota: POST /api/produtos
Dados de entrada:
json

{
    "id": " ",
    "marca": "nome da marca",
    "nome": "nome do modelo",
    "foto": "url da imagem",
    "descricao": "descrição do produto",
    "tensao": "tensão do produto",
    "preco": "preço do produto",

}

Atualizar um produto existente:

Rota: PUT /api/produtos/{id}
Dados de entrada: Substitua {id} pelo ID do produto a ser atualizado.
json

{
    "id": "novo id ",
    "marca": "novo nome da marca",
    "nome": "novo nome do modelo",
    "foto": "novo url da imagem",
    "descricao": "nova descrição do produto",
    "tensao": "nova tensão do produto",
    "preco": "novo preço do produto",
}

Excluir um produto:

Rota: DELETE /api/produtos/{id}
Dados de entrada: Substitua {id} pelo ID do produto a ser excluído.


Conclusão:

Após seguir todas as etapas acima, você terá o ambiente de desenvolvimento configurado corretamente e poderá executar o projeto E-commerce em sua máquina local. Utilize o Insomnia (ou outra ferramenta de teste de API) para interagir com a API e realizar as requisições conforme os exemplos fornecidos.

Se surgirem dúvidas adicionais, consulte a documentação específica de cada tecnologia ou entre em contato comigo, poderei lhe ajudar!