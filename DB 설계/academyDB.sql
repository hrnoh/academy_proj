CREATE SCHEMA IF NOT EXISTS `academydb` DEFAULT CHARACTER SET utf8;
USE academydb;

-- 유저 테이블
CREATE TABLE IF NOT EXISTS user (
	uno INT NOT NULL AUTO_INCREMENT,			-- 학생식별 번호
	id VARCHAR(45) NOT NULL,					-- 아이디
    pwd VARCHAR(45) NOT NULL,					-- 비밀번호
    name VARCHAR(45) NOT NULL,					-- 이름
    grade INT,									-- 학년
    age INT NOT NULL,							-- 나이
    sex VARCHAR(5) NOT NULL,					-- 성별(남, 여)
    email VARCHAR(45),							-- 이메일(NULL 가능)
    address VARCHAR(45) NOT NULL,				-- 주소
    phone VARCHAR(45),							-- 전화번호(NULL 가능)
    mPhone VARCHAR(45) NOT NULL,				-- 휴대폰 번호
    status VARCHAR(5),							-- 학적 상태(퇴원, 휴원, 수강)
    regDate TIMESTAMP NOT NULL DEFAULT now(),	-- 가입 날짜
    role VARCHAR(10) NOT NULL,					-- 역할(학생, 학부모, 강사, 관리자)
    relation VARCHAR(10),						-- 관계(부, 모)
    cno INT,									-- 후원학생 번호
    PRIMARY KEY(uno),
    CONSTRAINT fk_user_cno FOREIGN KEY (cno) REFERENCES user (uno) ON DELETE CASCADE
);

-- 관리자 계정
INSERT INTO user(id, pwd, name, age, sex, address, mPhone, role)
VALUES ('admin', 'admin', 'admin', 23, '남', 'testAddress', '010-0000-0000', 'admin');
-- Test 계정
INSERT INTO user(id, pwd, name, age, sex, address, mPhone, role)
VALUES ('test', 'test', 'test', 30, '남', 'test', '010-0000-0000', 'teacher');
INSERT INTO user(id, pwd, name, age, sex, address, mPhone, role)
VALUES ('test', 'test', 'test', 30, '남', 'test', '010-0000-0000', 'student');
INSERT INTO user(id, pwd, name, age, sex, address, mPhone, role)
VALUES ('test', 'test', 'test', 30, '남', 'test', '010-0000-0000', 'parents');

-- 강의 테이블
CREATE TABLE IF NOT EXISTS lecture (
	lno INT NOT NULL AUTO_INCREMENT,		-- 수업 번호
    lname VARCHAR(45) NOT NULL,				-- 수업명
    day VARCHAR(10) NOT NULL,				-- 요일
    startTime VARCHAR(45) NOT NULL,			-- 시작 시간
    endTime VARCHAR(45) NOT NULL,			-- 끝 시간
    personnel INT NOT NULL,					-- 정원
    room VARCHAR(45) NOT NULL,				-- 강의실
    target INT NOT NULL,					-- 대상 학년
    uno INT NOT NULL,						-- 강사 번호
    PRIMARY KEY(lno),
    CONSTRAINT fk_lecture_uno FOREIGN KEY (uno) REFERENCES user (uno) ON DELETE CASCADE
);

INSERT INTO lecture(lname, day, startTime, endTime, personnel, room, target, uno)
VALUES ('testLecture', '목, 금', '9:30', '22:00', 5, 'G105', 4, 2);

-- 알림장
CREATE TABLE IF NOT EXISTS notice (
	nno INT NOT NULL AUTO_INCREMENT,			-- 알림 번호
    title VARCHAR(45) NOT NULL,					-- 글 제목
    content TEXT NOT NULL,						-- 글 내용
    regDate TIMESTAMP NOT NULL DEFAULT now(),	-- 등록 날짜
    modDate TIMESTAMP NOT NULL DEFAULT now(),	-- 수정 날짜
    viewCnt INT NOT NULL DEFAULT 0,				-- 조회 수
    uno INT NOT NULL,							-- 작성자
    lno INT NOT NULL,							-- 강의 번호
    PRIMARY KEY(nno),
    CONSTRAINT fk_notice_uno FOREIGN KEY (uno) REFERENCES user (uno) ON DELETE CASCADE,
    CONSTRAINT fk_notice_lno FOREIGN KEY (lno) REFERENCES lecture (lno) ON DELETE CASCADE
);

INSERT INTO notice (title, content, uno, lno)
VALUES ('Test 상담', '상담내용', 2, 1);

-- 공지사항
CREATE TABLE IF NOT EXISTS board (
	bno INT NOT NULL AUTO_INCREMENT,			-- 공지사항 번호
    title VARCHAR(45) NOT NULL,					-- 글 제목
    content TEXT NOT NULL,						-- 글 내용
    regDate TIMESTAMP NOT NULL DEFAULT now(),	-- 등록 날짜
    modDate TIMESTAMP NOT NULL DEFAULT now(),	-- 수정 날짜
    viewCnt INT NOT NULL DEFAULT 0,				-- 조회 수
    uno INT NOT NULL,							-- 작성자
    PRIMARY KEY(bno),
    CONSTRAINT fk_board_uno FOREIGN KEY (uno) REFERENCES user (uno) ON DELETE CASCADE
);

INSERT INTO board (title, content, uno)
VALUES ('lectureNotices', 'lecture is ended', 1);

-- 일정
CREATE TABLE IF NOT EXISTS diary (
	dno INT NOT NULL AUTO_INCREMENT,			-- 일정 번호
    content TEXT NOT NULL,						-- 일정 내용
    year VARCHAR(5) NOT NULL,					-- 시작 년
    month VARCHAR(5) NOT NULL,					-- 시작 월
    day VARCHAR(5) NOT NULL,					-- 시작 일
    uno INT NOT NULL,							-- 유저 번호
    PRIMARY KEY(dno),
	CONSTRAINT fk_diary_uno FOREIGN KEY (uno) REFERENCES user (uno) ON DELETE CASCADE
);

INSERT INTO diary(content, year, month, day, uno)
VALUES ('정보처리개론 강의', '2017', '10', '10', 2);

-- 상담
CREATE TABLE IF NOT EXISTS consulting (
	counselor INT NOT NULL,								-- 상담자 번호
    client INT NOT NULL,								-- 고객 번호
    content TEXT NOT NULL,								-- 상담 내용
    consultingDate TIMESTAMP NOT NULL DEFAULT now(),	-- 상담 날짜
    CONSTRAINT fk_consulting_counselor FOREIGN KEY (counselor) REFERENCES user (uno) ON DELETE CASCADE,
    CONSTRAINT fk_consulting_client FOREIGN KEY (client) REFERENCES user (uno) ON DELETE CASCADE
);

INSERT INTO consulting(counselor, client, content)
VALUES (2, 3, '연애 상담');

-- 수강 테이블
CREATE TABLE IF NOT EXISTS takeCourse (
	uno INT NOT NULL,					-- 학생 번호
    lno INT NOT NULL,					-- 강의 번호
    grade DOUBLE,						-- 성적
    CONSTRAINT fk_takeCourse_uno FOREIGN KEY (uno) REFERENCES user (uno) ON DELETE CASCADE,
    CONSTRAINT fk_takeCourse_lno FOREIGN KEY (lno) REFERENCES lecture (lno) ON DELETE CASCADE
);

INSERT INTO takeCourse (uno, lno) VALUES (3, 1);

-- 출석
CREATE TABLE IF NOT EXISTS attendance (
    uno INT NOT NULL,					-- 학생 식별 번호
    lno INT NOT NULL,					-- 수업 식별 번호
    year VARCHAR(5) NOT NULL,			-- 년
    month VARCHAR(5) NOT NULL,			-- 월
    day VARCHAR(5) NOT NULL,			-- 일
    type VARCHAR(5) NOT NULL,			-- 출석, 지각, 결석 3가지 중 1개
    CONSTRAINT fk_attendance_uno FOREIGN KEY (uno) REFERENCES user (uno) ON DELETE CASCADE,
    CONSTRAINT fk_attendance_lno FOREIGN KEY (lno) REFERENCES lecture (lno) ON DELETE CASCADE
);

INSERT INTO attendance(uno, lno, type, year, month, day)
VALUES (3, 1, '출석', '2017', '10', '07');