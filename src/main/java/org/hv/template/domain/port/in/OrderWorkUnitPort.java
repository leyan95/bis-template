package org.hv.template.domain.port.in;

import org.hv.template.domain.aggregation.Order;

/**
 * @author wujianc
 */
public interface OrderWorkUnitPort {

    /**
     * 创建订单同时发布事件
     *
     * @param order 订单
     * @return 订单
     * @throws Exception e
     */
    Order createOrder(Order order) throws Exception;
}
