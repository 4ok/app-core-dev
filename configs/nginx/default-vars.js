const MIRROR_DOMAIN_PROLOG = 'www';

module.exports = (config) => {
    const {
        projectName,
        domain,
        server,
    } = config;

    return {
        MAIN_DOMAIN: domain,
        MIRROR_DOMAIN: MIRROR_DOMAIN_PROLOG + '.' + domain,
        PROXY_HOST: server.host,
        PROXY_PORT: server.port,
        PROJECT_NAME: projectName,
    };
};
