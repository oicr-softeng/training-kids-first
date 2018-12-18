var cOrigin = new RegExp(window.APP_CONFIG.PORTAL_URL +'$')
CrossStorageHub.init([{ origin: cOrigin, allow: ['get', 'set', 'del'] }]);
console.log(cOrigin);