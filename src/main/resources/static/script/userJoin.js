document.addEventListener('DOMContentLoaded', function() {
    const checkEmailBtn = document.getElementById('checkEmailBtn');
    const emailCheckResult = document.getElementById('emailCheckResult');
    let isEmailChecked = false; // 이메일 중복 체크 여부를 추적
    let isEmailAvailable = false; // 이메일이 사용 가능한지 여부를 추적

    // 이메일 형식 체크 함수
    function validateEmailFormat(email) {
        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; // 이메일 형식 검사
        return emailPattern.test(email);
    }

    // 이메일 입력 필드에 입력이 변경되면 중복 체크를 다시 해야 함을 표시
    document.getElementById('useremail').addEventListener('input', function() {
        isEmailChecked = false; // 이메일이 변경되면 중복 체크 상태를 초기화
        emailCheckResult.textContent = ''; // 이전 결과 메시지를 초기화
    });

    // 중복 체크 버튼 클릭
    checkEmailBtn.addEventListener('click', function() {
        const userEmail = document.getElementById('useremail').value;

        if (userEmail === '') {
            emailCheckResult.textContent = '이메일을 입력해주세요.';
            emailCheckResult.style.color = 'red';
            return;
        }

        if (!validateEmailFormat(userEmail)) {
            emailCheckResult.textContent = '이메일 형식이 올바르지 않습니다.';
            emailCheckResult.style.color = 'red';
            return;
        }

        fetch('/member/checkId', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ userEmail: userEmail })
        })
            .then(response => {
                if (!response.ok) {
                    throw new Error('서버 응답이 올바르지 않습니다.');
                }
                return response.json();
            })
            .then(data => {
                isEmailChecked = true; // 이메일 중복 체크가 완료되었음을 표시
                isEmailAvailable = data.message.includes("true");

                if (isEmailAvailable) {
                    emailCheckResult.textContent = '사용 가능한 이메일입니다.';
                    emailCheckResult.style.color = 'green';
                } else {
                    emailCheckResult.textContent = '이미 사용 중인 이메일입니다.';
                    emailCheckResult.style.color = 'red';
                }
            })
            .catch(error => {
                console.error('에러:', error);
                emailCheckResult.textContent = '이메일 확인 중 오류가 발생했습니다.';
                emailCheckResult.style.color = 'red';
            });
    });

    // 회원가입 폼 제출 시
    document.getElementById('userJoin').addEventListener('submit', function(e) {
        e.preventDefault(); // 폼의 기본 제출 동작을 막습니다.

        // 이메일 중복 체크가 이루어졌는지 확인
        if (!isEmailChecked) {
            emailCheckResult.textContent = '이메일 중복 체크를 해주세요.';
            emailCheckResult.style.color = 'red';
            return;
        }

        // 사용 중인 이메일이면 경고 표시
        if (!isEmailAvailable) {
            alert('이미 사용 중인 이메일입니다. 이메일을 수정해 주세요.');
            return;
        }

        // 폼 필드의 값을 가져옵니다.
        const userEmail = document.getElementById('useremail').value;
        const userPassword = document.getElementById('userpassword').value;
        const userName = document.getElementById('username').value;
        const userSchool = document.getElementById('userschool').value;
        const userDepartment = document.getElementById('userdepartment').value;
        const userGrade = document.getElementById('usergrade').value;
        const userPhonenumber = document.getElementById('userphonenumber').value;

        // 서버에 보낼 데이터 객체를 만듭니다.
        const formData = {
            useremail: userEmail,
            userpassword: userPassword,
            username: userName,
            userschool: userSchool,
            userdepartment: userDepartment,
            usergrade: userGrade,
            userphonenumber: userPhonenumber
        };
        console.log(formData);  // 폼 제출 전에 데이터를 출력하여 확인
        // Fetch API를 사용해 데이터를 서버에 전송합니다.
        fetch('/member/joinProc', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(formData)
        })
            .then(response => {
                if (!response.ok) {
                    throw new Error('서버 응답이 올바르지 않습니다.');
                }
                return response.text(); // 서버 응답을 텍스트로 처리
            })
            .then(data => {
                console.log('서버 응답:', data);
                if (data.includes("회원가입이 성공적으로 완료되었습니다.")) {
                    const modal = document.createElement('div');
                    modal.style.cssText = `
                    position: fixed;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    background-color: rgba(0,0,0,0.5);
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    z-index: 1000;
                `;
                    const modalContent = document.createElement('div');
                    modalContent.style.cssText = `
                    background-color: white;
                    padding: 20px;
                    border-radius: 5px;
                    box-shadow: 0 2px 10px rgba(0,0,0,0.1);
                `;
                    modalContent.innerHTML = `
                    <h3>알림</h3>
                    <p>회원가입에 성공하셨습니다!</p>
                    <button id="modalConfirmButton">확인</button>
                `;
                    modal.appendChild(modalContent);
                    document.body.appendChild(modal);

                    document.getElementById('modalConfirmButton').addEventListener('click', function() {
                        modal.remove();
                        window.location.href = '/member/loginForm';
                    });
                } else {
                    console.error('회원가입 실패:', data);
                    alert('회원가입에 실패했습니다. 다시 시도해주세요.');
                }
            })
            .catch(error => {
                console.error('에러:', error);
                alert('회원가입 중 오류가 발생했습니다. 나중에 다시 시도해주세요.');
            });
    });
});
