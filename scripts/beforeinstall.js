var resp = {
  result: 0,
  ssl: true,
  nodes: []
}

if (${settings.ded-storage:false}) {
  resp.nodes.push({
    nodeType: "storage",
    count: 1,
    flexibleCloudlets: ${settings.st_flexibleCloudlets:8},
    fixedCloudlets: ${settings.st_fixedCloudlets:1},
    nodeGroup: "storage",
    isRedeploySupport: false,
    validation: {
      minCount: 1,
      maxCount: 1
    }
  })
} else if (${settings.clustered-storage:false}) {
  resp.nodes.push({
    nodeType: "storage",
    count: 3,
    cluster: true,
    flexibleCloudlets: ${settings.st_flexibleCloudlets:8},
    fixedCloudlets: ${settings.st_fixedCloudlets:1},
    nodeGroup: "storage",
    restartDelay: 10,
    isRedeploySupport: false,
    validation: {
      minCount: 3,
      maxCount: 3
    }
  })
}

resp.nodes.push({
  nodeType: "mariadb-dockerized",
  flexibleCloudlets: ${settings.db_flexibleCloudlets:16},
  fixedCloudlets: ${settings.db_fixedCloudlets:1},
  count: 1,
  nodeGroup: "sqldb",
  skipNodeEmails: true,
  validation: {
    minCount: 1,
    maxCount: 1
    }
})

if (${settings.litespeed:false}) {
  resp.nodes.push({
    nodeType: "litespeedphp",
    count: 1,
    flexibleCloudlets: ${settings.cp_flexibleCloudlets:16},
    fixedCloudlets: ${settings.cp_fixedCloudlets:1},
    nodeGroup: "cp",
    env: {
      SERVER_WEBROOT: "/var/www/webroot/ROOT",
      REDIS_ENABLED: "true"
    }
  })
} else {
  resp.nodes.push({
    nodeType: "nginxphp",
    count: 1,
    flexibleCloudlets: ${settings.cp_flexibleCloudlets:16},                  
    fixedCloudlets: ${settings.cp_fixedCloudlets:1},
    nodeGroup: "cp",
    env: {
      SERVER_WEBROOT: "/var/www/webroot/ROOT",
      REDIS_ENABLED: "true"
    }
  })
}

return resp;