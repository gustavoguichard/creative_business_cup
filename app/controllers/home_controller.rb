#!/bin/env ruby
# encoding: utf-8
class HomeController < ApplicationController
  def index
    @inscription = Inscription.new
    @committee = [
      {name: "Monica Puoli",
        description: "Coordenadora do CBC Brasil é especialista em Design Thinking pela HPI d.school Potsdam e Mestre em Design de Serviços, Criatividade e Inovação pela London College of Communication, participou de projetos de inovação em Berlin, Londres e Seul, Coreia. Designer por formação, passou pelo departamento de design da Tok&Stok e trabalhou diretamente com Baba Vacaro antes de se aventurar para fora do país. Hoje trabalha como consultora e facilitadora em projetos de inovação aberta, design de serviços entre outros e acredita que 'valor compartilhado é o único valor'! Trabalha para mudar o mundo através do empreendedorismo social e criativo.",
        image: "monica.jpg"},
      {name: "Tomás de Lara",
        description: "Administrador de empresas graduado pela PUCRS possui Master em Marketing e comunicação digital pela ESPM. Co-fundador da Engage. Professor da ESPM-Sul do curso de Novas Economias Colaborativas - Crowdsourcing e Crowdfunding, ex-diretor executivo da Quavio Soluções digitais, empresa de consultoria e desenvolvimento de software para Internet. Tomás é atualmente um dos diretores da ABRADiRS (Associação Brasileira das Agências digitais do RS).",
        image: "tomas.jpg"},
      {name: "Fernanda Nudelman",
        description: "Fundadora do Pto de Contato - espaço de coworking. Publicitária formada pela Escola Superior de Propaganda e Marketing, atuou oito anos no mercado de comunicação, passando por diversas empresas, agências e consultorias: W/Brasil, IBM, DeSimoni, SuperProduções, Jokerman, Mídia em Foco, Edelman Significa. Há quatro anos está imersa no mundo empreendedor e sua maior realização é o contato diário com empreendedores de todas as espécies e a geração acelerada de novos negócios e inovações entre eles.",
        image: "fernanda.jpg"},
      {name: "Lucas Foster",
        description: "Idealizador do ProjectHub, é coordenador-geral do Prêmio Brasil Criativo, do Ministério da Cultura e co-fundador do Movimento SP+C. Atua como orientador de programas e projetos culturais para pessoas, empresas e organizações ligadas à Economia Criativa. É professor de pós-graduação do IED São Paulo e palestrante sobre Economia Criativa, Transformações Urbanas e Desenvolvimento Humano. Possui especialização em Leadership Studies pela INTAC, Dinamarca com bolsa de estudos da International Sport and Culture Association, através do SESC-SP.",
        image: "lucas.jpg"},
      {name: "Marcella Monteiro B. T. Coelho",
        description: "Coordenadora da Semana Global de Empreendedorismo Brasil e Endeavor foi escolhida como shaper de São Paulo pelo Fórum Econômico de DAVOS. Marcella atua em diversos movimentos ligados à cidadania como o Eu Voto Distritral, Movimento Oásis Santa Catarina, The Elders e Rede de Transformação Pública. Diretora do Comitê de Responsabilidade Social de Jovens da FIESP, membro do Conselho Curador da Fundação Dorina Nowill Para Cegos e do Conselho do Instituto Brasis. Formada em direito pelo Mackenzie é advogada da área de Terceiro Setor, Responsabilidade Social e Cultura e passou por grandes escritórios como Mattos Filho, Veiga Filho, Marrey Jr. e Quiroga Advogados. ao longo de sua trajetória sempre buscou aliar carreira professional à missão de vida.",
        image: "marcella.jpg"}
    ]
    index_page
  end
end
