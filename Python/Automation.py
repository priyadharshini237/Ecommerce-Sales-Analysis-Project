import pandas as pd
from sqlalchemy import create_engine
engine = create_engine(
    "mysql+pymysql://root:priyatae@localhost/ecommerce_analysis"
)

query = "SELECT * FROM final_joined_table"

ecommerce_automation = pd.read_sql(query, engine)

ecommerce_automation.to_csv("final_joined_table.csv", index=False)
#print("Print csv generated successfully")

total_revenue = ecommerce_automation["Total_Amount"].sum()
total_orders = ecommerce_automation["Order_ID"].nunique()

report = pd.DataFrame({
    "Metric": ["Total Revenue", "Total Orders"],
    "Value": [total_revenue, total_orders]
})

report.to_csv("kpi_report.csv", index=False)

