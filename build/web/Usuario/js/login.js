function loguear(){
    let usuario=document.getElementById("usuario").value;
    let password=document.getElementById("clave").value;

    //CRECENDIALES USUARIO
    if(usuario=="999999999" && password=="123"){
        window.location="./usu_index.html";
        alert("Gracias por Loguearte");
    }
    else{
        alert("Datos incorrectos");
    }

}
