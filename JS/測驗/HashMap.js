var HashMap = function () {
    let dataMap = {};
    return {
        put: function (key, value) {
            dataMap[key] = value;
        },
        keys: function () {
            array = Object.keys(object);
            return array;
        },
        contains: function (k) {
            return k in object;

        },
        get: function (k) {
            return dataMap[k];
        },
        clear: function () {
            dataMap = {};
        }
    };
};