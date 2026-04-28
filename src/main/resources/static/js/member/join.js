console.log("member join");

const username = document.getElementById("username");
const username_result = document.getElementById("username_result");
const password = document.getElementById("password");
const password_result = document.getElementById("password_result");
const passwordCheck = document.getElementById("passwordCheck");
const check_result = document.getElementById("check_result");

const personalCheck = document.getElementsByClassName("personalCheck");
const emptyPersonal = document.getElementById("emptyPersonal");

const birth = document.getElementById("birth");
const checkBirth = document.getElementById("checkBirth");
const btn1 = document.getElementById("btn1");

let idCheck = false;
let pwCheck = false;
let birthCheck = false;

username.addEventListener("blur", function(){
    if(username.value.length < 1){
        username_result.innerText = "아이디는 필수로 한글자 이상 입력해 주세요.";
    }
    else{
        username_result.innerText ="";
        idCheck = true;
    }

    console.log("start")
    fetch(`./idCheck?username=${username.value}`)
    .then(res => res.text())
    .then(res => {
        if(res.trim()==='1'){
            //---- 사후 처리
            console.log("중복 아님")
            username_result.innerText="사용 가능합니다.";
        }
        else{
            // --- 
            console.log("중복이다.")
            username_result.innerText="이미 사용중인 아이디입니다.";
        }
    })
    console.log("finish")
})


username.addEventListener("change", function(){
    if(username.value.length < 1){
        username_result.innerText = "아이디는 필수로 한글자 이상 입력해 주세요.";
    }
    else{
        username_result.innerText ="";
        idCheck = true;
    }
})

password.addEventListener("blur", function(){
    if(password.value.length == 0){
        password_result.innerText = "비밀번호를 입력해 주세요.";
    }
})


password.addEventListener("change", function(){
    if(password.value.length == 0){
        password_result.innerText = "비밀번호를 입력해 주세요.";
    }
    
    else if(password.value.length < 6){
        password_result.innerText = "비밀번호는 최소 6글자 이상입니다.";
    }
    else{
        password_result.innerText = "";
    }

})

passwordCheck.addEventListener("blur", function(){
    if(passwordCheck.value.length == 0){
        check_result.innerText = "비밀번호를 입력해주세요.";
        return;
    }
})


passwordCheck.addEventListener("change", function(){
    check_result.innerText = "";
    if(password.value != passwordCheck.value){
        console.log("비밀번호가 일치하지 않습니다.");
        check_result.innerText = "비밀번호가 일치하지 않습니다.";
        passwordCheck.value = "";
    }
    else{
        check_result.innerText = "일치합니다.";
        pwCheck = true;
    }

})

birth.addEventListener("change", function(){
    console.log("날짜가 변경되었습니다.");
    const inputBirth = new Date(this.value);
    const today = Date.now();
    
    console.log(inputBirth);
    console.log(today);

    if(inputBirth.getTime() > today){
        console.log("오류");
        checkBirth.innerText = "생년월일은 오늘보다 빨라야합니다.";
    }
    else{
        checkBirth.innerText = "";
        birthCheck = true;
    }

})

btn1.addEventListener("click", function(){
    let filledCheck = true;

    for(let p of personalCheck){
        if(p.value.length == 0){
            console.log("이름, 이메일, 전화번호 중 한 목록이 비어있습니다.");
            emptyPersonal.innerText = "이름, 이메일, 전화번호 중 한 목록이 비어있습니다.";
            filledCheck = false;
            break;
        }
    }
    
	if(idCheck && pwCheck && filledCheck && birthCheck){
    console.log("pass");
	}

    else{
        console.log("fail");
    }
})

