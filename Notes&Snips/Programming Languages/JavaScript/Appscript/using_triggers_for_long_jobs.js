function mainJob(x) {
  
    let timeStart = new Date()
    console.log("Starting at ", timeStart)
    
    for (let i = x; i < 500000000; i++){ // NOTE THE i = x
      
      // MAIN JOB INSTRUCTIONS
      let j = i
      // ...
    
      // Check Time
      let timeCheck = new Date()
      if (timeCheck.getTime() - timeStart.getTime() > 30000) {
        console.log("Time limit reached, i = ", i)
        
        // Store iteration number
        PropertiesService
            .getScriptProperties()
            .setProperty('PROGRESS', i)
        
        console.log("stored value of i")
        
        // Create trigger to run in 10 seconds.
        ScriptApp.newTrigger("jobContinue")
            .timeBased()
            .after(10000)
            .create()
        
        console.log("Trigger created for 10 seconds from now")
        return 0
      }
    }
    
    // Reset progress counter
    PropertiesService
            .getScriptProperties()
            .setProperty('PROGRESS', 0)
    
    console.log("job complete")
  }
  
  function jobContinue() {
    
    console.log("Restarting job")
    
    previousTrigger = ScriptApp.getProjectTriggers()[0]
    ScriptApp.deleteTrigger(previousTrigger)
    console.log("Previous trigger deleted")
    
    triggersRemain = ScriptApp.getProjectTriggers()
    console.log("project triggers", triggersRemain)
    
    let progress = PropertiesService
                     .getScriptProperties()
                     .getProperty('PROGRESS')
    
    console.log("about to start main job again at i = ", progress)
    
    mainJob(progress)
    
  }
  
  function startJob() {
    mainJob(0)
  }