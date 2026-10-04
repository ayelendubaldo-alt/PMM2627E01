Ayelén D'Ubaldo Rodas
PMM2627E01 - Calculadora Básica
1. Creación del contrato

Primero he creado un contrato inteligente llamado CalculadoraBasica utilizando Solidity.

He utilizado la versión ^0.8.20 de Solidity y he añadido la licencia MIT.

2. Creación de las variables de estado

Después he creado las dos variables de estado que pide el ejercicio:

ultimResultat: variable de tipo uint256 que almacena el resultado de la última operación.

historialOperacions: variable de tipo uint256 que cuenta el número de operaciones realizadas.

Las he declarado como public para poder consultar sus valores directamente.

3. Creación de la función sumar

A continuación he creado la función sumar(uint256 a, uint256 b).

Esta función recibe dos números, los suma y guarda el resultado en ultimResultat.

Después incremento historialOperacions en 1 y devuelvo el resultado de la suma.

4. Creación de la función restar

Después he creado la función restar(uint256 a, uint256 b).

En esta función he añadido una validación mediante require para comprobar que a sea mayor o igual que b.

Si a es menor que b, se muestra el mensaje:

No es permeten resultats negatius

Si la validación es correcta, se realiza la resta, se guarda el resultado en ultimResultat, se incrementa historialOperacions y se devuelve el resultado.

5. Creación de la función multiplicar

Después he creado la función multiplicar(uint256 a, uint256 b).

Esta función multiplica los dos números recibidos, guarda el resultado en ultimResultat, incrementa historialOperacions en 1 y devuelve el resultado.

6. Creación de las funciones de consulta

He creado la función obtenirUltimResultat() para poder consultar el último resultado almacenado.

También he creado obtenirHistorial() para consultar el número de operaciones realizadas.

Estas funciones son de tipo view porque solamente consultan información y no modifican el estado del contrato.

7. Creación de la función resetear

Finalmente he creado la función resetear().

Esta función establece ultimResultat y historialOperacions a 0, permitiendo reiniciar completamente la calculadora.

8. Resultado final

Una vez implementadas todas las funciones, el contrato permite realizar sumas, restas y multiplicaciones, guardar el último resultado, contar las operaciones realizadas y reiniciar los valores cuando sea necesario.

El archivo final de la práctica se llama:

PMM2627E01.sol
