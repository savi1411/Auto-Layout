# Auto Layout

Projeto base do curso de Auto Layout da Alura

## Versão

1.0

## Estrutura do Projeto

O aplicativo é dividido nas storyboards:
1. Launchscreen.storyboard
2. Main.storyboard
3. O projeto foi construído para rodar no dispositivo iPhone, em modo Portrait

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
Esta tela é uma *Table View Controller*, que mostra em forma de tabela uma lista fixa de cursos.
Os elementos da célula (*Prototype Cell*) são posicionados através de regras de Auto Layout (*Constraints*).
Para o camo de descrição do curso, é utilizado o recurso de *Auto Shrink*, que é uma técnica para que um campo texto se adpate a qualquer tamanho de tela.

## Boas Práticas

* Boas Práticas de desenvolvimento aplicadas no projeto
Apesar do projeto estar focado em Auto Layout, são abordados vários elementos de boas práticas de desenvolvimento Mobile, assim como recomendações da Apple:
* As informaçÕes de Curso são criadas através de um modelo de dados, conforme conceito de divisão de responsabilidades - classe **Curso.swift**
* A tabela foi construída segundo recomendação da Apple - *Table View Controller* com *Prototype Cell*, utilizando classe *Table View Cell*para controle dos elementos da célula

## Requerimentos do Projeto

### Build

Xcode 8.0 ou superior; iOS 9.3 SDK ou superior

### Runtime

Copyright (C) 2017 Alura Treinamentos LTDA
