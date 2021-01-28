<template>
  <div id="container2"></div>
</template>

<script>
import {Chart} from '@antv/g2';

export default {
  name: "index2",
  data() {
    return {
      data: [
        {item: '事例一', count: 40, percent: 0.4},
        {item: '事例二', count: 21, percent: 0.21},
        {item: '事例三', count: 17, percent: 0.17},
        {item: '事例四', count: 13, percent: 0.13},
        {item: '事例五', count: 9, percent: 0.09},
      ],
      chart: null
    };
  },
  created() {
  },
  mounted() {
    this.chart = new Chart({
      container: 'container2',
      autoFit: true,
      height: 500,
    });

    this.chart.data(this.data);

    this.chart.coordinate('theta', {
      radius: 0.85
    });

    this.chart.scale('percent', {
      formatter: (val) => {
        val = val * 100 + '%';
        return val;
      },
    });
    this.chart.tooltip({
      showTitle: false,
      showMarkers: false,
    });
    this.chart.axis(false); // 关闭坐标轴
    const interval = this.chart
        .interval()
        .adjust('stack')
        .position('percent')
        .color('item')
        .label('percent', {
          offset: -40,
          style: {
            textAlign: 'center',
            shadowBlur: 2,
            shadowColor: 'rgba(0, 0, 0, .45)',
            fill: '#fff',
          },
        })
        .tooltip('item*percent', (item, percent) => {
          percent = percent * 100 + '%';
          return {
            name: item,
            value: percent,
          };
        })
        .style({
          lineWidth: 1,
          stroke: '#fff',
        });
    this.chart.interaction('element-single-selected');
    this.chart.render();

    // 默认选择
    interval.elements[0].setState('selected', true);
  }
}
</script>

<style scoped>

</style>