package org.hv.template;

import org.hv.biscuits.permission.AbstractPermission;
import org.springframework.stereotype.Component;

/**
 * @author wujianc
 */
@Component
public class TemplatePermission extends AbstractPermission {
    @Override
    public void init() {
        super.register("order_read", "查看", "订单查询权限");
        super.register("order_manage", "管理", "订单管理权限");
    }
}
