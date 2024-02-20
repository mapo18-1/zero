package fisa.edu.zero.common;

import static fisa.edu.zero.common.StatusCode.SUCCESS;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor(access = AccessLevel.PRIVATE)
public enum SuccessCode {
	/*
	 * 등록/생성: CREATE, 조회: READ, 수정: UPDATE, 삭제/취소: DELETE
	 */
	// 회원
	JOIN(SUCCESS, "회원 가입 성공"), LOGIN(SUCCESS, "로그인 성공"), LOGOUT(SUCCESS, "로그아웃 성공");
	
	private final StatusCode statusCode;
	private final String message;

	public int getStatus() {
		return statusCode.getStatus();
	}
}
