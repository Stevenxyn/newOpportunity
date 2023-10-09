# What is a database 
 Es un conjunto de datos estructurados que pertenecen a un mismo contexto y esto se utiliza para 
 organizar y administrar de forma electronica enormes y pequeñas cantidades de informacion

# What is a Table, field and register in a database

 - *Una tabla* Es un objeto de BDD que contiene todos sus datos en las tablas y estas tienen filas y columnas
 - *Un Campo* Es una columna de una tabla, un campo que contiene un tipo especifico de dato
 - *Un Registro* Es una fila de una tabla, que contiee todos los datos de un objeto especifico, como un cliente, producto o una transaccion

# What is a value NULL
 Esto representa un valor de una columna en vacio pero en un vacio a proposito ya que *NULL* es diferente a un valor en *0* o en un *espacio* como dato guardado en la tabla, en pocas palabras significa que no se le ha asignado ningun valor a la columna determinada.

# What is a Primary Key
 Las PK se utilizan para garantizar la iingridad de los datos de una tabla, al asignar un valor unico a cada fila, las PK evita que se inserten datos duplicados en la tabla por ejemplo el identificador de un usuario es diferente a todos los demas existentes o sea es unico.
 
 ### Requirements
 - *Unicidad:* Cada valor de la PK debe ser unico en toda la tabla
 - *NO nulos:* Los valores de la PK no pueden ser nulos
 
 ### Types of PK
 - *PK Simple:* Es una columna que contiene un valor unico para cada fila de una tabla
 - *PK Compuesta:* Es un conjunto de columnas que contienen valores unicos para cada fila de una tabla

# What is a FOREIGN KEY
 Es una columna o un conjunto de columnas que se utiliza para relacionar dos tablas entre si, la FK hace referencia a la PK de otra tabla, esto se usa para garantizar la integridad referencial de los datos y que tengan consistencia los datos de otras tablas

 ### Requirements
 - La FK debe ser del mismo tipo de dato que su campo relacionado
 - El valor del campo definido como FK puede ser NULL
 - Una tabla puede tener mas de una FK

# What is the IDENTITY property
 Un campo con propiedad identity activa, hara que su valor incremente automaticamente a medida que se inserten registros en la tabla, por consecuencia el tipo de dato de campo identity debe ser numerico

 ### Arguments
 - El argumento Seed define que valor comienza a incrementar si el valor es 1 comenzara a incrementar desde el 1, Si el valor es 5 empezara a incrementar desde el 5.
 - El argumento Increment sirve para sirve para que si se le asigna el valor 1 empiece a incrementar de 1 en 1, si se le da el 5 empezara a incrementar de 5 en 5 ejemplo: 1,5,10,15,20...

 ### Structure
 ```
 IDENTITY(Seed = 1, Increment = 2)
 [nombreCampo] [int] IDENTITY(1,2)
 ```

# Normalization of BDD
 La normalizacion de una BDD es un proceso de diseño que consiste en dividir los datos en tablas relacionadas de forma que minimice la redundancia de datos y facilite la integridad, esta normalizacion de rigue de una serie de reglas conocidas como formas normales y cada una tiene sus objetivos y reglas especificas

  *NF ó FN = forma normal*
 ### Rules
 - *1NF:* Se dice que una Tabla está en Primera Forma Normal si y sólo si todos sus Campos (Atributos) contienen valores atómicos. Esto quiere decir que cada Atributo de la Tabla deberá tener un único valor para una ocurrencia de la Entidad. No se permitirán grupos repetitivos.

 - *2NF:* Una Tabla está en Segunda Forma Normal si y sólo si está en 1FN y todos los Atributos no clave dependen por completo de la clave primaria.

 - *2NF:* Una Tabla está en Tercera Forma Normal si y sólo si está en 2FN y los atributos no clave son independientes entre sí. Esto quiere decir que los valores de los atributos dependen sólo de la clave primaria y no dependen de otro Atributo no clave. El valor del Atributo no debe depender del valor de otro Atributo no clave.

![Tabla paciente sin normalizar](/SQL/myproject/img/tablaPacienteSinNormalizar.png)

![Tabla paciente (1FN)](/SQL/myproject/img/tablaPaciente1FN.png)

![Tabla paciente (2FN y 3FN)](/SQL/myproject/img/tablaPaciente2FN&3FN.png)

![Tabla pais)](/SQL/myproject/img/tablaPais.png)

![Tabla medico](/SQL/myproject/img/tablaMedico.png)

![Tabla turnoPaciente](/SQL/myproject/img/tablaTurnoPaciente.png)

# Data Types
 


