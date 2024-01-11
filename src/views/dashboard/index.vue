<template>
  <div class="app-container">
    <el-card class="box-card">
      <!-- <div class="dashboard-text">name: {{ name }}</div> -->

      <el-table :data="tableData" size="small" empty-text="啥也没有" border>
        <el-table-column prop="name" label="姓名">
          <template slot-scope="scope">
            <el-button size="small" @click="copy(scope.row.name)">{{
              scope.row.name
            }}</el-button>
          </template>
        </el-table-column>
        <el-table-column prop="age" label="年龄"> </el-table-column>
      </el-table>
    </el-card>
  </div>
</template>

<script>
import axios from "axios";
import protoRoot from "@/proto/proto.js";
const requestproto = protoRoot.github.com.kzz45.discovery.pkg.authx.http.proto;
const rbacproto = protoRoot.github.com.kzz45.discovery.pkg.apis.rbac.v1;

export default {
  name: "Dashboard",
  computed: {
    // ...mapGetters(["name"]),
  },
  data() {
    return {
      tableData: [{ name: "xxx" }],
      loginForm: {
        username: "admin",
        password: "Uh4zIyIQqrDB0lrdYA2jaOtF1DBobqla",
      },
    };
  },
  mounted() {
    // let timestamp = new Date().getTime() / 1000;
    // console.log(timestamp);
    // localStorage.setItem("token", "======");
  },
  methods: {
    copy(row) {
      navigator.clipboard.writeText(row).then(() => {
        this.$message({
          type: "success",
          message: "复制成功",
        });
      });
    },
  },
};
</script>

<style lang="scss" scoped></style>
