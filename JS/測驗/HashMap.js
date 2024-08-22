var HashMap = function () {
    let obj = {};
    return {
        put: function (k, v) {
            obj[k] = v;
        },
        keys: function () {
            array = [];
            for (var ar in obj){
                array.push(ar);
            }
            return array;
        },
        contains: function (k) {
            for(let key in obj){
                if (k===key){
                    return true;
                }
            }            
            return false;
        },
        get: function (k) {
            return obj[k];
        },
        clear: function () {
            obj = {};
        }
    };
};