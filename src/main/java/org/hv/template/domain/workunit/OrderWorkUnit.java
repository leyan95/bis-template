package org.hv.template.domain.workunit;

import org.hv.biscuits.annotation.Affairs;
import org.hv.biscuits.annotation.Service;
import org.hv.biscuits.service.AbstractService;
import org.hv.template.domain.aggregation.Order;
import org.hv.template.domain.port.in.OrderWorkUnitPort;
import org.hv.template.domain.port.out.OrderPersistencePort;

import java.io.Serializable;
import java.sql.SQLException;

/**
 * @author wujianc
 */
@Service(session = "template")
public class OrderWorkUnit extends AbstractService implements OrderWorkUnitPort {
    private final OrderPersistencePort orderPersistencePort;

    public OrderWorkUnit(OrderPersistencePort orderPersistencePort) {
        this.orderPersistencePort = orderPersistencePort;
    }

    @Override
    public Order detail(Serializable identify) throws SQLException {
        return this.getSession().findOne(Order.class, identify);
    }

    @Override
    @Affairs
    public Order addOrder(Order order) throws Exception {
        int effectRow = this.orderPersistencePort.saveWithTrack(order, true, "ADMIN", "新建订单信息。");
        if (effectRow > 0) {
            return order;
        }
        throw new Exception("新建信息失败。");
    }

    @Override
    @Affairs
    public Order updateOrder(Order order) throws Exception {
        int effectRow = this.orderPersistencePort.updateWithTrack(order, true, "ADMIN", "编辑订单信息。");
        if (effectRow > 0) {
            return order;
        }
        throw new Exception("编辑信息失败。");
    }

    @Override
    @Affairs
    public Order deleteOrder(Order order) throws Exception {
        int effectRow = this.orderPersistencePort.deleteWithTrack(order, "ADMIN", "删除订单信息");
        if (effectRow > 0) {
            return order;
        }
        throw new Exception("删除信息失败。");
    }
}
