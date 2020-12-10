package org.hv.template;

import org.hv.biscuits.core.BiscuitsConfig;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

/**
 * @author wujianchuan 2020/7/9 10:45
 */
@Component
@EnableSwagger2
public class TemplateInitialization {
    public static final String SWAGGER_SCAN_BASE_PACKAGE = "org.hv.template.adapters";
    public static final String VERSION = "1.0.0";

    @Value("${biscuits.withPersistence:true}")
    private boolean withPersistence;

    @Resource
    private BiscuitsConfig biscuitsConfig;

    @PostConstruct
    public void initBis() throws Exception {
        if (withPersistence) {
            biscuitsConfig.setDesKey("sward007").setSm4Key("sward18713839007").init();
        }
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
