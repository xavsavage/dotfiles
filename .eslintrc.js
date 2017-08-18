module.exports = {
    "env": {
        "browser": true,
        "es6": true,
        "node": true
    },
    "extends": "eslint:recommended",
    "rules": {
        "indent": [
            "error",
            4,
            { "SwitchCase": 1 }
        ],
        "no-console": [
            "warn"
        ],
        "linebreak-style": [
            "error",
            "unix"
        ],
        "block-scoped-var": "error",
        "no-eval": "error",
        "no-implied-eval": "error",
        "no-multi-spaces": "warn",
        "no-new": "error",
        "no-sync": [
            "warn",
            { "allowAtRootLevel": true }
        ],
        "handle-callback-err": "error",
        "semi": [
            "error",
            "always"
        ]
    }
};
