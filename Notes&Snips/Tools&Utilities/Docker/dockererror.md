System.InvalidOperationException:
Failed to deploy distro docker-desktop to C:\Users\Philistine\AppData\Local\Docker\wsl\distro: exit code: -1
 stdout: The interface is unknown.


 stderr: 
   at Docker.Core.WslShortLivedCommandResult.LogAndThrowIfUnexpectedExitCode(String prefix, ILogger log, Int32 expectedExitCode) in C:\workspaces\stable-2.3.x\src\github.com\docker\pinata\win\src\Docker.Core\WslCommand.cs:line 119
   at Docker.Engines.WSL2.WSL2Provisioning.<DeployDistroAsync>d__16.MoveNext() in C:\workspaces\stable-2.3.x\src\github.com\docker\pinata\win\src\Docker.Desktop\Engines\WSL2\WSL2Provisioning.cs:line 142
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Docker.Engines.WSL2.WSL2Provisioning.<ProvisionAsync>d__6.MoveNext() in C:\workspaces\stable-2.3.x\src\github.com\docker\pinata\win\src\Docker.Desktop\Engines\WSL2\WSL2Provisioning.cs:line 44
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Docker.Engines.WSL2.LinuxWSL2Engine.<DoStartAsync>d__23.MoveNext() in C:\workspaces\stable-2.3.x\src\github.com\docker\pinata\win\src\Docker.Desktop\Engines\WSL2\LinuxWSL2Engine.cs:line 91
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Docker.ApiServices.StateMachines.TaskExtensions.<WrapAsyncInCancellationException>d__0.MoveNext() in C:\workspaces\stable-2.3.x\src\github.com\docker\pinata\win\src\Docker.ApiServices\StateMachines\TaskExtensions.cs:line 29
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at Docker.ApiServices.StateMachines.StartTransition.<DoRunAsync>d__5.MoveNext() in C:\workspaces\stable-2.3.x\src\github.com\docker\pinata\win\src\Docker.ApiServices\StateMachines\StartTransition.cs:line 67
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at Docker.ApiServices.StateMachines.StartTransition.<DoRunAsync>d__5.MoveNext() in C:\workspaces\stable-2.3.x\src\github.com\docker\pinata\win\src\Docker.ApiServices\StateMachines\StartTransition.cs:line 92
