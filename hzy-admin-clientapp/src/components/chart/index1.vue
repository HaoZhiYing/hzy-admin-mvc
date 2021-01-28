<template>
  <div id="container1"></div>
</template>

<script>
import {Chart} from '@antv/g2';

export default {
  name: "index1",
  data() {
    return {
      data: [
        {year: '1951 年', sales: 38},
        {year: '1952 年', sales: 52},
        {year: '1956 年', sales: 61},
        {year: '1957 年', sales: 145},
        {year: '1958 年', sales: 48},
        {year: '1959 年', sales: 38},
        {year: '1960 年', sales: 38},
        {year: '1962 年', sales: 38},
      ],
      chart: null
    };
  },
  created() {
  },
  mounted() {
    this.chart = new Chart({
      container: 'container1',
      autoFit: true,
      height: 500,
    });

    this.chart.data(this.data);
    this.chart.scale('sales', {
      nice: true,
    });

    this.chart.tooltip({
      showMarkers: false
    });
    this.chart.interaction('active-region');

    this.chart.interval().position('year*sales');

    this.chart.render();
  }
}
</script>

<style scoped>

</style>