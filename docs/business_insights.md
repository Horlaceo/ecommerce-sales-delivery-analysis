# E-commerce Sales, Customer Behaviour and Delivery Performance Analysis

## 1. Project Objective

The objective of this project was to analyze e-commerce sales trends, delivery performance, and customer review scores using SQL and Power BI. The goal was to identify business patterns, evaluate delivery performance, and provide actionable recommendations.

**Tools used:** MySQL, SQL, Microsoft Power BI
**Analysis period:** September 2016 – August 2018

## 2. Key Performance Indicators

| Metric                                               |                Result |
| ---------------------------------------------------- | --------------------: |
| Delivered orders                                     |  Approximately 96,000 |
| Items sold                                           | Approximately 110,000 |
| Total item sales value                               |       R$13,221,498.11 |
| On-time or early delivery rate                       |   Approximately 91.9% |
| Average review score for on-time or early deliveries |                  4.29 |
| Average review score for late deliveries             |                  2.57 |

**Measurement note:** Total item sales value is calculated from item prices and excludes freight charges. It is not profit or net revenue.

## 3. Key Findings

### Finding 1: Sales Generally Increased Over the Analysis Period

Monthly item sales value generally trended upward from September 2016 to August 2018, although performance fluctuated between months.

**Business implication:** The overall growth suggests an expanding sales operation during this period. Businesses should investigate which products, sellers, customer groups, or other factors contributed to this pattern before making future growth forecasts.

### Finding 2: November 2017 Recorded the Highest Monthly Sales

November 2017 recorded approximately:

* **Item sales value:** R$987,765.37
* **Delivered orders:** 7,289
* **Items sold:** 8,475

Comparing October with November 2017:

| Metric                             | October 2017 | November 2017 |    Change |
| ---------------------------------- | -----------: | ------------: | --------: |
| Delivered orders                   |        4,478 |         7,289 |    +62.8% |
| Item sales value                   | R$648,247.65 |  R$987,765.37 |    +52.4% |
| Average item sales value per order |     R$144.76 |      R$135.51 | Decreased |

**Interpretation:** The increase in order volume was the main numerical contributor to November's sales peak. Average item sales value per order decreased, so the peak was not driven by a higher average value per order.

The analysis identifies what happened, but it does not establish why. Further investigation would be required to determine whether promotions, seasonal demand, seller activity, or other factors contributed to the increase.

### Finding 3: Most Orders Were Delivered On Time or Early

Approximately 91.9% of orders with available delivery dates were delivered on or before their estimated delivery dates. Approximately 8.1% were late.

**Business implication:** Delivery performance was generally strong, but the late-delivery share represents an opportunity to improve logistics, delivery estimates, and customer communication.

### Finding 4: Late Deliveries Were Associated with Lower Review Scores

The average review scores were:

| Delivery performance | Average review score |
| -------------------- | -------------------: |
| On time or early     |                 4.29 |
| Late                 |                 2.57 |
| Difference           |          1.72 points |

Orders delivered late had substantially lower average review scores than orders delivered on time or early.

**Business implication:** Delivery performance should be monitored as part of customer experience management. However, this analysis identifies an association, not proof that late delivery alone caused lower review scores. Product quality, seller performance, and other factors may also influence customer satisfaction.

## 4. Business Recommendations

### Recommendation 1: Investigate the November 2017 Sales Peak

Analyze promotions, product categories, seller activity, and other available business records to identify what contributed to the increase in orders. Use verified findings to inform future sales planning.

### Recommendation 2: Reduce Late Deliveries

Investigate the causes of late deliveries, monitor logistics performance, and review delivery estimates. Track the late-delivery rate regularly to measure improvement.

### Recommendation 3: Monitor Customer Satisfaction Alongside Delivery Performance

Review customer feedback for late deliveries and identify recurring complaints. Use the findings to prioritize operational improvements.

### Recommendation 4: Build a Consistent Performance Monitoring Process

Track monthly sales, delivered orders, items sold, average item sales value per order, on-time delivery rate, and review scores in a recurring dashboard review.

### Recommendation 5: Improve Data Completeness

Resolve missing and unmatched records before expanding into more detailed product, customer, or payment analyses. Better data coverage will support more reliable conclusions.

## 5. Data Quality and Limitations

Several data limitations affected the scope of this project:

* **Product records:** Some sold product IDs did not match the imported product records. This limits the reliability of detailed product-category analysis.
* **Customer records:** The imported customer table was incomplete relative to the orders table. Customer-level and repeat-purchase analyses were therefore excluded.
* **Payment records:** Payment data was incomplete, so payment-method analysis was excluded.
* **Delivery analysis:** Delivery performance calculations excluded orders without both actual and estimated delivery dates.
* **Sales measurement:** Item sales value sums item prices and excludes freight. It does not represent profit, and the analysis does not account for operating costs.
* **Review analysis:** The difference in average review scores shows an association between delivery performance and customer ratings; it does not establish causation.
* **Metric coverage:** Different analyses may produce slightly different order or review counts because they use different joins, filters, and data-availability requirements.

## 6. Conclusion

This project used SQL to analyze e-commerce sales and delivery data and Power BI to communicate the findings through an executive dashboard.

The analysis identified a general upward sales trend, a peak in November 2017 driven primarily by increased order volume, an on-time or early delivery rate of approximately 91.9%, and a substantial difference in average review scores between on-time or early and late deliveries.

The findings provide a basis for further investigation into sales growth, delivery reliability, and customer experience. Improving data completeness and investigating the underlying causes of observed patterns would strengthen future business decisions.
