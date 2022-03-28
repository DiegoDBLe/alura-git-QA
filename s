[33mcommit 3c3c1caf52fd8c5eb12af4f26ff9cf8b287a0b6c[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m, [m[1;31mlocal/master[m[33m)[m
Author: Diego Dantas <deigo_batista@hotmail.com>
Date:   Mon Mar 28 09:36:47 2022 -0300

    Alterando mensagem de não acertou.

[1mdiff --git a/adivinha_mais_mais.html b/adivinha_mais_mais.html[m
[1mindex 8d9ab64..9cca1fe 100644[m
[1m--- a/adivinha_mais_mais.html[m
[1m+++ b/adivinha_mais_mais.html[m
[36m@@ -69,7 +69,7 @@[m
 		}[m
 		if(achou == false){[m
 [m
[31m-			alert('VOCÊ ERROU...!');[m
[32m+[m			[32malert('INFELIZMENTE VOCÊ ERROU!!	...TENTE NOVAMENTE!');[m
 		}[m
 [m
 		input.value = '';[m

[33mcommit 30afe1a6aa2497a93a1ced2be84409f817737ae2[m
Author: Diego Dantas <deigo_batista@hotmail.com>
Date:   Fri Mar 25 19:47:23 2022 -0300

    adicionando o gitignore

[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..aa61ca1[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32mide-config[m
\ No newline at end of file[m

[33mcommit 49125be5746d16fa0c235272bf0e04a617c8474a[m
Author: Diego Dantas <deigo_batista@hotmail.com>
Date:   Fri Mar 25 19:26:56 2022 -0300

    Alteração na mensagem de acerto e na mensagem de errou.

[1mdiff --git a/adivinha_mais_mais.html b/adivinha_mais_mais.html[m
[1mindex 7081d49..8d9ab64 100644[m
[1m--- a/adivinha_mais_mais.html[m
[1m+++ b/adivinha_mais_mais.html[m
[36m@@ -62,14 +62,14 @@[m
 [m
 			if(input.value == segredos[posicao]){[m
 [m
[31m-				alert('PARABÉNS!! VOCÊ ACERTOU O NÚMERO.');[m
[32m+[m				[32malert('PARABÉNS!!! VOCÊ ACERTOU O NÚMERO.');[m
 				achou = true;[m
 				break;[m
 			}[m
 		}[m
 		if(achou == false){[m
 [m
[31m-			alert('VOCÊ ERROU!');[m
[32m+[m			[32malert('VOCÊ ERROU...!');[m
 		}[m
 [m
 		input.value = '';[m

[33mcommit 7ba7c240f3ab4b292336d3074543f51f0bf18ce3[m
Author: Diego Dantas <deigo_batista@hotmail.com>
Date:   Fri Mar 25 19:22:18 2022 -0300

    criando arquivo advinha.html

[1mdiff --git a/adivinha_mais_mais.html b/adivinha_mais_mais.html[m
[1mnew file mode 100644[m
[1mindex 0000000..7081d49[m
[1m--- /dev/null[m
[1m+++ b/adivinha_mais_mais.html[m
[36m@@ -0,0 +1,82 @@[m
[32m+[m[32m<meta charset="utf-8">[m
[32m+[m
[32m+[m[32m<input>[m
[32m+[m
[32m+[m[32m<button>Clique Aqu!</button>[m
[32m+[m
[32m+[m[32m<script>[m
[32m+[m
[32m+[m	[32mfunction sorteia() {[m
[32m+[m		[32m// Função para sortear números aleatórios de 0 até 10.[m
[32m+[m		[32mreturn Math.round(Math.random() * 10);[m
[32m+[m[41m	[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32mfunction sorteiaNumeros(quantidade){[m
[32m+[m
[32m+[m		[32m// Função que recebe parametro(quantidade) de números que quero sortear aleatoriamente e adiciona na lista vazia e retorna uma lista com a quantidade de numeros aleatorios que foi passado no parametro.[m
[32m+[m[41m		[m
[32m+[m		[32mvar segredos = []; // Lista vazia.[m
[32m+[m
[32m+[m		[32mvar numero = 1; // contador[m
[32m+[m
[32m+[m		[32mwhile(numero <= quantidade){ // Loop que verifica enquanto o contador for menor que a quantidade passado no parametro.[m
[32m+[m
[32m+[m			[32mvar numeroAleatorio = sorteia(); // variavel que recebe a função para sortear um numero aleatorio.[m
[32m+[m
[32m+[m			[32mif( numeroAleatorio !== 0){ // Condição para verificar se o numero sorteado for diferente de 0 ele faz o bloco. Ou seja para nao ter numero 0 na lista de numeros sorteados.[m
[32m+[m
[32m+[m				[32mvar achou = false; // variavel boleana que recebe valor falso.[m
[32m+[m
[32m+[m				[32mfor(var posicao = 0; posicao < segredos.length; posicao++){ // Varredura na lista de numeros aleatorios.[m
[32m+[m
[32m+[m					[32mif(segredos[posicao] == numeroAleatorio){ // Condiçao que verifica se o numero que esta na lista de numeros aleatorios é igual ao numero sorteado aleatoriamente, se for a variavel boleana muda o valor para true e a varredura na lista é parada. Essa condição garante que não tera dois numeros iguais na lista de numeros sorteados.[m
[32m+[m						[32machou = true;[m
[32m+[m						[32mbreak;[m
[32m+[m					[32m}[m
[32m+[m				[32m}[m
[32m+[m
[32m+[m				[32mif(achou == false){ // Se nao tiver achado o numero igual na lista ele adiciona o numero sorteado na lista e passar para proxima verificação ate atingir a quantidade de numeros passada no parametro.[m
[32m+[m					[32msegredos.push(numeroAleatorio);[m
[32m+[m					[32mnumero++;[m
[32m+[m				[32m}[m
[32m+[m			[32m}[m
[32m+[m
[32m+[m		[32m}[m
[32m+[m
[32m+[m		[32mreturn segredos;[m
[32m+[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32mvar segredos = sorteiaNumeros(5);[m
[32m+[m	[32m//console.log(segredos); Para verificar no console da pagina.[m
[32m+[m
[32m+[m	[32mvar input = document.querySelector('input');[m
[32m+[m	[32minput.focus();[m
[32m+[m
[32m+[m	[32mfunction verifica(argument) {[m
[32m+[m[41m		[m
[32m+[m		[32machou = false;[m
[32m+[m
[32m+[m		[32mfor(var posicao = 0; posicao < segredos.length; posicao++){[m
[32m+[m
[32m+[m			[32mif(input.value == segredos[posicao]){[m
[32m+[m
[32m+[m				[32malert('PARABÉNS!! VOCÊ ACERTOU O NÚMERO.');[m
[32m+[m				[32machou = true;[m
[32m+[m				[32mbreak;[m
[32m+[m			[32m}[m
[32m+[m		[32m}[m
[32m+[m		[32mif(achou == false){[m
[32m+[m
[32m+[m			[32malert('VOCÊ ERROU!');[m
[32m+[m		[32m}[m
[32m+[m
[32m+[m		[32minput.value = '';[m
[32m+[m		[32minput.focus();[m[41m [m
[32m+[m	[32m}[m
[32m+[m
[32m+[m	[32mvar button = document.querySelector('button');[m
[32m+[m	[32mbutton.onclick = verifica;[m
[32m+[m
[32m+[m[32m</script>[m
\ No newline at end of file[m
