import * as chai from 'chai';
import chaiHttp = require('chai-http');
import * as nock from 'nock';

chai.use(chaiHttp);


function mock(response: any, url: string){
    const URL = 'http://localhost:7890/api/cats';
    nock(URL).get(url).reply(200,response);
}

//Testes de Unidade
describe('Suite de Testes - Api Gatos', () => {
    beforeEach(() => {
        mock([{}],'/');
        mock({},'/:id')
        mock([{}],'/search?q=b');
    })

    it("Deve retornar todas as raças de gato cadastradas",() => {
    });

    it("Deve retornar a raça Ragdoll",() => {

    });

    it("Deve Procurar todos os gatos que começam com a letra B", () => {

    });
})

