package edu.bit.ex;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
class BarnyOracleConTest {
	private static final String driver = "oracle.jdbc.driver.OracleDriver";
	private static final String url = "jdbc:log4jdbc:oracle:thin:@localhost:1521/xe";
	private static final String user = "barny";
	private static final String pw = "barny";

	@Test
	void contextLoads() throws ClassNotFoundException {

		Class.forName(driver);

		try (Connection con = DriverManager.getConnection(url, user, pw)) {
			log.info("DB 연결 SUCCESS");
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}

}
