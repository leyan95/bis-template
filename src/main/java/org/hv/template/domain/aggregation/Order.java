package org.hv.template.domain.aggregation;

import org.hv.pocket.annotation.Column;
import org.hv.pocket.annotation.Entity;
import org.hv.pocket.annotation.OneToMany;
import org.hv.pocket.model.BaseEntity;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

/**
 * @author wujianc
 */
@Entity(table = "TBL_ORDER", businessName = "订单")
public class Order extends BaseEntity {

    private static final long serialVersionUID = 1910123140032558152L;
    @Column
    private String code;
    @Column
    private LocalDateTime createTime;
    @Column
    private BigDecimal cost;
    @OneToMany(clazz = OrderDetail.class, bridgeField = "orderUuid")
    private List<OrderDetail> detailList;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public LocalDateTime getCreateTime() {
        return createTime;
    }

    public void setCreateTime(LocalDateTime createTime) {
        this.createTime = createTime;
    }

    public BigDecimal getCost() {
        return cost;
    }

    public void setCost(BigDecimal cost) {
        this.cost = cost;
    }

    public List<OrderDetail> getDetailList() {
        return detailList;
    }

    public void setDetailList(List<OrderDetail> detailList) {
        this.detailList = detailList;
    }
}
