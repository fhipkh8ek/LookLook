//var datas = ;
var kdiv = document.getElementsByClassName(`jkpt-tab-bar`)[0];
var kul = document.getElementById(`tab-bar`);
var lastSelA  = {};
var content = document.getElementsByClassName(`jkpt-tab-content`)[0];
for( var i = 0  ; i < 5 ; i ++ ){
   var kli= document.createElement(`li`);
   var ka = document.createElement(`a`);
   ka.setAttribute(`href`,`#t`+i);
 
   switch(i){
   	case 0:ka.appendChild(document.createTextNode(`教练简介`));break;
   	case 1:ka.appendChild(document.createTextNode(`版型费用`));break;
   	case 2:ka.appendChild(document.createTextNode(`教学环境`));break;
   	case 3:ka.appendChild(document.createTextNode(`学院评价`));break;
   	case 4:ka.appendChild(document.createTextNode(`报名咨询`));break;

            }
   ka.onclick =function(){

   	lastSelA.className=``;
     this.className = `selected`;
    // var idx = this.idx;
     //  kdiv.children[0].children[idx].onclick=function(){
      //	 window.location.hash = `#t${idx+1}`;
       
      
      lastSelA = this ;
   // ka.style.cssText=`border-top: 3px solid blue;`;
     }
   kli.appendChild(ka);
   kul.appendChild(kli);

 }
 kdiv.appendChild(kul);
 kdiv.children[0].children[0].children[0].className=`selected`;
 lastSelA = kdiv.children[0].children[0].children[0];

