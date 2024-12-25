CREATE TABLE student3 (                   --创建表 名为student3
   s_id INT AUTO_INCREMENT PRIMARY KEY ,  -- 设立表id 自动加一 设为主键
   s_name VACHAR(10) NOT NULL,            --学生名字长度限制 以及格式
   s_age INT,                             --学生的年龄
   s_gender ENUM('男','女'),              -- 性别 男or女
   class_id INT                           --班级id 
   );
   
CREATE TABLE COURSE (
    c_id INT AUTO_INCREMENT PRIMARY KEY,  --设立表id 自动加一 设为主键
    c_name VARCHAR (20) NOT NULL,         --课程名字不能为空
    teacher VARCHAR(20),                  -- 老师名字
    start_time TIME,                      --上课时间
    end_time TIME,                        -- 下课时间
    class_id INT,                         --班级id 
    FOREIGN KEY(class_id) references
	  student3(class_id)                   --设class_ID 为 student3表的外键 建立关联关系
    );
    
    
    
    INSERT INTO 
	 COURSE (c_name,teacher,start_time,end_time ,class_id )
	 VALUES ('语文','张老师','08:00:00','09:00:00',1),
    ('数学','王老师','09:20:00','10:00:00',1),
	 ('英语','李老师','10:20:00','11:00:00',1);--插入course表内容 
    
    INSERT INTO 
	 student3(s_NAMe, s_age,s_gender, s_class_id )
	 VALUES ('张三','15','男','1'),
	 ('李四','15','男','1'),
    ('李红','15','女','1');                   --插入student表 内容
    
    
    SELECT COUNT(s_id) FROM student3;         --查询总共有多少学生
    SELECT *FROM 
	 student3
	  WHERE s_gender = '男';                   -- 查询男生的所有信息
	  
	  
    SELECT s.*,c.* 
    FROM 
	 student3 s
	 JOIN course c 
	 ON s.class_id = c.class_id 
    WHERE s.class_id = '1';                   --查出一班的学生及课程信息
    
