import pandas as pd
from sqlalchemy import create_engine

print("Program Started")

# ---------------------------------
# Load Dataset
# ---------------------------------

print("Loading Dataset...")

df = pd.read_csv(
    "data/sales.csv",
    encoding="latin1"
)

print(f"Dataset Loaded Successfully!")
print(f"Rows Found: {len(df)}")

# ---------------------------------
# Clean Column Names
# ---------------------------------

df.columns = (
    df.columns
    .str.strip()
    .str.lower()
    .str.replace(" ", "_")
    .str.replace("-", "_")
)

print("\nColumns Renamed Successfully!\n")
print(df.columns.tolist())

# ---------------------------------
# Convert Date Columns
# ---------------------------------

df["order_date"] = pd.to_datetime(df["order_date"])
df["ship_date"] = pd.to_datetime(df["ship_date"])

# ---------------------------------
# MySQL Connection
# ---------------------------------

username = "root"
password = "12321"
database = "sales_dashboard"

print("\nConnecting To MySQL...")

engine = create_engine(
    f"mysql+pymysql://{username}:{password}@localhost/{database}"
)

# ---------------------------------
# Upload Data
# ---------------------------------

print("Uploading Data To MySQL...")

df.to_sql(
    name="sales",
    con=engine,
    if_exists="replace",
    index=False
)

# ---------------------------------
# Success Message
# ---------------------------------

print("\nData Uploaded Successfully!")
print(f"Rows Uploaded: {len(df)}")

print("\nFinal SQL Columns:")

for column in df.columns:
    print(column)