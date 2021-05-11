/**
 * 程序常量
 */
const appConsts = {
    /**
     * token 键值
     */
    tokenKey: "Authorization_HZY_ADMIN",
    /**
     * 域名
     */
    domainName: process.env.NODE_ENV == "production" ? "" : "https://localhost:5601",

    /**
     * Guid Empty String
     */
    guidEmpty: '00000000-0000-0000-0000-000000000000',
};

export default appConsts;