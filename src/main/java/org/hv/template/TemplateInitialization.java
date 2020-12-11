package org.hv.template;

import org.hv.biscuits.core.ActionHolder;
import org.hv.biscuits.core.BiscuitsConfig;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import javax.annotation.Resource;

/**
 * @author wujianchuan 2020/7/9 10:45
 */
@Configuration
@EnableSwagger2
public class TemplateInitialization {
    public static final String SWAGGER_SCAN_BASE_PACKAGE = "org.hv.template.adapters";
    public static final String VERSION = "1.0.0";

    @Resource
    private BiscuitsConfig biscuitsConfig;

    @Bean
    public ActionHolder getActionFactory() throws Exception {
        biscuitsConfig.setDesKey("sward007").setSm4Key("sward18713839007").init();
        ActionHolder actionFactory = ActionHolder.getInstance();
        actionFactory.setBiscuitsDatabaseSessionId("biscuits")
                .runWithDevelopEnvironment()
                .persistenceMapper(actionFactory.getOwnServiceId(), actionFactory.getActionMap())
                .persistencePermission(actionFactory.getOwnServiceId(), actionFactory.getPermissionMap());
        return actionFactory;
    }

    @Bean
    public Docket docket() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage(SWAGGER_SCAN_BASE_PACKAGE))
                .paths(PathSelectors.any())
                .build();
    }

    public ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("接口文档")
                .description("RESTFUL API")
                .termsOfServiceUrl("")
                .version(VERSION)
                .build();
    }
}
