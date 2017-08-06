# Auto Layout

Projeto base do curso de Auto Layout da Alura

## Versão

1.0

## Estrutura do Projeto

O aplicativo é dividido nas storyboards:
1. Launchscreen.storyboard
2. Main.storyboard

### Lauchscreen.storyboard

- Nesta view é abordada a técnica anterior ao Auto Layout, mas que ainda se aplica em layouts mais simples - O recurso chama-se **Autoresizing Masks**

### Main.storyboard

* Tela de Logon
Na tela de Logon são abordados todos os temas de Auto Layout:
* StackViews
* Intrinsic Content Size
* StackViews aninhadas
* Constraints - Introdução, Anatomia, Criação e Edição, utilizando o Interface Builder

* Tela de Meus Cursos
Esta tela é subdivida em três partes, que podem ser acessadas através de um Tabbar. O objetivo é mostrar ao aluno todas as técnicas disponíveis para a criação de constraints programaticamente.
Essas técnicas são as seguintes:
1. **Layout Anchor** - É a técnica mais clara e fluente para a definição de constraints, sendo a mais recomendada. Utiliza métodos da classe NSLayoutAnchor.
2. **NSLayutContraint** - Ténica intermediária onde a sintaxe tem uma estrutura bastante rígida. Dessa forma, são necessárias muitas linhas de código, o que pode prejudicar o entendimento.
3. **VFL - Visual Format Language** - Técnica mais rudimentar, que utiliza a linguagem de formatação VFL.  A ideia é tentar reproduzir através de strings a construção gráfica de constraints. É uma técnica bastante subjetiva, mas a vantagem sobre as demais é que o desenvolvedor só consegur criar constraints válidas.

## Requerimentos do Projeto

### Build

Xcode 8.0 ou superior; iOS 9.3 SDK ou superior

### Runtime

Copyright (C) 2017 Alura Treinamentos LTDA
