*** Variables ***
###################### CASO 1
${URL}              https://www.digitalhouse.com/br
${NAVEGADOR}        Chrome
${FRAME}            xpath=/html/body/iframe[2]
${COOKIES}          xpath=/html/body/div/div/div[1]/div[1]/div[2]/div[1]/div[2]
${CONHECA}          xpath=//div[2]/div/a
${DATA_ANALYTICS}   xpath=//p[contains(.,'Data Analytics')]
${TEXTOP1}          css=.text-gray-50
${TEXTO1}           Transforme grandes quantidades de dados em insights
${TEXTO_P1}         css=.my-richtext-6 > p:nth-child(2)
${TEXTO_1}          manipulação e análise de dados
${INSCREVER1}       xpath=//*[@id="proximas-turmas"]/div/div[2]/div[2]/div/a
${VALOR1}           css=.text-4xl:nth-child(2)
${VALOR_TOTAL1}     R$ 9.824,00

*** Variables ***
###################### CASO 2
${DATA_SCIENCE}      xpath=//p[contains(.,'Data Science')]
${TEXTOP2}           css=.text-gray-50
${TEXTO2}            Machine learning, inteligência artificial e tudo mais sobre a ciência de dados
${TEXTO_P2}          css=.my-richtext-6 > p:nth-child(2)
${TEXTO_2}           processamento e análise de grandes quantidades de dados
${INSCREVER2}        xpath=//*[@id="proximas-turmas"]/div/div[2]/div[2]/div/a
${VALOR2}            css=.text-4xl:nth-child(2)
${VALOR_TOTAL2}      R$ 11.312,00

*** Variables ***
###################### CASO 3
${DEV_MOB_AND}       xpath=//p[contains(.,'Desenvolvimento Mobile Android')]
${TEXTOP3}           css=.text-gray-50
${TEXTO3}            Crie seu próprio app do zero em até 5 meses
${TEXTO_P3}          css=.my-richtext-6 > p:nth-child(2)
${TEXTO_3}           desenvolver aplicações móveis como um programador profissional
### TURMAS ESGOTADAS

*** Variables ***
###################### CASO 4
${DEV_MOB_IOS}       xpath=//p[contains(.,'Desenvolvimento Mobile IOS')]
${TEXTOP4}           css=.text-gray-50
${TEXTO4}            Aprenda Swift e crie seu próprio app em até 5 meses
${TEXTO_P4}          css=.my-richtext-6 > p:nth-child(2)
${TEXTO_4}           criar apps estáveis, funcionais e atrativos
${INSCREVER4}        xpath=//*[@id="proximas-turmas"]/div/div[2]/div[2]/div/a
${VALOR4}            css=.text-4xl:nth-child(2)
${VALOR_TOTAL4}      R$ 8.269,00

*** Variables ***
###################### CASO 5
${WEB_FULL_STACK}    xpath=//p[contains(.,'Desenvolvimento Web Full Stack')]
${TEXTOP5}           css=.text-gray-50
${TEXTO5}            Aprenda a criar sites e aplicativos web, do começo ao fim
${TEXTO_P5}          css=.my-richtext-6 > p:nth-child(2)
${TEXTO_5}           integração do front-end com o back-end
${INSCREVER5}        xpath=//*[@id="proximas-turmas"]/div/div[2]/div[2]/div/a
${VALOR5}            css=.text-4xl:nth-child(2)
${VALOR_TOTAL5}      R$ 9.824,00

*** Variables ***
###################### CASO 6
${CTD}               xpath=//p[contains(.,'Certified Tech Developer')]
${TEXTOP6}           css=#uJoXSc4pmpxQqCNPVe60oOnXzvTHiJXF b
${TEXTO6}            Crie novas formas de viver o mundo
${TEXTO_P6}          css=#G5xN09TkdNqcw0TGV0Rfl2m9rgh3s3nQ font
${TEXTO_6}           Venha desenvolver uma carreira que pode mudar o mundo
${INSCREVER6}        css=#wIc9FaFLQtAaqfERX7toZ8vOupowTGkN > .widget-overlay
${CAMPO_NOME}        xpath=//div[@id='lPXtmuHJq1V9sLI4vsRZyndibxo1AdsA']/input
${NOME}              Ector
${CAMPO_SOBRENOME}   css=#DyESSyoTrg8EZUGtiPbmZmuL5y03FlCN
${SOBRENOME}         Cunha
${CAMPO_EMAIL}       css=#Lbqhh6B7SmT1OnakIxZ0TBmT2o2IxVNq
${EMAIL}             ectorvccunha@outlook.com
${CAMPO_CELULAR}     css=#zVe3bzxdSNmVk5qFPuJgonal9LqQMlq8 
${CELULAR}           81998613646
${SELECT_ESTADO}     xpath=//select[@id='FhKAsNwtv8stLHRSHxLfxd7lkcUMkiM6']
${ESTADO}            Pernambuco
${SELECT}            xpath=//select[@id='oNRhffVuMHVvyC4GWZzrJrIGLDmweIxT']
${SOBRE}             Outro


*** Keywords ***
###################### CASO 1
Abrir o site da DH
  Open Browser                  ${URL}        ${NAVEGADOR}
  
  
Clicar em “Aceitar Cookies”
  Select frame                  ${FRAME}
  Wait and Click                ${COOKIES}
  unselect frame

Clicar em “Conheça nossos cursos”
  Click Element                 ${CONHECA}

Selecionar o curso “Data Analytics”
  Click Element                 ${DATA_ANALYTICS}

Verificar se o subtitulo do curso corresponde a “Transforme grandes quantidades de dados em insights.”
  Element should contain        ${TEXTOP1}                ${TEXTO1}

Verificar se a página contém o termo “manipulação e análise de dados”
  Element should contain        ${TEXTO_P1}              ${TEXTO_1}

Clicar em “Inscreva-se”
  Click Element                 ${INSCREVER1}

Validar se o valor do curso é “R$ 9.824,00”
  Element should contain        ${VALOR1}                ${VALOR_TOTAL1}


*** Keywords ***
###################### CASO 2
Selecionar o curso “Data Science”
  Click Element                 ${DATA_SCIENCE}
  

Verificar se o subtitulo do curso corresponde a “Machine learning, inteligência artificial e tudo mais sobre a ciência de dados.”
  Element should contain        ${TEXTOP2}                ${TEXTO2}

Verificar se a página contém o termo “processamento e análise de grandes quantidades de dados”
  Element should contain        ${TEXTO_P2}              ${TEXTO_2}

Clicar em “Inscreva-se em Data Science”
  Click Element                 ${INSCREVER2}

Validar se o valor do curso é “R$ 11.312,00”
  Element should contain        ${VALOR2}                ${VALOR_TOTAL2}


*** Keywords ***
###################### CASO 3
Selecionar o curso “Desenvolvimento Mobile Android”
  Click Element                 ${DEV_MOB_AND}

Verificar se o subtitulo do curso corresponde a “Crie seu próprio app do zero em até 5 meses”
  Element should contain        ${TEXTOP3}                ${TEXTO3}

Verificar se a página contém o termo “desenvolver aplicações móveis como um programador profissional”
  Element should contain        ${TEXTO_P3}              ${TEXTO_3}


*** Keywords ***
###################### CASO 4
Selecionar o curso “Desenvolvimento Mobile IOS”
  Click Element                 ${DEV_MOB_IOS}

Verificar se o subtitulo do curso corresponde a “Aprenda Swift e crie seu próprio app em até 5 meses”
  Element should contain        ${TEXTOP4}                ${TEXTO4}

Verificar se a página contém o termo “criar apps estáveis, funcionais e atrativos”
  Element should contain        ${TEXTO_P4}              ${TEXTO_4}

Clicar em “Inscreva-se em Desenvolvimento Mobile IOS”
  Click Element                 ${INSCREVER4}

Validar se o valor do curso é “R$ 8.269,00”
  Element should contain        ${VALOR4}                ${VALOR_TOTAL4}


*** Keywords ***
###################### CASO 5
Selecionar o curso “Desenvolvimento Web Full Stack”
  Click Element                 ${WEB_FULL_STACK}

Verificar se o subtitulo do curso corresponde a “Aprenda a criar sites e aplicativos web, do começo ao fim.”
  Element should contain        ${TEXTOP5}                ${TEXTO5}

Verificar se a página contém o termo “integração do front-end com o back-end”
  Element should contain        ${TEXTO_P5}              ${TEXTO_5}

Clicar em “Inscreva-se em Desenvolvimento Web Full Stack”
  Click Element                 ${INSCREVER5}

Validar se o valor do curso é “R$ 9.824,00”.
  Element should contain        ${VALOR5}                ${VALOR_TOTAL5}


*** Keywords ***
###################### CASO 6
Selecionar o curso “Certified Tech Developer”
  Click Element                 ${CTD}
  Maximize Browser Window

Verificar se o subtitulo do curso corresponde a “Crie novas formas de viver o mundo”
  Element should contain        ${TEXTOP6}                ${TEXTO6}

Verificar se a página contém o termo “Venha desenvolver uma carreira que pode mudar o mundo”
  Element should contain        ${TEXTO_P6}              ${TEXTO_6}

Clicar em “Inscreva-se no Certified Tech Developer”
  Click Element                 ${INSCREVER6}

Preencher os campos do formulário “Faça parte do futuro digital”
  Input Text                ${CAMPO_NOME}           ${NOME}
  Input Text                ${CAMPO_SOBRENOME}      ${SOBRENOME}
  Input Text                ${CAMPO_EMAIL}          ${EMAIL}
  Input Text                ${CAMPO_CELULAR}        ${CELULAR}
  Select From List By Value             ${SELECT_ESTADO}     ${ESTADO}  
  Select From List By Value             ${SELECT}               ${SOBRE}





Select By Value

   [Arguments]    ${locator}    ${value}
   Page Should Contain Element    ${locator}  10
   Select From List By Value      ${locator}  ${value}
   List Selection Should Be       ${locator}  ${value}

Wait and Click
  [Arguments]  ${ELEMENTO}
  Wait Until Element is Visible      ${ELEMENTO}
  Wait Until Element is Enabled      ${ELEMENTO}
  Scroll Element Into View           ${ELEMENTO}
  Click Element                      ${ELEMENTO}

Wait and Input Text
  [Arguments]  ${ELEMENTO}           ${TEXTO}
  Wait Until Element is Visible      ${ELEMENTO}
  Wait Until Element is Enabled      ${ELEMENTO}
  Scroll Element Into View           ${ELEMENTO}
  Input Text                         ${ELEMENTO}        ${TEXTO}  



