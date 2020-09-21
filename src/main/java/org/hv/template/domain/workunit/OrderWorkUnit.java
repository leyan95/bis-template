package org.hv.template.domain.workunit;

import org.hv.biscuits.annotation.Affairs;
import org.hv.biscuits.annotation.Service;
import org.hv.biscuits.domain.even.EvenCenter;
import org.hv.biscuits.service.AbstractService;
import org.hv.template.domain.aggregation.Order;
import org.hv.template.domain.port.in.OrderWorkUnitPort;
import org.hv.template.domain.port.out.OrderPersistencePort;

import static org.hv.template.domain.constant.EvenConstant.EVEN_ORDER_CREATE;

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
    @Affairs
    public Order createOrder(Order order) throws Exception {
        int effectRow = this.orderPersistencePort.saveWithTrack(order, true, "ADMIN", "新建订单信息。");
        if (effectRow > 0) {
            // NOTE: 发布事件通知扣减库存
            EvenCenter.getInstance().fireEven(EVEN_ORDER_CREATE, order);
            return order;
        }
        throw new Exception("新建信息失败。");
    }
}
