package org.hv.template;

import org.hv.biscuits.core.ActionHolder;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;

import java.sql.SQLException;

/**
 * @author wujianc
 */
@SpringBootApplication
@ComponentScan(basePackages = {"org.hv.*"})
public class TemplateApplication {
    public static void main(String[] args) {
        SpringApplication.run(TemplateApplication.class, args);
    }

    @Bean
    public ActionHolder getActionFactory() throws SQLException {
        ActionHolder actionFactory = ActionHolder.getInstance();
        actionFactory.setBiscuitsDatabaseSessionId("biscuits")
                .runWithDevelopEnvironment()
                .persistenceMapper(actionFactory.getOwnServiceId(), actionFactory.getActionMap())
                .persistencePermission(actionFactory.getOwnServiceId(), actionFactory.getPermissionMap());
        return actionFactory;
    }
}
