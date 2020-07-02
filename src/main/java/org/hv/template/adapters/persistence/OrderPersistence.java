package org.hv.template.adapters.persistence;

import org.hv.biscuits.repository.AbstractCommonRepository;
import org.hv.template.domain.aggregation.Order;
import org.hv.template.domain.port.out.OrderPersistencePort;
import org.springframework.stereotype.Component;

/**
 * @author wujianc
 */
@Component
public class OrderPersistence extends AbstractCommonRepository<Order> implements OrderPersistencePort {
}
