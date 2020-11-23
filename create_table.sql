CREATE TABLE IF NOT EXISTS users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    usr_email VARCHAR(255) NOT NULL,
    usr_password VARCHAR(255) NOT NULL,
    usr_phone_number VARCHAR(255) NOT NULL,
    usr_description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS study_groups (
    study_group_id INT AUTO_INCREMENT PRIMARY KEY,
    owner_id INT NOT NULL,
    sg_name VARCHAR(255) NOT NULL,
    sg_description TEXT,
    sg_max_size INT NOT NULL,
    sg_meeting_count INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (owner_id) REFERENCES users (user_id) ON UPDATE RESTRICT ON DELETE CASCADE
)  ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS recruitments(
    recruitment_id INT AUTO_INCREMENT PRIMARY KEY,
    study_group_id INT NOT NULL,
    rc_title VARCHAR(255) NOT NULL,
    rc_description TEXT,
    rc_size INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (study_group_id) REFERENCES study_groups (study_group_id) ON UPDATE RESTRICT ON DELETE CASCADE
)  ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS meetings(
    meeting_id INT AUTO_INCREMENT PRIMARY KEY,
    study_group_id INT NOT NULL,
    mt_title VARCHAR(255) NOT NULL,
    mt_description TEXT,
    mt_datetime DATETIME,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (study_group_id) REFERENCES study_groups (study_group_id) ON UPDATE RESTRICT ON DELETE CASCADE
)  ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS user_study_group(
    user_id INT NOT NULL,
    study_group_id INT NOT NULL,
    usg_attendance_count INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON UPDATE RESTRICT ON DELETE CASCADE,
    FOREIGN KEY (study_group_id) REFERENCES study_groups (study_group_id) ON UPDATE RESTRICT ON DELETE CASCADE
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS user_recruitment(
    user_id INT NOT NULL,
    recruitment_id INT NOT NULL,
    ur_apply_title VARCHAR(255) NOT NULL,
    ur_apply_description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON UPDATE RESTRICT ON DELETE CASCADE,
    FOREIGN KEY (recruitment_id) REFERENCES recruitments(recruitment_id) ON UPDATE RESTRICT ON DELETE CASCADE
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS user_meeting(
    user_id INT NOT NULL,
    meeting_id INT NOT NULL,
    um_comment VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON UPDATE RESTRICT ON DELETE CASCADE,
    FOREIGN KEY (meeting_id) REFERENCES meetings(meeting_id) ON UPDATE RESTRICT ON DELETE CASCADE
)  ENGINE=INNODB;