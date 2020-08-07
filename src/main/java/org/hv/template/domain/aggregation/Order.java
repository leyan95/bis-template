package org.hv.template.domain.aggregation;

import org.hv.biscuits.spine.AbstractWithOperatorEntity;
import org.hv.pocket.annotation.Column;
import org.hv.pocket.annotation.Entity;
import org.hv.pocket.annotation.OneToMany;

import java.math.BigDecimal;
import java.util.List;

@Entity(table = "TBL_ORDER")
public class Order extends AbstractWithOperatorEntity {

    @Column
    private String code;
    @Column
    private BigDecimal price;
    @OneToMany(clazz = OrderDetail.class, bridgeField = "orderUuid")
    private List<OrderDetail> detailList;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public List<OrderDetail> getDetailList() {
        return detailList;
    }

    public void setDetailList(List<OrderDetail> detailList) {
        this.detailList = detailList;
    }
}
