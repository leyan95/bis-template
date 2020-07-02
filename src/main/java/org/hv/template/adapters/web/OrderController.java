package org.hv.template.adapters.web;

import io.swagger.annotations.ApiOperation;
import org.hv.biscuits.annotation.Action;
import org.hv.biscuits.annotation.Controller;
import org.hv.biscuits.controller.Body;
import org.hv.template.domain.aggregation.Order;
import org.hv.template.domain.port.in.OrderWorkUnitPort;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.Serializable;

/**
 * @author wujianc
 */
@Controller(bundleId = "station_setting", name = "订单管理")
public class OrderController {

    private final OrderWorkUnitPort orderWorkUnitPort;

    public OrderController(OrderWorkUnitPort orderWorkUnitPort) {
        this.orderWorkUnitPort = orderWorkUnitPort;
    }

    @Action(actionId = "detail_order", authId = "order_read")
    @ApiOperation(value = "查看订单信息")
    public Body detailOrder(@RequestBody Serializable identify) throws Exception {
        return Body.success().title("成功").message("添加订单信息成功。").data(this.orderWorkUnitPort.detail(identify));
    }

    @Action(actionId = "add_order", authId = "order_manage", method = RequestMethod.POST)
    @ApiOperation(value = "添加订单信息")
    public Body addOrder(@RequestBody Order order) throws Exception {
        return Body.success().title("成功").message("添加订单信息成功。").data(this.orderWorkUnitPort.addOrder(order));
    }

    @Action(actionId = "update_order", authId = "order_manage", method = RequestMethod.POST)
    @ApiOperation(value = "编辑订单信息")
    public Body updateOrder(@RequestBody Order order) throws Exception {
        return Body.success().title("成功").message("编辑订单信息成功。").data(this.orderWorkUnitPort.updateOrder(order));
    }

    @Action(actionId = "delete_order", authId = "order_manage", method = RequestMethod.POST)
    @ApiOperation(value = "删除订单信息")
    public Body deleteOrder(@RequestBody Order order) throws Exception {
        return Body.success().title("成功").message("删除订单信息成功。").data(this.orderWorkUnitPort.deleteOrder(order));
    }
}
