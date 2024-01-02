<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

	<details>
		<summary>
			SQL
		
		</summary>
		<fieldset>
			<pre>
			SELECT * FROM member;

			SELECT idx, title, writer, writedate FROM board ORDER BY idx DESC;



			CREATE TABLE reply (
			    idx         number          generated as identity primary key,
			    board_idx  number          NOT NULL, -- 원본 게시글 번호, 외래키 걸어주기
			    writer      VARCHAR2(100)   NOT NULL,
			    content     VARCHAR2(2000)  NOT NULL,
			    writeDate   DATE            DEFAULT sysdate,
			    
			    -- board에 걸어주기
			    CONSTRAINT reply_board_fk
			    FOREIGN KEY(board_idx)
			    REFERENCES board(idx),
			    
			    -- member에 걸어주기   
			    CONSTRAINT reply_member_fk
			    FOREIGN KEY(writer)
			    REFERENCES member(userid)
			    
			);
			
			
			</pre>
		</fieldset>
	</details>

</body>
</html>