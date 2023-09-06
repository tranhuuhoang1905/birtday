const state = {
    gameId: null,
};

const getters = {
    gameId: state => state.gameId,
};

const actions = {
    saveGameId({ commit, getters }, gameId) {
        console.log("store gameId",gameId);
        commit('changeGameId', gameId);
        sessionStorage.setItem('gameId', gameId);
    },
    
};

const mutations = {
    changeGameId: (state, newGameId) => (state.gameId = newGameId),
};

export default {
    state,
    getters,
    actions,
    mutations,
};
