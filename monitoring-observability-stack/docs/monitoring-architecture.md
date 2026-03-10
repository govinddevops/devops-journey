# Monitoring Architecture
In this setup, we follow the Pull-based monitoring model:
1. **Target:** Any service/node exposing metrics.
2. **Prometheus:** Scrapes metrics from targets at specific intervals.
3. **Storage:** Metrics are stored in a Time Series Database (TSDB).
4. **Visualization:** Grafana queries Prometheus and displays data in dashboards.

