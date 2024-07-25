policy_1_conditions = {
  "first_input_delay" = {
    name                = "first_input_delay_alert"
    query               = "SELECT average(firstInputDelay) AS 'FID (ms)' FROM PageViewTiming WHERE appName = 'relicstaurants/browser2'"
    threshold           = 200
    threshold_duration  = 300
  },
  "cumulative_layout_shift" = {
    name                = "cumulative_layout_shift_alert"
    query               = "SELECT average(cumulativeLayoutShift) AS 'CLS' FROM PageViewTiming WHERE appName = 'relicstaurants/browser2'"
    threshold           = 1000
    threshold_duration  = 300
  },
  "largest_contentful_paint" = {
    name                = "largest_contentful_paint_alert"
    query               = "SELECT average(largestContentfulPaint) AS 'LCP (ms)' FROM PageViewTiming WHERE appName = 'relicstaurants/browser2'"
    threshold           = 4.5
    threshold_duration  = 300
  }
}

policy_2_conditions = {
  "cpu_alert" = {
    name                = "cpu_alert"
    query               = "SELECT average(cpuPercent) AS '%CPU Used' FROM SystemSample"
    threshold           = 80
    threshold_duration  = 300
  },
  "memory_alert" = {
    name                = "memory_alert"
    query               = "SELECT average(memoryUsedBytes) * 100 / average(memoryTotalBytes) AS '%RAM Used' FROM SystemSample"
    threshold           = 90
    threshold_duration  = 300
  }
}
