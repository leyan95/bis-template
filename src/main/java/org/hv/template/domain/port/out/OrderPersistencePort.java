package org.hv.template.domain.port.out;

import org.hv.biscuits.repository.CommonRepository;
import org.hv.template.domain.aggregation.Order;

public interface OrderPersistencePort extends CommonRepository<Order> {
}
