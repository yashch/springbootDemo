package com.lesaas.slardar.base.config;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

/**
 * 
 * @ClassName: SiteMashConfig
 * @Description: sitemash 配置器
 * @author: ysc
 * @date: 2016年3月3日 
 * @time: 下午3:53:53
 *
 */
public class SiteMeshConfig extends ConfigurableSiteMeshFilter {
	private final String DEFAULT_DIR="/WEB-INF/views/layouts";

	@Override
    protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
		
		
		
		//excluded 不需要渲染的路径
		builder.addExcludedPath("/static/*");
        builder.addExcludedPath("/api/*");
        builder.addExcludedPath("/payment/*");
        builder.addExcludedPath("/webapi/*");
        builder.addExcludedPath("/login");
        
        //decorator 需要渲染的路径
        String DEFAULT=DEFAULT_DIR+"/default.jsp";
        builder.addDecoratorPath("/*", DEFAULT);
        
        //第一套模版页
        String DEFAULT1=DEFAULT_DIR+"/default1.jsp";
        builder.addDecoratorPath("/slardar/demo/*", DEFAULT1);
        

        
        //第二套模版页
        String DEFAULT2=DEFAULT_DIR+"/default2.jsp";
        builder.addDecoratorPath("/slardar/registControl/ZSstep2*", DEFAULT2);
        builder.addDecoratorPath("/slardar/bridgePay/payConfirm*", DEFAULT2);
        
        //第三套模版页
        String DEFAULT3=DEFAULT_DIR+"/default3.jsp";
        builder.addDecoratorPath("/slardar/registControl/orgpayMentHelp", DEFAULT3);
        builder.addDecoratorPath("/slardar/registControl/help*", DEFAULT3);
        builder.addDecoratorPath("/slardar/registControl/YFhelp*", DEFAULT3);
        
        //第四套模版页
        String DEFAULT4=DEFAULT_DIR+"/default4.jsp";
        builder.addDecoratorPath("/slardar/registControl/step3*", DEFAULT4);
        builder.addDecoratorPath("/slardar/registControl/myVoucher*", DEFAULT4);
        builder.addDecoratorPath("/slardar/registControl/myBlance*", DEFAULT4);
        
        //第五套模版页
        String DEFAULT5=DEFAULT_DIR+"/default5.jsp";
        builder.addDecoratorPath("/slardar/registControl/YEbackcard*", DEFAULT5);

    }
}
