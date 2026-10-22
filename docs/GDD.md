# **Caso Samsa: A Metamorfose**

**Tagline:** *Gregor Samsa realmente morreu?*

**Gêneros:** *Terror, mistério, investigação*

**Público-alvo:** *Adolescentes e jovens adultos*

### **Ideia do jogo** 

Um jogo de investigação onde Grete Samsa, anos depois dos ocorridos de “A Metamorfose”, retorna a antiga casa da família como investigadora após reabrir o caso do irmão para descobrir o que realmente aconteceu com ele. Ela acaba ficando presa na casa que foi possuída pelo espírito do irmão por revolta pela forma como foi abandonado e tem que recolher diversos itens e desvendar diversos puzzles para sair da casa.

### **Elementos do Jogo**

Coletar itens pela casa.

Desvendar puzzles com uso desses itens e outras informações.

Fugir de Gregor Samsa em suas diferentes formas.

### **Loop de Jogo**

Procurar itens e informações pela casa \-\> Encontrar um uso para ele \-\> Fugir de Gregor se for encontrado por ele \-\> Encontrar novo item ou informação \-\> Encontrar um uso para ele.

### **Jogador**

Grete Samsa, enviada à casa da família Samsa como investigadora para descobrir se seu irmão realmente teve o fim trágico que está descrito no caso arquivado dele.

### **Inimigo**

Espírito de Gregor Samsa que assombra a casa por ter assuntos mal resolvidos e um luto pela forma como sua história acabou.

### **Cenário**

Casa da família Samsa após alguns anos de abandono.

## **ESPECIFICAÇÕES TÉCNICAS**

* **Forma Técnica:** 2D  
* **Perspetiva/Câmara:** Top-Down  
* **Plataforma:** Android, Linux e Windows  
* **Linguagem:** GDScript  
* **Dispositivo:** Mobile e PC

## **JOGABILIDADE (GAMEPLAY)**

A Grete é enviada a casa Samsa e ao entrar encontra Gregor em sua forma humana porém ele desaparece, após isso ela segue pela casa procurando pistas do que aconteceu ali, ao entrar no antigo quarto de Gregor e ver o corpo da barata gigante que ele se tornou se inicia a perseguição, a partir disso ela deve procurar pela casa itens e pistas que a ajudem a sair da casa e se possível entender o que aconteceu ali no processo.

### **Esboço da Jogabilidade**

#### Menu inicial

Uma tela inicial bem básica apenas com a casa de fundo à direita, o título à esquerda em cima e em lista abaixo dele: Jogar, Opções e Créditos.

#### Opções do jogo

As opções de configuração do jogo vão ser: 

* Mudança de língua  
* Tamanho da fonte  
* Inverter posição dos controles  
* Posição dos controles (mobile)  
* Mapeamento de teclas (PC e Controle)  
* Desativar tremores da câmera  
* Presets gráficos (Baixo, Médio, Alto)  
* Desativar sombras

#### Modos de jogo

Modos baseados em dificuldade:

* **Fácil:** Gregor mais lento e troca menos de forma.  
* **Normal:** Gregor na velocidade padrão e com trocas de forma em tempo moderado.  
* **Difícil:** Gregor mais rápido e troca de forma com frequência.

Modos baseado em gameplay:

* **Padrão:** Modo de jogo padrão descrito nesse documento.  
* **Speedrun:** Adiciona um timer no canto da tela para acompanhar o tempo da run.  
* **Itens aleatórios:** Aleatoriza a posição dos itens pela casa.

#### Níveis do jogo

**Nível 0:** Início do jogo antes de entrar no quarto de Gregor, ele não está pela casa, porém somente o térreo da casa é acessível.  
**Nível 1:** Após despertar Gregor, ele te persegue pela casa na forma humana, todo o primeiro andar da casa está disponível.  
**Nível 2:** Após ir ao segundo andar da casa ou chegar ao dia 2 (morrer uma vez), Gregor se transforma e te persegue na forma barata, só o porão não é acessível.  
**Nível 3:** Após abrir o porão ou chegar ao dia 5 (último dia), Gregor se transforma na sua forma barata definitivamente e te persegue de forma mais agressiva.

#### Controle do jogador

Os controles do jogador são:

* Movimento nas 8 direções  
* Interagir/Pegar/Analisar  
* Usar/Atirar (quando tiver arma)  
* Pausar  
* Correr

#### Vitória

O jogador vence o jogo ao concluir os puzzles necessários para abrir a porta da casa e fugir.

#### Derrota

O jogador é derrotado se for pego pelo Samsa 5 vezes e consequentemente passar 5 dias na casa.

#### Fim

Existem dois finais:  
Grete descobre a tristeza do irmão e porque ele possuiu a casa e ao se desculpar com ele, ele consegue descansar em paz (Final canônico)  
Grete descobre ou não porque o irmão possuiu a casa mas ainda sim escolhe fugir sem se resolver é o caso é encerrado e arquivado novamente (Final alternativo)

#### Por que razão tudo isto é divertido?

Isso tudo é divertido pois fugir de Gregor trás um grande suspense enquanto se tem que usar seu próprio raciocínio para descobrir o que aconteceu.

### **Características Principais (Key Features)**

Atmosfera de suspense: Mistura de tensão e mistério.  
Inimigo metamorfo: Inimigo que muda de forma constantemente para te perseguir.  
Puzzles intrigantes: Desafios a serem desvendados por você.  
Sistema sonoro: Evite fazer barulho para não ser pego.

## **GAME DESIGN**

### **Lista de Mecânicas:**

#### Mecânicas ativas:

**Jogador:**

- [ ] **Movimento em 8 direções:** O jogador deve poder se mover em 8 direções com suas animações de forma coerente.  
- [ ] **Correr:** O jogador deve poder correr nas oito direções ficando um pouco mais rápido mas consumindo stamina  
- [ ] **Ouvir:** O jogador deve poder escutar barulhos feitos na sua área de escuta.  
- [ ] **Interação com ambiente:** O jogador deve poder interagir com o ambiente, abrindo portas, gavetas, armários entre outros.  
- [ ] **Pegar itens:** O jogador deve poder pegar itens um a um e largar eles.  
- [ ] **Analisar:** O jogador deve poder interagir com documentos e fotos pela casa que se abrem na tela para que ele possa ler.   
- [ ] **Usar itens:** O jogador deve poder usar itens em suas respectivas funções na casa.  
- [ ] **Atirar:** O jogador deve poder atirar na direção que está olhando se estiver em posse de uma arma.

**Inimigo:**

- [ ] **Movimento em 8 direções:** O inimigo deve poder se mover em 8 direções com suas animações de forma coerente.  
- [ ] **Ouvir:** O inimigo deve poder escutar barulhos feitos na sua área de escuta.  
- [ ] **Perseguir jogador:** O inimigo deve poder detectar o jogador se ele estiver por perto e na visão dele.  
- [ ] **Rondar:** O inimigo quando não sabe onde o jogador está, deve escolher (aleatoriamente) algum cômodo da casa e ir até ele procurando o jogador.  
- [ ] **“Entrar nas paredes”:** O inimigo deve poder entrar em certos pontos nas paredes pela casa e reaparecer em outro ponto da casa (aleatoriamente) se não encontrar o jogador por um certo tempo.  
- [ ] **Levar tiro:** O inimigo deve poder receber um tiro do jogador, o que faz ele ativar a função “Entrar nas paredes” onde estiver e reaparecer em outro lugar da casa depois de um tempo (depende da arma).  
- [ ] **Metamorfose:** O inimigo deve poder se transformar de tempos em tempos em outro ser, alterando suas habilidade de Perseguir, Ouvir e Rondar. Sempre ativado após reaparecer de “Entrar nas paredes”.   
      As possíveis formas são:  
      * **Humano:** todos os sentidos do inimigo são os padrões de uma pessoa.  
      * **Barata:** essa forma pode ouvir mais longe, pode perseguir mais rápido e ela pode rondar oculta (andando pelo teto)  
      * **Barata definitiva:** essa forma ouvi o inimigo ainda mais distante, consegue ver ele se andar atrás dela numa certa distância (curta), e pode perseguir oculta, além de não poder sofrer metamorfose para outra fase, nem quando forçada por armas, é mais resistente ao efeito das armas.

**Arma:**

- [ ] **Disparar:** A arma ao ser acionada pelo jogador, deve disparar um projétil ou área de efeito que pode atingir o inimigo e ativas sua função “Entrar nas paredes”, e o manter inativo por um certo tempo além de o obrigar a voltar a forma humana se estiver na forma barata.

#### Mecânicas passivas:

**Armários, baús, gavetas etc (Interagível):**

- [ ] **Ser interagido:** O interagível deve poder sofrer uma interação do jogador sendo aberto por ele e revelando o item que há dentro, se houver, ou tornando visível a sala se for uma porta.

**Documentos, diários, fotos etc (Analisável):**

- [ ] **Ser analisado:** O analisável deve poder ser analisado pelo jogador, apresentando parte determinada da narrativa do jogo e dicas de puzzles ou mecânicas. Após ser analisado uma primeira vez na run fica salvo no Diário do investigador.

**Itens e armas (Coletável):**

- [ ] **Ser coletado:** O coletável deve poder ser coletado pelo jogador e ser carregado por ele.  
- [ ] **Disparar ação:** O coletável pode disparar uma ação quando o jogador usa ele em um resolvível.

**Puzzle e trancas (Resolvível):**

- [ ] **Ser resolvido:** O resolvível deve poder ser resolvido com o uso de um coletável ou uma interação do jogador para mudar algo no ambiente.

**Barulho:**

- [ ] **Ser feito:** O barulho deve poder ser produzido por coletáveis largados no chão e disparos de projéteis.  
- [ ] **Ser ouvido:** O barulho deve poder ser ouvido pelo inimigo e pelo jogador se estiver dentro de sua área de escuta.

**Projétil:**

- [ ] **Ser disparado:** O projétil deve poder ser disparado pela pistola.  
- [ ] **Atingir:** O projétil deve poder atingir qualquer coisa com colisão gerando um barulho. Se for o inimigo aplica-se às penalidades da arma.

**Área de efeito:**

- [ ] **Ser disparado:** A área de efeito deve poder ser gerada por um disparo do inseticida.  
- [ ] **Atingir inimigo:** A área de efeito deve afetar o inimigo somente em sua forma Barata.

**Parede:**

- [ ] **Transparecer:** Quando o jogador estiver em um cômodo a parede frontal dele deve ficar semi translúcida para permitir visibilidade do interior do cômodo.

**Fontes de luz:**

- [ ] **Emitir luz no ambiente:** Geram luzes dinâmicas no ambiente e consequentemente sombras. Recurso indisponível no preset baixo onde é só simulado.

### **Diretrizes de Design**

O objetivo desse jogo é ser uma primeira experiência de desenvolvimento simples e divertida, então deve-se evitar mecânicas complexas demais e manter o foco em concluir o jogo, podendo tornar as mecânicas complexas possibilidades de expansão.

### **Definições de Design de Jogo**

O foco do jogo é fugir de Gregor Samsa e desvendar puzzles pela casa Samsa. Para ganhar o jogador deve fugir da casa e ele perde se for pego por Samsa 5 vezes. A o trânsito entre níveis por meio da progressão do jogador no jogo o que dificulta o progresso deixando Gregor mais agressivo.

### **Fluxograma do Jogo (Game Flowchart)**

Jogador abre o jogo \-\> Jogador clica em jogar \-\> Jogo começa \-\> Cutscene explicando lore básica \-\> Jogador entra no hall da casa Samsa \-\> Jogador desvenda primeiro puzzle \-\> Jogador entra no quarto de Gregor Samsa e o desperta \-\> Jogador é perseguido por Samsa pela casa e desvenda puzzles buscando sair da casa \-\> Jogador ganha se sair da casa, tendo ou não descoberto o que aconteceu nela \-\> Jogador perde se for pego por Samsa 5 vezes.

*OBS: Séria ideal que fosse um diagrama desenhado mas não há tempo pra isso.*

## **INTERFACE DO UTILIZADOR (UI)**

Aqui é onde incluirás uma descrição do controlo do jogo por parte do utilizador. Pensa em quais botões num dispositivo seriam mais adequados para o jogo. Considera qual seria o pior esquema de controlos e pergunta a ti mesmo se a tua UI ainda assim seria jogável.

Pode ser adicionada uma representação visual onde relacionas os controlos físicos com as ações no jogo. Ao desenhar a UI, pode ser útil pesquisar informações sobre controlo de qualidade e design de interface do utilizador.

**Computador**

* Mover para cima: W, Seta para Cima  
* Mover para esquerda: A, Seta para Esquerda  
* Mover para baixo: S, Seta para Baixo  
* Mover para direita: D, Seta para Direita  
* Interagir / Pegar / Analisar: E, Botão Direito do Mouse (RMB)  
* Usar / Atirar: Espaço, Botão Esquerdo do Mouse (LMB)  
* Correr: Shift Esquerdo, Ctrl Esquerdo  
* Pausar: Esc, Tab

**Controle (Gamepad \- Padrão Xbox / PlayStation)**

* Mover (8 direções): Analógico Esquerdo (L-Stick) (Alternativa: D-Pad / Setas)  
* Interagir / Pegar / Analisar: Botão X (Xbox) / Quadrado (PlayStation) (Ou Botão A / X para confirmação)  
* Usar / Atirar: Gatilho Direito (RT / R2) (Alternativa: Botão B / Círculo)  
* Correr: Pressionar Analógico Esquerdo (L3) (Alternativa: Gatilho Esquerdo LT / L2)  
* Pausar: Botão Start / Options

**Celular (Touch / Mobile)**

* Mover (8 direções): Analógico Virtual Dinâmico / Flutuante (Esquerda da tela) com recurso de Auto-Run por zona de pressão na borda máxima.  
* Interagir / Pegar / Analisar: Botão de Ação dedicado grande (Direita da tela, próximo ao polegar) com ícone contextual (Mão/Olho).  
* Usar / Atirar: Botão de Disparo dedicado (Direita da tela, permitindo atirar na direção atual do movimento sem perder o controle do analógico).  
* Correr: Integrado ao Analógico Virtual (Empurrar o analógico até o limite externo ativa a corrida automaticamente, liberando a tela de botões poluídos).  
* Pausar: Ícone discreto de Pausa (Engrenagem / Duas Barras) fixado no canto superior direito da tela.

## **APRESENTAÇÃO**

### **Narrativa**

### **Visual**

### **Áudio**

## **CONTEÚDO**

### **Gavetas e Armários (Interagíveis)**

### **Documentos e Fotos (Analisáveis)**

### **Itens e Armas (Coletáveis)**

As possíveis armas são:

* **Pistola:** Não acerta a forma Barata, inativa o inimigo por 45s, o obriga a mudar de forma.  
  * **Inseticida:** Só tem efeito na forma Barata, inativa o inimigo por 1 min, não o obriga a mudar de forma.

### **Puzzles (Resolvíveis)**

## **EXPANSÃO**

* Sistema de conquistas  
* Modo Speedrun  
* Modo Itens aleatórios  
* Menu de opções

