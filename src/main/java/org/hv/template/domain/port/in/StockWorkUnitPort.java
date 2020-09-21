package org.hv.template.domain.port.in;

import org.hv.template.domain.aggregation.Order;

/**
 * @author wujianc
 */
public interface StockWorkUnitPort {

    /**
     * 根据订单扣减库存
     *
     * @param order 订单
     * @return 是否成功
     */
    boolean deductingTheInventory(Order order);
}
