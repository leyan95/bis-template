package org.hv.template.domain.port.in;

import org.hv.template.domain.aggregation.Order;

import java.io.Serializable;
import java.sql.SQLException;

/**
 * @author wujianc
 */
public interface OrderWorkUnitPort {

    /**
     * 查看
     *
     * @param identify 订单数据标识
     * @return 订单
     * @throws SQLException e
     */
    Order detail(Serializable identify) throws SQLException;

    /**
     * 新建订单
     *
     * @param order 订单
     * @return 订单
     * @throws Exception e
     */
    Order addOrder(Order order) throws Exception;

    /**
     * 编辑订单
     *
     * @param order 订单
     * @return 订单
     * @throws Exception e
     */
    Order updateOrder(Order order) throws Exception;

    /**
     * 删除订单
     *
     * @param order 订单
     * @return 订单
     * @throws Exception e
     */
    Order deleteOrder(Order order) throws Exception;
}
