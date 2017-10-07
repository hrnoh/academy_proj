CREATE SCHEMA IF NOT EXISTS `academydb` DEFAULT CHARACTER SET utf8;
USE academydb;

-- 학생 테이블
CREATE TABLE IF NOT EXISTS student (
	sno INT NOT NULL AUTO_INCREMENT,			-- 학생식별 번호
	id VARCHAR(45) NOT NULL,					-- 아이디
    pwd VARCHAR(45) NOT NULL,					-- 비밀번호
    name VARCHAR(45) NOT NULL,					-- 이름
    grade INT NOT NULL,							-- 학년
    age INT NOT NULL,							-- 나이
    sex VARCHAR(5) NOT NULL,					-- 성별(남, 여)
    email VARCHAR(45),							-- 이메일(NULL 가능)
    address VARCHAR(45) NOT NULL,				-- 주소
    phone VARCHAR(45),							-- 전화번호(NULL 가능)
    mPhone VARCHAR(45) NOT NULL,				-- 휴대폰 번호
    status VARCHAR(5) NOT NULL DEFAULT '수강',	-- 학적 상태(퇴원, 휴원, 수강)
    regDate TIMESTAMP NOT NULL DEFAULT now(),	-- 가입 날짜
    PRIMARY KEY(sno, id)
);

INSERT INTO student(id, pwd, name, grade, age, sex, address, mPhone)
VALUES ('testID', 'testPWD', 'testName', 4, 23, '남', 'testAddress', '010-0000-0000');

-- 후원자 테이블
CREATE TABLE IF NOT EXISTS sponsor (
	sponsorNum INT NOT NULL AUTO_INCREMENT,					-- 후원자 번호
	sno INT NOT NULL,							-- 학생 번호
    relation VARCHAR(5) NOT NULL,				-- 관계
    name VARCHAR(45) NOT NULL,					-- 이름
    sex VARCHAR(5) NOT NULL,					-- 성별
    age INT NOT NULL,							-- 나이
    mPhone VARCHAR(45) NOT NULL,				-- 휴대폰 번호
    PRIMARY KEY(sponsorNum),
    CONSTRAINT fk_spon_student FOREIGN KEY (sno) REFERENCES student (sno) ON DELETE CASCADE
);

INSERT INTO sponsor(sno, relation, name, sex, age, mPhone)
VALUES (1, '부', 'testSponsor', '남', 55, '010-0000-0000');

-- 강사 테이블
CREATE TABLE IF NOT EXISTS teacher (
	tno INT NOT NULL AUTO_INCREMENT,
	id VARCHAR(45) NOT NULL,					-- 강사 아이디
	pwd VARCHAR(45) NOT NULL,					-- 강사 비밀번호
    name VARCHAR(45) NOT NULL,					-- 이름
    age INT NOT NULL,							-- 나이
    sex VARCHAR(5) NOT NULL,					-- 성별
    email VARCHAR(45),							-- 이메일(NULL가능)
    address VARCHAR(45) NOT NULL,				-- 주소
    phone VARCHAR(45),							-- 전화번호(NULL 가능)
    mPhone VARCHAR(45) NOT NULL,				-- 휴대폰 번호
    regDate TIMESTAMP NOT NULL DEFAULT now(),	-- 가입 날짜
    PRIMARY KEY(tno, id)
);

INSERT INTO teacher(id, pwd, name, age, sex, address, mPhone)
VALUES ('testID', 'testPWD', 'testName', 30, '여', 'testAddress', '010-0000-0000');

CREATE TABLE IF NOT EXISTS manager (
	mno INT NOT NULL AUTO_INCREMENT,			-- 관리자 식별 번호
    id VARCHAR(45) NOT NULL,					-- 관리자 아이디
    pwd VARCHAR(45) NOT NULL,					-- 관리자 비밀번호
    name VARCHAR(45) NOT NULL,					-- 이름
    age INT NOT NULL,							-- 나이
    sex VARCHAR(5) NOT NULL,					-- 성별
    email VARCHAR(45),							-- 이메일(NULL 가능)
    address VARCHAR(45) NOT NULL,				-- 주소
    phone VARCHAR(45),							-- 전화번호(NULL 가능)
    mPhone VARCHAR(45) NOT NULL,				-- 휴대폰 번호
    regDate TIMESTAMP NOT NULL DEFAULT now(),	-- 가입 날짜
    PRIMARY KEY(mno, id)
);

INSERT INTO manager(id, pwd, name, age, sex, address, mPhone)
VALUES ('admin', 'admin', 'adminName', 99, '남', 'adminAddress', '010-0000-0000');

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
    tno INT NOT NULL,						-- 강사 번호
    PRIMARY KEY(lno),
    CONSTRAINT fk_lec_tno FOREIGN KEY (tno) REFERENCES teacher (tno) ON DELETE CASCADE
);

INSERT INTO lecture(lname, day, startTime, endTime, personnel, room, target, tno)
VALUES ('testLecture', '목, 금', '9:30', '22:00', 5, 'G105', 4, 1);

-- 수강 테이블
CREATE TABLE IF NOT EXISTS takeCourse (
	sno INT NOT NULL,					-- 학생 번호
    lno INT NOT NULL,					-- 강의 번호
    grade DOUBLE,						-- 성적
    CONSTRAINT fk_tC_sno FOREIGN KEY (sno) REFERENCES student (sno) ON DELETE CASCADE,
    CONSTRAINT fk_tC_lno FOREIGN KEY (lno) REFERENCES lecture (lno) ON DELETE CASCADE
);

INSERT INTO takeCourse(sno, lno) VALUES (1, 1);

-- 출석
CREATE TABLE IF NOT EXISTS attendance (
	ano INT NOT NULL AUTO_INCREMENT,	-- 출석 식별 번호
    sno INT NOT NULL,					-- 학생 식별 번호
    lno INT NOT NULL,					-- 수업 식별 번호
    type VARCHAR(5) NOT NULL,			-- 출석, 지각, 결석 3가지 중 1개
    year INT NOT NULL,					-- 년
    month INT NOT NULL,					-- 월
    day INT NOT NULL,					-- 일
    PRIMARY KEY(ano),
    CONSTRAINT fk_att_sno FOREIGN KEY (sno) REFERENCES student (sno) ON DELETE CASCADE,
    CONSTRAINT fk_att_lno FOREIGN KEY (lno) REFERENCES lecture (lno) ON DELETE CASCADE
);

INSERT INTO attendance(sno, lno, type, year, month, day)
VALUES (1, 1, '출석', '2017', '10', '07');

-- 상담
CREATE TABLE IF NOT EXISTS help (
	tno INT NOT NULL,							-- 강사 식별 번호
    sno INT NOT NULL,							-- 학생 식별 번호
    contents TEXT NOT NULL,						-- 상담 내용
    helpDate TIMESTAMP NOT NULL DEFAULT now(),	-- 상담 날짜
    CONSTRAINT fk_help_tno FOREIGN KEY (tno) REFERENCES teacher (tno) ON DELETE CASCADE,
    CONSTRAINT fk_help_sno FOREIGN KEY (sno) REFERENCES student (sno) ON DELETE CASCADE
);

INSERT INTO help(tno, sno, contents) VALUES (1, 1, '연애상담');

-- 공지사항
CREATE TABLE IF NOT EXISTS notices (
	nno INT NOT NULL AUTO_INCREMENT,			-- 공지사항 번호
    title VARCHAR(45) NOT NULL,					-- 글 제목
    content TEXT NOT NULL,						-- 글 내용
    writer VARCHAR(45) NOT NULL,				-- 작성자
    regDate TIMESTAMP NOT NULL DEFAULT now(),	-- 등록 날짜
    modDate TIMESTAMP NOT NULL DEFAULT now(),	-- 수정 날짜
    viewCnt INT NOT NULL DEFAULT 0,				-- 조회 수
    PRIMARY KEY(nno)
);

INSERT INTO notices (title, content, writer)
VALUES ('프로젝트 안내', '10월 6일부터 10월 8일까지 모든 프로젝트를 마감합니다', 'admin');

-- 알림장
CREATE TABLE IF NOT EXISTS diary (
	dno INT NOT NULL AUTO_INCREMENT,			-- 알림글 번호
    title VARCHAR(45) NOT NULL,					-- 알림 제목
    content TEXT NOT NULL,						-- 알림 내용
    regDate TIMESTAMP NOT NULL DEFAULT now(),	-- 등록 날짜
    modDate TIMESTAMP NOT NULL DEFAULT now(),	-- 수정 날짜
    sponsorNum INT NOT NULL,					-- 후원자 번호
    tno INT NOT NULL,							-- 강사 번호
    PRIMARY KEY(dno),
	CONSTRAINT fk_diary_sponsor FOREIGN KEY (sponsorNum) REFERENCES sponsor (sponsorNum) ON DELETE CASCADE,
    CONSTRAINT fk_diary_teacher FOREIGN KEY (tno) REFERENCES teacher (tno) ON DELETE CASCADE
);

INSERT INTO diary (title, content, sponsorNum, tno)
VALUES ('Test 상담', '상담내용', 1, 1);