import { createRouter, createWebHistory } from 'vue-router';


import HomePage from '../components/home/HomePage.vue';
import Quest from '../components/home/Quest.vue';
import ThuVienToanTri from '../components/home/ThuVienToanTri.vue';

import Launch from '../components/sinhnhat11nam/landing-page/Launch.vue';

import SiteMap from '../components/sinhnhat11nam/landing-page/SiteMap.vue';


const ErrorPage = {
    template: '<div>403 - Access denied</div>'
};
export const routes = [
    { name: 'home', path: '/home', component: HomePage },
    { name: 'quest', path: '/quest', component: Quest },
    { name: 'thu-vien-toan-tri', path: '/thu-vien-toan-tri', component: ThuVienToanTri },
    {
        path: '/error',
        name: 'error',
        component: ErrorPage
    },
    { name: 'launch', path: '/launch', component: Launch },
    { name: 'sitemap', path: '/site-map', component: SiteMap },
];
const router = createRouter({
    history: createWebHistory(),
    routes
})
import { store } from '../store/store';
import oAuthLogin from '../store/modules/oAuthLogin';
router.beforeEach(async (to, from, next) => {
  if (!store.getters.infoUser) {
    console.log("check getaccesstoken");
    try {
      const response = await $.ajax({
        url: '/getaccesstoken',
        type: 'GET'
      });
      const token = response.access_token;
      const userResponse = await $.ajax({
        url: '/api/user',
        type: 'GET',
        headers: {
          'Authorization': 'Bearer ' + token
        }
      });

      const userResponseJSON = JSON.stringify(userResponse);

      // Đợi đến khi cả hai lệnh dispatch hoàn tất
      await Promise.all([
        store.dispatch('saveAccessToken', token),
        store.dispatch('saveInfoUser', userResponseJSON)
      ]);
      console.log("check JSON.parse(store.getters.infoUser",JSON.parse(store.getters.infoUser));
      // Tiếp tục xử lý sau khi dispatch hoàn tất
      handleInfoUser(JSON.parse(store.getters.infoUser));
    } catch (error) {
      console.log(error);
    }
  } else {
    handleInfoUser(JSON.parse(store.getters.infoUser));
  }

  function handleInfoUser(infoUser) {

    // const roles = to.meta.roles;
    console.log("check handleInfoUser infoUser ",infoUser);
    // if (roles && roles.length > 0) {
    //   const userRoles = infoUser.roles ?? "[]";
    //   const userRolesArray = JSON.parse(userRoles);
    //   const hasAccess = userRolesArray.some(role => roles.includes(role));
    //   if (!hasAccess) {
    //     next('/home');
    //     return;
    //   }
    // }

    next();
  }
});
export default router