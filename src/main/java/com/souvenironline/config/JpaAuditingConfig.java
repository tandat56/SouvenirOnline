package com.souvenironline.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.domain.AuditorAware;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

@Configuration
@EnableJpaAuditing(auditorAwareRef = "auditorProvider")
public class JpaAuditingConfig {
	
	@Bean
	public AuditorAware<String> auditorProvider() {
		return new AuditorAwareImpl();
	}
	
	public static class AuditorAwareImpl implements AuditorAware<String> {
		//JPA auditing sẽ giúp tự động thêm createBy, modifiedBy (sẽ vô trong đối tượng Princepal trong Spring Secutiry
		//	để get các thông tin đó ra )
		//	 createDate  modifiedDate.
		@Override
		public String getCurrentAuditor() {	
			
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			if (authentication == null) {
				return null; //Chưa đăng nhập thì sẽ là null
			}
			return authentication.getName(); // đây là chổ return ra username và nó sẽ trỏ vô nơi có @CreateBy và @LastModifiedBy và lưu xuống csdl
			// còn 2 cái ngày thì sẽ tự động
		}
	}
}
