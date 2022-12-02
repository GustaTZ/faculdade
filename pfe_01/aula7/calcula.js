id_result=document.querySelector("#result");
id_n1=document.querySelector("#n1");
id_n2=document.querySelector("#n2");
id_op=document.querySelector("#op");
id_result.innerHTML=id_n1.value;

function{
    
}
function calc(n1,n2,op){
    if(op=="+"){
        return n1+n2;
    }
    else if(op=="-"){
        return n1-n2;
    }   
    else if(op=="*"){
        return n1*n2;
    } 
    else if(op=="/"){
        return n1/n2;
    } 
    else if(op=="%"){
        return n1%n2;
    } 
    else{
        return "Operador não conhecido: "+op;
    } 
    
}