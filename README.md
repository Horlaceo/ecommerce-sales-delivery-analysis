# E-commerce Sales, Customer Behaviour and Delivery Performance Analysis

## Project Overview

This project analyses e-commerce sales, order volumes, delivery performance, and customer review scores using SQL and Power BI.

The objective is to identify business trends, evaluate delivery performance, understand the relationship between delivery timing and customer reviews, and provide actionable recommendations based on the available data.

**Tools:** MySQL, SQL, Microsoft Power BI
**Analysis Period:** September 2016 – August 2018
**Project Type:** Data Analytics | Business Intelligence

## Business Questions

This analysis focuses on the following questions:

1. How did sales performance change over the analysis period?
2. Which month recorded the highest item sales value?
3. How did order volume relate to changes in total item sales?
4. What proportion of orders was delivered on time or early?
5. How did customer review scores differ between on-time/early and late deliveries?
6. What business improvements can be recommended based on the findings?

## Key Findings

### 1. Overall Sales Trend

Monthly item sales generally followed an upward trend across the analysis period, although there were fluctuations.

### 2. November 2017 Sales Peak

November 2017 recorded the highest monthly item sales value in the analysis.

* Item sales value: R$987,765.37
* Delivered orders: 7,289
* Items sold: 8,475

Between October and November 2017, delivered orders increased by approximately 62.8%, while item sales value increased by approximately 52.4%.

Average item sales value per order decreased from R$144.76 to R$135.51.

**Insight:** The increase in order volume was the main driver of the November sales peak, rather than an increase in average item sales value per order.

### 3. Delivery Performance

Approximately 91.9% of orders included in the delivery performance analysis were delivered on time or early, while approximately 8.1% were late.

**Insight:** Delivery performance was generally strong, although late deliveries remain an opportunity for operational improvement.

### 4. Delivery Performance and Customer Reviews

| Delivery Performance | Average Review Score |
| -------------------- | -------------------: |
| On time or early     |                 4.29 |
| Late                 |                 2.57 |

The average review score for on-time or early deliveries was 1.72 points higher than for late deliveries.

**Insight:** Late deliveries were associated with lower customer review scores. This relationship does not, by itself, prove that delivery delays caused the lower scores.

## Power BI Dashboard

The Executive Overview dashboard presents the main performance indicators and trends, including:

* Total delivered orders
* Total items sold
* Total item sales value
* On-time delivery rate
* Monthly item sales trend
* Monthly delivered order volume
* Average review score by delivery performance

*The Executive Overview dashboard screenshot is included in this repository.*

## Tools and Skills Demonstrated

* Data Cleaning
* SQL querying and aggregation
* Joining relational tables
* Filtering and grouping data
* Calculating business metrics
* Monthly sales trend analysis
* Delivery performance analysis
* Customer review analysis
* Data visualization using Power BI
* Business insight development
* Data quality assessment

## Data Quality and Limitations

During data preparation, incomplete or unmatched records were identified in some product, customer, and payment-related tables.

Some analyses were therefore excluded from the core dashboard to avoid presenting potentially misleading findings.

The sales metric represents item prices and excludes freight. It should not be interpreted as profit or total business revenue.

The relationship between delivery performance and review scores represents an association, not proof of causation.

## Business Recommendations

1. Monitor order volume alongside sales value to understand the drivers of sales growth.
2. Investigate unusually strong sales periods before attributing growth to promotions or seasonal demand.
3. Track late deliveries and investigate recurring causes of delays.
4. Monitor customer reviews alongside delivery performance.
5. Maintain data quality checks before publishing additional business metrics.

## Conclusion

This project demonstrates how SQL and Power BI can be used to analyze e-commerce performance and translate data into business insights.

The findings highlight changes in sales and order volume, the November 2017 sales peak, delivery performance, and the relationship between delivery timing and customer review scores.

The analysis provides a foundation for evidence-based decisions concerning sales monitoring, delivery reliability, and customer experience.
