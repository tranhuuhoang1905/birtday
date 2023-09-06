<template>
  <div class="navbar_home">
    <nav class="navbar navbar-expand-lg justify-content-between">
      <div class="d-flex">
        <!-- LOGO -->
        <div class="navbar-brand-box">
          <router-link to="/launch" class="logo logo-dark d-block text-center">
            <span class="logo-sm">
              <img src="../../../../assets/images/sinhnhat11nam/img_main/logo-white.png" alt="" height="35" />
            </span>
            <span class="logo-lg">
              <img src="../../../../assets/images/sinhnhat11nam/img_main/logo-white.png" alt="" height="35" />
            </span>
          </router-link>
        </div>
      </div>
      <div class="d-flex pe-0 pe-lg-3">
        <ul class="nav-items-link pr-4">
          <li>
            <a target="_blank" href="https://gosucorp.vn/">gosucorp</a>
          </li>
          <li>
            <a target="_blank" href="https://s20.gosu.vn/">S20</a>
          </li>
          <li>
            <a target="_blank" href="">bách nhật gosu</a>
          </li>
          <li>
            <a target="_blank" href="https://www.facebook.com/groups/gosu.s20">facebook</a>
          </li>
        </ul>
      </div>
    </nav>
  </div>
</template>

<script>
import { mapGetters, mapMutations, mapActions } from "vuex";
export default {
  data() {
    return {
      navigationDisabled: false,
    };
  },
  created() {
    const body = document.querySelector('body');
    if (body.getAttribute('data-sidebar') === 'dark') {
      body.setAttribute('data-sidebar', 'light');
    }
    
  },
  methods: {
    ...mapActions(["oLogout"]),
    // 
    logoutSubmit() {
      this.oLogout("");
      
    },
    reloadPage() {
      location.reload();
    },

  },
  computed: {
    
    UserForm() {
          let user = JSON.parse(this.$store.getters.infoUser);
          if(user){
            console.log("check user",JSON.parse(user.roles));
          }
          return {
              name: user ? user.name : ""
          }
      },
    checkNavigation() {
      // const loginResponse = JSON.parse(localStorage.getItem('loginResponse')) ?? {};
      // return this.$store.getters.getLoginResponse.authenticated || loginResponse.authenticated || false;
    },
    isGotoAdmin() {
      let user = JSON.parse(this.$store.getters.infoUser);
      let isAdmin = false;
      if(user){
        let arrayRoles= JSON.parse(user.roles);
        for (var i = 0; i < arrayRoles.length; i++) {
          console.log(arrayRoles[i]);
          if (arrayRoles[i] === "ROLE_ADMIN") {
            isAdmin = true;
          }
        }
      }
      return isAdmin;
    },
  },

  mounted() {
  },
};
</script>


<style>
.navbar_home{
  font-family: 'UVNLacLongQuan';
}

.navbar_home .nav-items-link{
  list-style: none;
  display: flex;
  margin-bottom: 0;
  text-transform: uppercase;
  font-size: 20px;
  
}

.navbar_home ul.nav-items-link li{
  /* padding: 0 20px; */
  color: #fdf3db;
  /* border-right: 2px solid #fdf3db; */
}


.navbar_home ul.nav-items-link li::after{
  content: "|";
  color: #fdf3db;
  margin: 0 20px;
}

.navbar_home ul.nav-items-link li:last-child::after{
  content: none;
}

.navbar_home ul.nav-items-link li a{
  color: #fdf3db;
  text-shadow: #FC0 1px 0 10px;
}
</style>


