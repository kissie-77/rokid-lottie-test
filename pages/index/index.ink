<script def>
{
  "navigationBarTitleText": "Lottie 验证 · V6",
  "navigationStyle": "custom"
}
</script>

<script setup>
export default {
  data: {
    status: 'lottie-view 渲染中'
  }
};
</script>

<page>
  <view class="page-root">
    <view class="header">
      <text class="title">Lottie 验证 · V6</text>
    </view>
    <view class="stage">
      <lottie-view
        src="/assets/v6_green.json"
        auto-play="true"
        loop="true"
        width="480"
        height="352"
      ></lottie-view>
    </view>
    <view class="footer">
      <text class="status">{{status}}</text>
    </view>
  </view>
</page>

<style>
.page-root {
  width: 480px;
  height: 352px;
  background-color: #000000;
  display: flex;
  flex-direction: column;
  align-items: center;
}

.header {
  width: 100%;
  height: 28px;
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
}

.title {
  font-size: 14px;
  font-weight: 500;
  color: #40ff5e;
}

.stage {
  flex: 1 1 auto;
  min-height: 0;
  width: 100%;
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: center;
}

.footer {
  width: 100%;
  height: 24px;
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
}

.status {
  font-size: 11px;
  font-weight: 400;
  color: rgba(64, 255, 94, 0.48);
}
</style>
