package kr.co.daitdayoung.instructor.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class CourseInquiryDomain {
	
	private String ciCode, uiId, citCode, ciTitle, ciContent, ciAnswer, couCode, insId;
	private Date ciDate,ciAnswerDate;
	private String citName;
}
