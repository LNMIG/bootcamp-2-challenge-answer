## Solución al problema

1. Al ser usado el equipo (computadora) por varias personas una primera medida es acceder a su perfil con una password.
2. Como la password puede ser vulnerada y por tanto ingresar al equipo y sus archivos, la carpeta o directorio donde se aloja el documento confidencial deber{ia estar protegida con otra password.
3. Como esa password también podría ser vulnerada:
    - el usuario debería poder identificarse como admin o usuario,
    - proveer credencial (password) correspondiente a su identificación,
    - Corroborar que el tipo de usuario y su credencial se correspondan
    - En este punto podría existir un tipo de script oculto (como un archivo de sistema) que según la respuesta del paso anterior modifique los atributos del archivo involucrado para que pueda ser leído, escrito o ejecutado sólo por el Usuario.
4. Al momento de terminar la sesión, el mismo script u otro debería cambiar los atributos del archivo para que nadie pueda leer, escribir o ejecutar el archivo hasta que una nueva sesión sea lanzada.