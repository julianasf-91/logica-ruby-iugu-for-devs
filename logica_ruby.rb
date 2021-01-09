puts('Hello World')                                         #imprime algo na tela

nome_completo = 'Juliana Ferreira'                          #variável string
idade = 29                                                  #variável numérica

puts(nome_completo.length())                                #número de caracteres
puts(nome_completo.downcase())                              #letras minúsculas
puts(nome_completo.upcase())                                #letras maiúsculas
puts('Meu nome tem' + nome_completo.length.to_s() + letras) #converter número para string
puts("Me chamo #{nome_completo}")                           #interpolação

puts('Qual o seu nome?')
nome = gets()                                               #recebe um texto até digitar ENTER
nome = gets().chomp()                                       #recebe um texto sem contar ENTER como caractere

puts('Digite um número:')
numero = gets().to_i()                                      #converte texto em número, usar to_i() ou to_f()
numero % 2                                                  #resto da divisão        
numero.positive?()                                          #testa para positivo, se for, retorna TRUE 
numero.negative?()                                          #testa para negativo, se for, retorna TRUE
numero.odd?()                                               #testa para ímpar, se for, retorna TRUE
numero.even?()                                              #testa para par, se for, retorna TRUE  

numero == 1                                                 #compara se são iguais, outra opção, < menor e maior >
numero != 1                                                 #compara se são diferentes                    
numero == 1 && numero != 1                                  #operador E
numero == 1 || numero != 1                                  #operador OU

alunos = ['André', 'Sophia', 'Laura']                       #array, sempre declarar no plural
notas = [5, 6, 8]                                           #pode atribuir qualquer tipo de valor dentro do ARRAY
alunos << 'Juliana'                                         #adiciona valor na última posição do ARRAY
alunos.pop()                                                #reomve o último valor do ARRAY
alunos[1] = 'Juliana'                                       #muda o valor da posição '0'
alunos.first()                                              #retorna o valor da primeira posição do ARRAY
alunos.last()                                               #retorna o valor da última posição do ARRAY
alunos.length()                                             #retorna a quantidade de elementos do ARRAY


notas[1] = 9                                                #exercício
notas << 7.5
alunos << 'Paulo'
puts("#{alunos[0]} tirou nota #{notas[0]}")                
puts("#{alunos[1]} tirou nota #{notas[1]}")
puts("#{alunos[2]} tirou nota #{notas[2]}")
puts("#{alunos[3]} tirou nota #{notas[3]}")
puts("Essa turma possui #{alunos.length.to_s()} participantes")


:caneca                                                     #symbol, semelhantes às strings, usado para identificadores
:caneca.object_id()                                         #número de identificação de cada objeto


alberto = {nome:'Alberto', nota: 7, disciplina: 'Artes'}    #exercício / hash
ingrid = {nome: 'Ingrid', nota: 10, disciplina: 'Biologia'}
karen = {nome: 'Karen', nota: 9, disciplina: 'Filosofia'}
alunos = [alberto, ingrid]
puts("#{alunos[0][:nome]} tirou nota #{alunos[0][:nota]} em #{alunos[0][:disciplina]}}")
puts("#{alunos[1][:nome]} tirou nota #{alunos[1][:nota]} em #{alunos[1][:disciplina]}}")


if numero == 25                                             #condição IF
    puts('Os números são iguais')                           #será executado se a condição for verdadeira
else                                                        #condição ELSE
    puts('Os números são diferentes')                       #será executado se a condição fpr falsa
end                                                         #fim do código


if alunos[0][:nota] >= 5                                     #exercício
    puts("#{alunos[0][:nome]} foi aprovado(a) em #{alunos[0][:disciplina]}")
else
    puts("#{alunos[0][:nome]} foi reprovado(a) em #{alunos[0]:disciplina]}")
end


nota = 5                                                    #switch/case
case nota
when 0
    puts('Você tirou zero! Precisa melhorar...')
when 1..4
    puts('Reprovado...precisa se esforçar mais...')
when 5
    puts('Passou raspando!')
when 6..9
    puts('Parabéns, você foi reprovado.')
when 10
    puts('Tirou 10! Você deve ser o melhor aluno que já tive!')
else
    puts('Nota inválida! Valor maior que a nota máxima ou menor que zero')
end


tecla_pressionada = 's'                                     #exercício
turma = []
while tecla_pressionada == 's' do
    puts('Digite o nome do aluno: ')
    nome_aluno = gets().chomp()
    turma << nome_aluno
    puts('Digite a nota do aluno: ')
    nota_aluno = gets().chomp()
    turma << nota_aluno
    puts('Digite a disciplina: ')
    disc_aluno = gets().chomp()
    turma << disc_aluno

    puts('Deseja inserir um novo aluno?')
    tecla_pressionada = gets().chomp()
end


alunos.each do |um_aluno|                                   #método each, faz o mesmo que o for,
    puts(um_aluno[:nome])                                   #cria a variável um_aluno queirá percorrer o ARRAY alunos
end

def meu_nome()                                              #declaração de um método
    puts('Juliana de Sousa Ferreira')                       #retorno, sempre a última operação
end                                                         #fim do método


def imprime_alunos(nome, nota, disciplina) 
    puts("#{nome} tirou nota #{nota} em #{disciplina}")
end

alunos.each() do |aluno|
    if aluno[:nota] >= 5
        puts('Voce foi APROVADO!')
    else
        puts('Você foi REPROVADO!') 
    end
    imprime_alunos(aluno[:nome], aluno[:nota], aluno[:disciplina]) 
end 

