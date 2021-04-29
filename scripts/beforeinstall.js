if ('${settings.clustered-storage}' == 'true') {
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
} else if ('${settings.ded-storage}' == 'true'){
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
  }  
});

if ('${settings.litespeed}'== 'true') {
  resp.nodes.push({
    nodeType: "litespeedphp",
    count: 1,
    flexibleCloudlets: ${settings.cp_flexibleCloudlets:16},
    fixedCloudlets: ${settings.cp_fixedCloudlets:1},
    nodeGroup: "cp"
  })
} else {
  resp.nodes.push({
    nodeType: "nginxphp",
    count: 1,
    flexibleCloudlets: ${settings.cp_flexibleCloudlets:16},                  
    fixedCloudlets: ${settings.cp_fixedCloudlets:1},
    nodeGroup: "cp"
  })
}

return resp;
