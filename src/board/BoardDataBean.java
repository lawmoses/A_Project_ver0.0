package board;

import java.io.Serializable;

public class BoardDataBean implements Serializable{

	/*CREATE TABLE BOARD_A (
			  NUM       int PRIMARY KEY,		--> Number -> int로 수정
			  BOARDID   NUMBER(38),				--> VARCHAR(1) DEFAULT '1'	
			  WRITER    VARCHAR(10),
			  EMAIL     VARCHAR(20),
			  SUBJECT   VARCHAR(50),
			  PASSWORD  VARCHAR(12),
			  REG_DATE  DATE          NOT NULL,
			  READCOUNT INT DEFAULT 0,			--> Number -> int로 수정
			  REF       INT           NOT NULL,  --> Number -> int로 수정
			  RE_STEP   INT           NOT NULL,	 --> Number -> int로 수정
			  RE_LEVEL  INT           NOT NULL,  --> Number -> int로 수정
			  CONTENT   VARCHAR(3000) NOT NULL,
			  IP        VARCHAR(20)   NOT NULL,
			  FILENAME  VARCHAR(30),
			  FILESIZE  INT						 --> Number -> int로 수정
			);*/
	
	
	private int num; //Number -> int로 수정
	private String boardid;
	private String writer;
	private String email;
	
	
	
}
