package org.hv.template.domain.aggregation;

import org.hv.pocket.annotation.Column;
import org.hv.pocket.annotation.Entity;
import org.hv.pocket.model.BaseEntity;

import java.math.BigDecimal;

/**
 * @author wujianc
 */
@Entity(table = "TBL_STOCK", businessName = "库存")
public class Stock extends BaseEntity {
    private static final long serialVersionUID = -7533975362808699192L;
    @Column
    private String productDataUuid;
    @Column
    private BigDecimal count;

    public String getProductDataUuid() {
        return productDataUuid;
    }

    public void setProductDataUuid(String productDataUuid) {
        this.productDataUuid = productDataUuid;
    }

    public BigDecimal getCount() {
        return count;
    }

    public void setCount(BigDecimal count) {
        this.count = count;
    }
}
