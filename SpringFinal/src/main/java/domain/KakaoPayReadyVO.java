package domain;

import java.util.Date;

import lombok.Data;

@Data
public class KakaoPayReadyVO {
    
    //response
    private String tid, next_redirect_app_url, next_redirect_mobile_url, next_redirect_pc_url, android_app_scheme, ios_app_scheme;
    private boolean tms_result;
    private Date created_at;
	public String getNext_redirect_pc_url() {
		// TODO Auto-generated method stub
		return null;
	}
    
}