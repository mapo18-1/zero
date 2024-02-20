-- Member 테이블 생성
DROP TABLE IF EXISTS member;

CREATE TABLE member (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    id VARCHAR(255),
    pw VARCHAR(255),
    nickname VARCHAR(255),
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    is_deleted CHAR(1)
);

-- Post 테이블 생성
DROP TABLE IF EXISTS post;

CREATE TABLE post (
    post_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    post_title VARCHAR(255),
    post_content TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    is_deleted CHAR(1),
    FOREIGN KEY (member_id) REFERENCES member(member_id)
);

-- Comment 테이블 생성
DROP TABLE IF EXISTS comment;

CREATE TABLE comment (
    comment_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    post_id INT,
    comment_content VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    is_deleted CHAR(1),
    FOREIGN KEY (member_id) REFERENCES member(member_id),
    FOREIGN KEY (post_id) REFERENCES post(post_id)
);

-- Member 테이블에 데이터 삽입
INSERT INTO member (name, id, pw, nickname, email, created_at, updated_at, is_deleted)
VALUES
  ('Member 1', 'ID1', 'Password1', 'Nickname1', 'email1@example.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'N'),
  ('Member 2', 'ID2', 'Password2', 'Nickname2', 'email2@example.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'N'),
  ('Member 3', 'ID3', 'Password3', 'Nickname3', 'email3@example.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'N'),
  ('Member 4', 'ID4', 'Password4', 'Nickname4', 'email4@example.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'N'),
  ('Member 5', 'ID5', 'Password5', 'Nickname5', 'email5@example.com', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'N');

-- Post 테이블에 데이터 삽입
INSERT INTO post (member_id, post_title, post_content, created_at, updated_at, is_deleted)
VALUES
  (1, 'Post Title 1', 'Post Content 1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'N'),
  (2, 'Post Title 2', 'Post Content 2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'N'),
  (3, 'Post Title 3', 'Post Content 3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'N'),
  (4, 'Post Title 4', 'Post Content 4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'N'),
  (5, 'Post Title 5', 'Post Content 5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'N');

-- Comment 테이블에 데이터 삽입
INSERT INTO comment (member_id, post_id, comment_content, created_at, updated_at, is_deleted)
VALUES
  (1, 1, 'Comment Content 1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'N'),
  (2, 2, 'Comment Content 2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'N'),
  (3, 3, 'Comment Content 3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'N'),
  (4, 4, 'Comment Content 4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'N'),
  (5, 5, 'Comment Content 5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 'N');
