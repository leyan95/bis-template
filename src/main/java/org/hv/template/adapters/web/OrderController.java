package org.hv.template.adapters.web;

import io.swagger.annotations.ApiOperation;
import org.hv.biscuits.annotation.Action;
import org.hv.biscuits.annotation.Controller;
import org.hv.biscuits.controller.Body;
import org.hv.template.domain.aggregation.Order;
import org.hv.template.domain.port.in.OrderWorkUnitPort;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author wujianc
 */
@Controller(bundleId = "station_setting", name = "订单管理")
public class OrderController {

    private final OrderWorkUnitPort orderWorkUnitPort;

    public OrderController(OrderWorkUnitPort orderWorkUnitPort) {
        this.orderWorkUnitPort = orderWorkUnitPort;
    }

    @Action(actionId = "add_order", authId = "order_manage", method = RequestMethod.POST)
    @ApiOperation(value = "添加订单信息")
    public Body addOrder(@RequestBody Order order) throws Exception {
        return Body.success().title("成功").message("添加订单信息成功。").data(this.orderWorkUnitPort.createOrder(order));
    }

    @Action(actionId = "detail", authId = "order_manage", method = RequestMethod.GET)
    @ApiOperation(value = "添加订单信息")
    public Body detail() {
        return Body.success().title("成功").message("添加订单信息成功。").data("订单");
    }
}
