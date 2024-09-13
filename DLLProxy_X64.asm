format PE64 GUI 6.0 DLL
include 'win64wx.inc'

macro LoadApi api,handle,name,address
{
    mov rdx,name
    mov rcx,handle
    call api
    mov qword [address],rax
}

align 16
.code


align 16
LoadOrigExports:
    
    push rsi
    push rdi
    sub rsp,0x28
    
    lea rsi,qword[addr_DLLNAME]
    lea rdi,qword[addr_SYSPATH]

    
    mov r8,MAX_PATH
    mov rdx,rsi
    call [GetModuleFileName]
    
    mov rcx,rsi
    call [PathStripPath]
    
    mov rdx,MAX_PATH
    mov rcx,rdi
    call [GetSystemDirectory]
    
    mov r8,rsi
    mov rdx,rdi
    lea rcx,qword[addr_FULLNAME]
    call [PathCombine]
    
    mov rcx,rax
    call [LoadLibrary]
    
    mov rdi,rax
    mov rsi,[GetProcAddress]
    


 
        
        LoadApi rsi,  rdi,     api_CloseDriver                                     	,	addr_CloseDriver                                     
        LoadApi rsi,  rdi,     api_DefDriverProc                                   	,	addr_DefDriverProc                                   
        LoadApi rsi,  rdi,     api_DllCanUnloadNow                                 	,	addr_DllCanUnloadNow                                 
        LoadApi rsi,  rdi,     api_DllGetClassObject                               	,	addr_DllGetClassObject                               
        LoadApi rsi,  rdi,     api_DllRegisterServer                               	,	addr_DllRegisterServer                               
        LoadApi rsi,  rdi,     api_DllUnregisterServer                             	,	addr_DllUnregisterServer                             
        LoadApi rsi,  rdi,     api_DriverCallback                                  	,	addr_DriverCallback                                  
        LoadApi rsi,  rdi,     api_DrvClose                                        	,	addr_DrvClose                                        
        LoadApi rsi,  rdi,     api_DrvDefDriverProc                                	,	addr_DrvDefDriverProc                                
        LoadApi rsi,  rdi,     api_DrvGetModuleHandle                              	,	addr_DrvGetModuleHandle                              
        LoadApi rsi,  rdi,     api_DrvOpen                                         	,	addr_DrvOpen                                         
        LoadApi rsi,  rdi,     api_DrvOpenA                                        	,	addr_DrvOpenA                                        
        LoadApi rsi,  rdi,     api_DrvSendMessage                                  	,	addr_DrvSendMessage                                  
        LoadApi rsi,  rdi,     api_GetDriverFlags                                  	,	addr_GetDriverFlags                                  
        LoadApi rsi,  rdi,     api_GetDriverModuleHandle                           	,	addr_GetDriverModuleHandle                           
        LoadApi rsi,  rdi,     api_GetFileVersionInfoA                             	,	addr_GetFileVersionInfoA                             
        LoadApi rsi,  rdi,     api_GetFileVersionInfoExA                           	,	addr_GetFileVersionInfoExA                           
        LoadApi rsi,  rdi,     api_GetFileVersionInfoExW                           	,	addr_GetFileVersionInfoExW                           
        LoadApi rsi,  rdi,     api_GetFileVersionInfoSizeA                         	,	addr_GetFileVersionInfoSizeA                         
        LoadApi rsi,  rdi,     api_GetFileVersionInfoSizeExA                       	,	addr_GetFileVersionInfoSizeExA                       
        LoadApi rsi,  rdi,     api_GetFileVersionInfoSizeExW                       	,	addr_GetFileVersionInfoSizeExW                       
        LoadApi rsi,  rdi,     api_GetFileVersionInfoSizeW                         	,	addr_GetFileVersionInfoSizeW                         
        LoadApi rsi,  rdi,     api_GetFileVersionInfoW                             	,	addr_GetFileVersionInfoW                             
        LoadApi rsi,  rdi,     api_OpenDriver                                      	,	addr_OpenDriver                                      
        LoadApi rsi,  rdi,     api_OpenDriverA                                     	,	addr_OpenDriverA                                     
        LoadApi rsi,  rdi,     api_PlaySound                                       	,	addr_PlaySound                                       
        LoadApi rsi,  rdi,     api_PlaySoundA                                      	,	addr_PlaySoundA                                      
        LoadApi rsi,  rdi,     api_PlaySoundW                                      	,	addr_PlaySoundW                                      
        LoadApi rsi,  rdi,     api_SendDriverMessage                               	,	addr_SendDriverMessage                               
        LoadApi rsi,  rdi,     api_VerFindFileA                                    	,	addr_VerFindFileA                                    
        LoadApi rsi,  rdi,     api_VerFindFileW                                    	,	addr_VerFindFileW                                    
        LoadApi rsi,  rdi,     api_VerInstallFileA                                 	,	addr_VerInstallFileA                                 
        LoadApi rsi,  rdi,     api_VerInstallFileW                                 	,	addr_VerInstallFileW                                 
        LoadApi rsi,  rdi,     api_VerLanguageNameA                                	,	addr_VerLanguageNameA                                
        LoadApi rsi,  rdi,     api_VerLanguageNameW                                	,	addr_VerLanguageNameW                                
        LoadApi rsi,  rdi,     api_VerQueryValueA                                  	,	addr_VerQueryValueA                                  
        LoadApi rsi,  rdi,     api_VerQueryValueW                                  	,	addr_VerQueryValueW                                  
        LoadApi rsi,  rdi,     api_WinHttpAddRequestHeaders                        	,	addr_WinHttpAddRequestHeaders                        
        LoadApi rsi,  rdi,     api_WinHttpCheckPlatform                            	,	addr_WinHttpCheckPlatform                            
        LoadApi rsi,  rdi,     api_WinHttpCloseHandle                              	,	addr_WinHttpCloseHandle                              
        LoadApi rsi,  rdi,     api_WinHttpConnect                                  	,	addr_WinHttpConnect                                  
        LoadApi rsi,  rdi,     api_WinHttpCrackUrl                                 	,	addr_WinHttpCrackUrl                                 
        LoadApi rsi,  rdi,     api_WinHttpCreateProxyResolver                      	,	addr_WinHttpCreateProxyResolver                      
        LoadApi rsi,  rdi,     api_WinHttpCreateUrl                                	,	addr_WinHttpCreateUrl                                
        LoadApi rsi,  rdi,     api_WinHttpDetectAutoProxyConfigUrl                 	,	addr_WinHttpDetectAutoProxyConfigUrl                 
        LoadApi rsi,  rdi,     api_WinHttpFreeProxyResult                          	,	addr_WinHttpFreeProxyResult                          
        LoadApi rsi,  rdi,     api_WinHttpFreeProxyResultEx                        	,	addr_WinHttpFreeProxyResultEx                        
        LoadApi rsi,  rdi,     api_WinHttpFreeProxySettings                        	,	addr_WinHttpFreeProxySettings                        
        LoadApi rsi,  rdi,     api_WinHttpGetDefaultProxyConfiguration             	,	addr_WinHttpGetDefaultProxyConfiguration             
        LoadApi rsi,  rdi,     api_WinHttpGetIEProxyConfigForCurrentUser           	,	addr_WinHttpGetIEProxyConfigForCurrentUser           
        LoadApi rsi,  rdi,     api_WinHttpGetProxyForUrl                           	,	addr_WinHttpGetProxyForUrl                           
        LoadApi rsi,  rdi,     api_WinHttpGetProxyForUrlEx                         	,	addr_WinHttpGetProxyForUrlEx                         
        LoadApi rsi,  rdi,     api_WinHttpGetProxyForUrlEx2                        	,	addr_WinHttpGetProxyForUrlEx2                        
        LoadApi rsi,  rdi,     api_WinHttpGetProxyResult                           	,	addr_WinHttpGetProxyResult                           
        LoadApi rsi,  rdi,     api_WinHttpGetProxyResultEx                         	,	addr_WinHttpGetProxyResultEx                         
        LoadApi rsi,  rdi,     api_WinHttpGetProxySettingsVersion                  	,	addr_WinHttpGetProxySettingsVersion                  
        LoadApi rsi,  rdi,     api_WinHttpOpen                                     	,	addr_WinHttpOpen                                     
        LoadApi rsi,  rdi,     api_WinHttpOpenRequest                              	,	addr_WinHttpOpenRequest                              
        LoadApi rsi,  rdi,     api_WinHttpQueryAuthSchemes                         	,	addr_WinHttpQueryAuthSchemes                         
        LoadApi rsi,  rdi,     api_WinHttpQueryDataAvailable                       	,	addr_WinHttpQueryDataAvailable                       
        LoadApi rsi,  rdi,     api_WinHttpQueryHeaders                             	,	addr_WinHttpQueryHeaders                             
        LoadApi rsi,  rdi,     api_WinHttpQueryOption                              	,	addr_WinHttpQueryOption                              
        LoadApi rsi,  rdi,     api_WinHttpReadData                                 	,	addr_WinHttpReadData                                 
        LoadApi rsi,  rdi,     api_WinHttpReadProxySettings                        	,	addr_WinHttpReadProxySettings                        
        LoadApi rsi,  rdi,     api_WinHttpReceiveResponse                          	,	addr_WinHttpReceiveResponse                          
        LoadApi rsi,  rdi,     api_WinHttpResetAutoProxy                           	,	addr_WinHttpResetAutoProxy                           
        LoadApi rsi,  rdi,     api_WinHttpSendRequest                              	,	addr_WinHttpSendRequest                              
        LoadApi rsi,  rdi,     api_WinHttpSetCredentials                           	,	addr_WinHttpSetCredentials                           
        LoadApi rsi,  rdi,     api_WinHttpSetDefaultProxyConfiguration             	,	addr_WinHttpSetDefaultProxyConfiguration             
        LoadApi rsi,  rdi,     api_WinHttpSetOption                                	,	addr_WinHttpSetOption                                
        LoadApi rsi,  rdi,     api_WinHttpSetStatusCallback                        	,	addr_WinHttpSetStatusCallback                        
        LoadApi rsi,  rdi,     api_WinHttpSetTimeouts                              	,	addr_WinHttpSetTimeouts                              
        LoadApi rsi,  rdi,     api_WinHttpTimeFromSystemTime                       	,	addr_WinHttpTimeFromSystemTime                       
        LoadApi rsi,  rdi,     api_WinHttpTimeToSystemTime                         	,	addr_WinHttpTimeToSystemTime                         
        LoadApi rsi,  rdi,     api_WinHttpWebSocketClose                           	,	addr_WinHttpWebSocketClose                           
        LoadApi rsi,  rdi,     api_WinHttpWebSocketCompleteUpgrade                 	,	addr_WinHttpWebSocketCompleteUpgrade                 
        LoadApi rsi,  rdi,     api_WinHttpWebSocketQueryCloseStatus                	,	addr_WinHttpWebSocketQueryCloseStatus                
        LoadApi rsi,  rdi,     api_WinHttpWebSocketReceive                         	,	addr_WinHttpWebSocketReceive                         
        LoadApi rsi,  rdi,     api_WinHttpWebSocketSend                            	,	addr_WinHttpWebSocketSend                            
        LoadApi rsi,  rdi,     api_WinHttpWebSocketShutdown                        	,	addr_WinHttpWebSocketShutdown                        
        LoadApi rsi,  rdi,     api_WinHttpWriteData                                	,	addr_WinHttpWriteData                                
        LoadApi rsi,  rdi,     api_WinHttpWriteProxySettings                       	,	addr_WinHttpWriteProxySettings                       
        LoadApi rsi,  rdi,     api_auxGetDevCapsA                                  	,	addr_auxGetDevCapsA                                  
        LoadApi rsi,  rdi,     api_auxGetDevCapsW                                  	,	addr_auxGetDevCapsW                                  
        LoadApi rsi,  rdi,     api_auxGetNumDevs                                   	,	addr_auxGetNumDevs                                   
        LoadApi rsi,  rdi,     api_auxGetVolume                                    	,	addr_auxGetVolume                                    
        LoadApi rsi,  rdi,     api_auxOutMessage                                   	,	addr_auxOutMessage                                   
        LoadApi rsi,  rdi,     api_auxSetVolume                                    	,	addr_auxSetVolume                                    
        LoadApi rsi,  rdi,     api_joyConfigChanged                                	,	addr_joyConfigChanged                                
        LoadApi rsi,  rdi,     api_joyGetDevCapsA                                  	,	addr_joyGetDevCapsA                                  
        LoadApi rsi,  rdi,     api_joyGetDevCapsW                                  	,	addr_joyGetDevCapsW                                  
        LoadApi rsi,  rdi,     api_joyGetNumDevs                                   	,	addr_joyGetNumDevs                                   
        LoadApi rsi,  rdi,     api_joyGetPos                                       	,	addr_joyGetPos                                       
        LoadApi rsi,  rdi,     api_joyGetPosEx                                     	,	addr_joyGetPosEx                                     
        LoadApi rsi,  rdi,     api_joyGetThreshold                                 	,	addr_joyGetThreshold                                 
        LoadApi rsi,  rdi,     api_joyReleaseCapture                               	,	addr_joyReleaseCapture                               
        LoadApi rsi,  rdi,     api_joySetCapture                                   	,	addr_joySetCapture                                   
        LoadApi rsi,  rdi,     api_joySetThreshold                                 	,	addr_joySetThreshold                                 
        LoadApi rsi,  rdi,     api_mciDriverNotify                                 	,	addr_mciDriverNotify                                 
        LoadApi rsi,  rdi,     api_mciDriverYield                                  	,	addr_mciDriverYield                                  
        LoadApi rsi,  rdi,     api_mciExecute                                      	,	addr_mciExecute                                      
        LoadApi rsi,  rdi,     api_mciFreeCommandResource                          	,	addr_mciFreeCommandResource                          
        LoadApi rsi,  rdi,     api_mciGetCreatorTask                               	,	addr_mciGetCreatorTask                               
        LoadApi rsi,  rdi,     api_mciGetDeviceIDA                                 	,	addr_mciGetDeviceIDA                                 
        LoadApi rsi,  rdi,     api_mciGetDeviceIDFromElementIDA                    	,	addr_mciGetDeviceIDFromElementIDA                    
        LoadApi rsi,  rdi,     api_mciGetDeviceIDFromElementIDW                    	,	addr_mciGetDeviceIDFromElementIDW                    
        LoadApi rsi,  rdi,     api_mciGetDeviceIDW                                 	,	addr_mciGetDeviceIDW                                 
        LoadApi rsi,  rdi,     api_mciGetDriverData                                	,	addr_mciGetDriverData                                
        LoadApi rsi,  rdi,     api_mciGetErrorStringA                              	,	addr_mciGetErrorStringA                              
        LoadApi rsi,  rdi,     api_mciGetErrorStringW                              	,	addr_mciGetErrorStringW                              
        LoadApi rsi,  rdi,     api_mciGetYieldProc                                 	,	addr_mciGetYieldProc                                 
        LoadApi rsi,  rdi,     api_mciLoadCommandResource                          	,	addr_mciLoadCommandResource                          
        LoadApi rsi,  rdi,     api_mciSendCommandA                                 	,	addr_mciSendCommandA                                 
        LoadApi rsi,  rdi,     api_mciSendCommandW                                 	,	addr_mciSendCommandW                                 
        LoadApi rsi,  rdi,     api_mciSendStringA                                  	,	addr_mciSendStringA                                  
        LoadApi rsi,  rdi,     api_mciSendStringW                                  	,	addr_mciSendStringW                                  
        LoadApi rsi,  rdi,     api_mciSetDriverData                                	,	addr_mciSetDriverData                                
        LoadApi rsi,  rdi,     api_mciSetYieldProc                                 	,	addr_mciSetYieldProc                                 
        LoadApi rsi,  rdi,     api_midiConnect                                     	,	addr_midiConnect                                     
        LoadApi rsi,  rdi,     api_midiDisconnect                                  	,	addr_midiDisconnect                                  
        LoadApi rsi,  rdi,     api_midiInAddBuffer                                 	,	addr_midiInAddBuffer                                 
        LoadApi rsi,  rdi,     api_midiInClose                                     	,	addr_midiInClose                                     
        LoadApi rsi,  rdi,     api_midiInGetDevCapsA                               	,	addr_midiInGetDevCapsA                               
        LoadApi rsi,  rdi,     api_midiInGetDevCapsW                               	,	addr_midiInGetDevCapsW                               
        LoadApi rsi,  rdi,     api_midiInGetErrorTextA                             	,	addr_midiInGetErrorTextA                             
        LoadApi rsi,  rdi,     api_midiInGetErrorTextW                             	,	addr_midiInGetErrorTextW                             
        LoadApi rsi,  rdi,     api_midiInGetID                                     	,	addr_midiInGetID                                     
        LoadApi rsi,  rdi,     api_midiInGetNumDevs                                	,	addr_midiInGetNumDevs                                
        LoadApi rsi,  rdi,     api_midiInMessage                                   	,	addr_midiInMessage                                   
        LoadApi rsi,  rdi,     api_midiInOpen                                      	,	addr_midiInOpen                                      
        LoadApi rsi,  rdi,     api_midiInPrepareHeader                             	,	addr_midiInPrepareHeader                             
        LoadApi rsi,  rdi,     api_midiInReset                                     	,	addr_midiInReset                                     
        LoadApi rsi,  rdi,     api_midiInStart                                     	,	addr_midiInStart                                     
        LoadApi rsi,  rdi,     api_midiInStop                                      	,	addr_midiInStop                                      
        LoadApi rsi,  rdi,     api_midiInUnprepareHeader                           	,	addr_midiInUnprepareHeader                           
        LoadApi rsi,  rdi,     api_midiOutCacheDrumPatches                         	,	addr_midiOutCacheDrumPatches                         
        LoadApi rsi,  rdi,     api_midiOutCachePatches                             	,	addr_midiOutCachePatches                             
        LoadApi rsi,  rdi,     api_midiOutClose                                    	,	addr_midiOutClose                                    
        LoadApi rsi,  rdi,     api_midiOutGetDevCapsA                              	,	addr_midiOutGetDevCapsA                              
        LoadApi rsi,  rdi,     api_midiOutGetDevCapsW                              	,	addr_midiOutGetDevCapsW                              
        LoadApi rsi,  rdi,     api_midiOutGetErrorTextA                            	,	addr_midiOutGetErrorTextA                            
        LoadApi rsi,  rdi,     api_midiOutGetErrorTextW                            	,	addr_midiOutGetErrorTextW                            
        LoadApi rsi,  rdi,     api_midiOutGetID                                    	,	addr_midiOutGetID                                    
        LoadApi rsi,  rdi,     api_midiOutGetNumDevs                               	,	addr_midiOutGetNumDevs                               
        LoadApi rsi,  rdi,     api_midiOutGetVolume                                	,	addr_midiOutGetVolume                                
        LoadApi rsi,  rdi,     api_midiOutLongMsg                                  	,	addr_midiOutLongMsg                                  
        LoadApi rsi,  rdi,     api_midiOutMessage                                  	,	addr_midiOutMessage                                  
        LoadApi rsi,  rdi,     api_midiOutOpen                                     	,	addr_midiOutOpen                                     
        LoadApi rsi,  rdi,     api_midiOutPrepareHeader                            	,	addr_midiOutPrepareHeader                            
        LoadApi rsi,  rdi,     api_midiOutReset                                    	,	addr_midiOutReset                                    
        LoadApi rsi,  rdi,     api_midiOutSetVolume                                	,	addr_midiOutSetVolume                                
        LoadApi rsi,  rdi,     api_midiOutShortMsg                                 	,	addr_midiOutShortMsg                                 
        LoadApi rsi,  rdi,     api_midiOutUnprepareHeader                          	,	addr_midiOutUnprepareHeader                          
        LoadApi rsi,  rdi,     api_midiStreamClose                                 	,	addr_midiStreamClose                                 
        LoadApi rsi,  rdi,     api_midiStreamOpen                                  	,	addr_midiStreamOpen                                  
        LoadApi rsi,  rdi,     api_midiStreamOut                                   	,	addr_midiStreamOut                                   
        LoadApi rsi,  rdi,     api_midiStreamPause                                 	,	addr_midiStreamPause                                 
        LoadApi rsi,  rdi,     api_midiStreamPosition                              	,	addr_midiStreamPosition                              
        LoadApi rsi,  rdi,     api_midiStreamProperty                              	,	addr_midiStreamProperty                              
        LoadApi rsi,  rdi,     api_midiStreamRestart                               	,	addr_midiStreamRestart                               
        LoadApi rsi,  rdi,     api_midiStreamStop                                  	,	addr_midiStreamStop                                  
        LoadApi rsi,  rdi,     api_mixerClose                                      	,	addr_mixerClose                                      
        LoadApi rsi,  rdi,     api_mixerGetControlDetailsA                         	,	addr_mixerGetControlDetailsA                         
        LoadApi rsi,  rdi,     api_mixerGetControlDetailsW                         	,	addr_mixerGetControlDetailsW                         
        LoadApi rsi,  rdi,     api_mixerGetDevCapsA                                	,	addr_mixerGetDevCapsA                                
        LoadApi rsi,  rdi,     api_mixerGetDevCapsW                                	,	addr_mixerGetDevCapsW                                
        LoadApi rsi,  rdi,     api_mixerGetID                                      	,	addr_mixerGetID                                      
        LoadApi rsi,  rdi,     api_mixerGetLineControlsA                           	,	addr_mixerGetLineControlsA                           
        LoadApi rsi,  rdi,     api_mixerGetLineControlsW                           	,	addr_mixerGetLineControlsW                           
        LoadApi rsi,  rdi,     api_mixerGetLineInfoA                               	,	addr_mixerGetLineInfoA                               
        LoadApi rsi,  rdi,     api_mixerGetLineInfoW                               	,	addr_mixerGetLineInfoW                               
        LoadApi rsi,  rdi,     api_mixerGetNumDevs                                 	,	addr_mixerGetNumDevs                                 
        LoadApi rsi,  rdi,     api_mixerMessage                                    	,	addr_mixerMessage                                    
        LoadApi rsi,  rdi,     api_mixerOpen                                       	,	addr_mixerOpen                                       
        LoadApi rsi,  rdi,     api_mixerSetControlDetails                          	,	addr_mixerSetControlDetails                          
        LoadApi rsi,  rdi,     api_mmGetCurrentTask                                	,	addr_mmGetCurrentTask                                
        LoadApi rsi,  rdi,     api_mmTaskBlock                                     	,	addr_mmTaskBlock                                     
        LoadApi rsi,  rdi,     api_mmTaskCreate                                    	,	addr_mmTaskCreate                                    
        LoadApi rsi,  rdi,     api_mmTaskSignal                                    	,	addr_mmTaskSignal                                    
        LoadApi rsi,  rdi,     api_mmTaskYield                                     	,	addr_mmTaskYield                                     
        LoadApi rsi,  rdi,     api_mmioAdvance                                     	,	addr_mmioAdvance                                     
        LoadApi rsi,  rdi,     api_mmioAscend                                      	,	addr_mmioAscend                                      
        LoadApi rsi,  rdi,     api_mmioClose                                       	,	addr_mmioClose                                       
        LoadApi rsi,  rdi,     api_mmioCreateChunk                                 	,	addr_mmioCreateChunk                                 
        LoadApi rsi,  rdi,     api_mmioDescend                                     	,	addr_mmioDescend                                     
        LoadApi rsi,  rdi,     api_mmioFlush                                       	,	addr_mmioFlush                                       
        LoadApi rsi,  rdi,     api_mmioGetInfo                                     	,	addr_mmioGetInfo                                     
        LoadApi rsi,  rdi,     api_mmioInstallIOProc16                             	,	addr_mmioInstallIOProc16                             
        LoadApi rsi,  rdi,     api_mmioInstallIOProcA                              	,	addr_mmioInstallIOProcA                              
        LoadApi rsi,  rdi,     api_mmioInstallIOProcW                              	,	addr_mmioInstallIOProcW                              
        LoadApi rsi,  rdi,     api_mmioOpenA                                       	,	addr_mmioOpenA                                       
        LoadApi rsi,  rdi,     api_mmioOpenW                                       	,	addr_mmioOpenW                                       
        LoadApi rsi,  rdi,     api_mmioRead                                        	,	addr_mmioRead                                        
        LoadApi rsi,  rdi,     api_mmioRenameA                                     	,	addr_mmioRenameA                                     
        LoadApi rsi,  rdi,     api_mmioRenameW                                     	,	addr_mmioRenameW                                     
        LoadApi rsi,  rdi,     api_mmioSeek                                        	,	addr_mmioSeek                                        
        LoadApi rsi,  rdi,     api_mmioSendMessage                                 	,	addr_mmioSendMessage                                 
        LoadApi rsi,  rdi,     api_mmioSetBuffer                                   	,	addr_mmioSetBuffer                                   
        LoadApi rsi,  rdi,     api_mmioSetInfo                                     	,	addr_mmioSetInfo                                     
        LoadApi rsi,  rdi,     api_mmioStringToFOURCCA                             	,	addr_mmioStringToFOURCCA                             
        LoadApi rsi,  rdi,     api_mmioStringToFOURCCW                             	,	addr_mmioStringToFOURCCW                             
        LoadApi rsi,  rdi,     api_mmioWrite                                       	,	addr_mmioWrite                                       
        LoadApi rsi,  rdi,     api_mmsystemGetVersion                              	,	addr_mmsystemGetVersion                              
        LoadApi rsi,  rdi,     api_sndPlaySoundA                                   	,	addr_sndPlaySoundA                                   
        LoadApi rsi,  rdi,     api_sndPlaySoundW                                   	,	addr_sndPlaySoundW                                   
        LoadApi rsi,  rdi,     api_timeBeginPeriod                                 	,	addr_timeBeginPeriod                                 
        LoadApi rsi,  rdi,     api_timeEndPeriod                                   	,	addr_timeEndPeriod                                   
        LoadApi rsi,  rdi,     api_timeGetDevCaps                                  	,	addr_timeGetDevCaps                                  
        LoadApi rsi,  rdi,     api_timeGetSystemTime                               	,	addr_timeGetSystemTime                               
        LoadApi rsi,  rdi,     api_timeGetTime                                     	,	addr_timeGetTime                                     
        LoadApi rsi,  rdi,     api_timeKillEvent                                   	,	addr_timeKillEvent                                   
        LoadApi rsi,  rdi,     api_timeSetEvent                                    	,	addr_timeSetEvent                                    
        LoadApi rsi,  rdi,     api_waveInAddBuffer                                 	,	addr_waveInAddBuffer                                 
        LoadApi rsi,  rdi,     api_waveInClose                                     	,	addr_waveInClose                                     
        LoadApi rsi,  rdi,     api_waveInGetDevCapsA                               	,	addr_waveInGetDevCapsA                               
        LoadApi rsi,  rdi,     api_waveInGetDevCapsW                               	,	addr_waveInGetDevCapsW                               
        LoadApi rsi,  rdi,     api_waveInGetErrorTextA                             	,	addr_waveInGetErrorTextA                             
        LoadApi rsi,  rdi,     api_waveInGetErrorTextW                             	,	addr_waveInGetErrorTextW                             
        LoadApi rsi,  rdi,     api_waveInGetID                                     	,	addr_waveInGetID                                     
        LoadApi rsi,  rdi,     api_waveInGetNumDevs                                	,	addr_waveInGetNumDevs                                
        LoadApi rsi,  rdi,     api_waveInGetPosition                               	,	addr_waveInGetPosition                               
        LoadApi rsi,  rdi,     api_waveInMessage                                   	,	addr_waveInMessage                                   
        LoadApi rsi,  rdi,     api_waveInOpen                                      	,	addr_waveInOpen                                      
        LoadApi rsi,  rdi,     api_waveInPrepareHeader                             	,	addr_waveInPrepareHeader                             
        LoadApi rsi,  rdi,     api_waveInReset                                     	,	addr_waveInReset                                     
        LoadApi rsi,  rdi,     api_waveInStart                                     	,	addr_waveInStart                                     
        LoadApi rsi,  rdi,     api_waveInStop                                      	,	addr_waveInStop                                      
        LoadApi rsi,  rdi,     api_waveInUnprepareHeader                           	,	addr_waveInUnprepareHeader                           
        LoadApi rsi,  rdi,     api_waveOutBreakLoop                                	,	addr_waveOutBreakLoop                                
        LoadApi rsi,  rdi,     api_waveOutClose                                    	,	addr_waveOutClose                                    
        LoadApi rsi,  rdi,     api_waveOutGetDevCapsA                              	,	addr_waveOutGetDevCapsA                              
        LoadApi rsi,  rdi,     api_waveOutGetDevCapsW                              	,	addr_waveOutGetDevCapsW                              
        LoadApi rsi,  rdi,     api_waveOutGetErrorTextA                            	,	addr_waveOutGetErrorTextA                            
        LoadApi rsi,  rdi,     api_waveOutGetErrorTextW                            	,	addr_waveOutGetErrorTextW                            
        LoadApi rsi,  rdi,     api_waveOutGetID                                    	,	addr_waveOutGetID                                    
        LoadApi rsi,  rdi,     api_waveOutGetNumDevs                               	,	addr_waveOutGetNumDevs                               
        LoadApi rsi,  rdi,     api_waveOutGetPitch                                 	,	addr_waveOutGetPitch                                 
        LoadApi rsi,  rdi,     api_waveOutGetPlaybackRate                          	,	addr_waveOutGetPlaybackRate                          
        LoadApi rsi,  rdi,     api_waveOutGetPosition                              	,	addr_waveOutGetPosition                              
        LoadApi rsi,  rdi,     api_waveOutGetVolume                                	,	addr_waveOutGetVolume                                
        LoadApi rsi,  rdi,     api_waveOutMessage                                  	,	addr_waveOutMessage                                  
        LoadApi rsi,  rdi,     api_waveOutOpen                                     	,	addr_waveOutOpen                                     
        LoadApi rsi,  rdi,     api_waveOutPause                                    	,	addr_waveOutPause                                    
        LoadApi rsi,  rdi,     api_waveOutPrepareHeader                            	,	addr_waveOutPrepareHeader                            
        LoadApi rsi,  rdi,     api_waveOutReset                                    	,	addr_waveOutReset                                    
        LoadApi rsi,  rdi,     api_waveOutRestart                                  	,	addr_waveOutRestart                                  
        LoadApi rsi,  rdi,     api_waveOutSetPitch                                 	,	addr_waveOutSetPitch                                 
        LoadApi rsi,  rdi,     api_waveOutSetPlaybackRate                          	,	addr_waveOutSetPlaybackRate                          
        LoadApi rsi,  rdi,     api_waveOutSetVolume                                	,	addr_waveOutSetVolume                                
        LoadApi rsi,  rdi,     api_waveOutUnprepareHeader                          	,	addr_waveOutUnprepareHeader                          
        LoadApi rsi,  rdi,     api_waveOutWrite                                    	,	addr_waveOutWrite           
                             
    add rsp,0x28   
    pop rdi                                     
    pop rsi
    
    xor rax,rax
    ret
 



align 16
DllEntryPoint:
    sub rsp,0x20

        .if rdx   =   1     
        
           call LoadOrigExports
               
           mov rcx,dll_Maple
           call qword[LoadLibrary]     
                                           
        .endif                

    mov	rax,TRUE
    add rsp,0x28
    ret



align 16
jmp_CloseDriver:                                     	jmp	[addr_CloseDriver                                     ]	

align 16
jmp_DefDriverProc:                                   	jmp	[addr_DefDriverProc                                   ]	

align 16
jmp_DllCanUnloadNow:                                 	jmp	[addr_DllCanUnloadNow                                 ]	

align 16
jmp_DllGetClassObject:                               	jmp	[addr_DllGetClassObject                               ]	

align 16
jmp_DllRegisterServer:                               	jmp	[addr_DllRegisterServer                               ]	

align 16
jmp_DllUnregisterServer:                             	jmp	[addr_DllUnregisterServer                             ]	

align 16
jmp_DriverCallback:                                  	jmp	[addr_DriverCallback                                  ]	

align 16
jmp_DrvClose:                                        	jmp	[addr_DrvClose                                        ]	

align 16
jmp_DrvDefDriverProc:                                	jmp	[addr_DrvDefDriverProc                                ]	

align 16
jmp_DrvGetModuleHandle:                              	jmp	[addr_DrvGetModuleHandle                              ]	

align 16
jmp_DrvOpen:                                         	jmp	[addr_DrvOpen                                         ]	

align 16
jmp_DrvOpenA:                                        	jmp	[addr_DrvOpenA                                        ]	

align 16
jmp_DrvSendMessage:                                  	jmp	[addr_DrvSendMessage                                  ]	

align 16
jmp_GetDriverFlags:                                  	jmp	[addr_GetDriverFlags                                  ]	

align 16
jmp_GetDriverModuleHandle:                           	jmp	[addr_GetDriverModuleHandle                           ]	

align 16
jmp_GetFileVersionInfoA:                             	jmp	[addr_GetFileVersionInfoA                             ]	

align 16
jmp_GetFileVersionInfoExA:                           	jmp	[addr_GetFileVersionInfoExA                           ]	

align 16
jmp_GetFileVersionInfoExW:                           	jmp	[addr_GetFileVersionInfoExW                           ]	

align 16
jmp_GetFileVersionInfoSizeA:                         	jmp	[addr_GetFileVersionInfoSizeA                         ]	

align 16
jmp_GetFileVersionInfoSizeExA:                       	jmp	[addr_GetFileVersionInfoSizeExA                       ]	

align 16
jmp_GetFileVersionInfoSizeExW:                       	jmp	[addr_GetFileVersionInfoSizeExW                       ]	

align 16
jmp_GetFileVersionInfoSizeW:                         	jmp	[addr_GetFileVersionInfoSizeW                         ]	

align 16
jmp_GetFileVersionInfoW:                             	jmp	[addr_GetFileVersionInfoW                             ]	

align 16
jmp_OpenDriver:                                      	jmp	[addr_OpenDriver                                      ]	

align 16
jmp_OpenDriverA:                                     	jmp	[addr_OpenDriverA                                     ]	

align 16
jmp_PlaySound:                                       	jmp	[addr_PlaySound                                       ]	

align 16
jmp_PlaySoundA:                                      	jmp	[addr_PlaySoundA                                      ]	

align 16
jmp_PlaySoundW:                                      	jmp	[addr_PlaySoundW                                      ]	

align 16
jmp_SendDriverMessage:                               	jmp	[addr_SendDriverMessage                               ]	

align 16
jmp_VerFindFileA:                                    	jmp	[addr_VerFindFileA                                    ]	

align 16
jmp_VerFindFileW:                                    	jmp	[addr_VerFindFileW                                    ]	

align 16
jmp_VerInstallFileA:                                 	jmp	[addr_VerInstallFileA                                 ]	

align 16
jmp_VerInstallFileW:                                 	jmp	[addr_VerInstallFileW                                 ]	

align 16
jmp_VerLanguageNameA:                                	jmp	[addr_VerLanguageNameA                                ]	

align 16
jmp_VerLanguageNameW:                                	jmp	[addr_VerLanguageNameW                                ]	

align 16
jmp_VerQueryValueA:                                  	jmp	[addr_VerQueryValueA                                  ]	

align 16
jmp_VerQueryValueW:                                  	jmp	[addr_VerQueryValueW                                  ]	

align 16
jmp_WinHttpAddRequestHeaders:                        	jmp	[addr_WinHttpAddRequestHeaders                        ]	

align 16
jmp_WinHttpCheckPlatform:                            	jmp	[addr_WinHttpCheckPlatform                            ]	

align 16
jmp_WinHttpCloseHandle:                              	jmp	[addr_WinHttpCloseHandle                              ]	

align 16
jmp_WinHttpConnect:                                  	jmp	[addr_WinHttpConnect                                  ]	

align 16
jmp_WinHttpCrackUrl:                                 	jmp	[addr_WinHttpCrackUrl                                 ]	

align 16
jmp_WinHttpCreateProxyResolver:                      	jmp	[addr_WinHttpCreateProxyResolver                      ]	

align 16
jmp_WinHttpCreateUrl:                                	jmp	[addr_WinHttpCreateUrl                                ]	

align 16
jmp_WinHttpDetectAutoProxyConfigUrl:                 	jmp	[addr_WinHttpDetectAutoProxyConfigUrl                 ]	

align 16
jmp_WinHttpFreeProxyResult:                          	jmp	[addr_WinHttpFreeProxyResult                          ]	

align 16
jmp_WinHttpFreeProxyResultEx:                        	jmp	[addr_WinHttpFreeProxyResultEx                        ]	

align 16
jmp_WinHttpFreeProxySettings:                        	jmp	[addr_WinHttpFreeProxySettings                        ]	

align 16
jmp_WinHttpGetDefaultProxyConfiguration:             	jmp	[addr_WinHttpGetDefaultProxyConfiguration             ]	

align 16
jmp_WinHttpGetIEProxyConfigForCurrentUser:           	jmp	[addr_WinHttpGetIEProxyConfigForCurrentUser           ]	

align 16
jmp_WinHttpGetProxyForUrl:                           	jmp	[addr_WinHttpGetProxyForUrl                           ]	

align 16
jmp_WinHttpGetProxyForUrlEx:                         	jmp	[addr_WinHttpGetProxyForUrlEx                         ]	

align 16
jmp_WinHttpGetProxyForUrlEx2:                        	jmp	[addr_WinHttpGetProxyForUrlEx2                        ]	

align 16
jmp_WinHttpGetProxyResult:                           	jmp	[addr_WinHttpGetProxyResult                           ]	

align 16
jmp_WinHttpGetProxyResultEx:                         	jmp	[addr_WinHttpGetProxyResultEx                         ]	

align 16
jmp_WinHttpGetProxySettingsVersion:                  	jmp	[addr_WinHttpGetProxySettingsVersion                  ]	

align 16
jmp_WinHttpOpen:                                     	jmp	[addr_WinHttpOpen                                     ]	

align 16
jmp_WinHttpOpenRequest:                              	jmp	[addr_WinHttpOpenRequest                              ]	

align 16
jmp_WinHttpQueryAuthSchemes:                         	jmp	[addr_WinHttpQueryAuthSchemes                         ]	

align 16
jmp_WinHttpQueryDataAvailable:                       	jmp	[addr_WinHttpQueryDataAvailable                       ]	

align 16
jmp_WinHttpQueryHeaders:                             	jmp	[addr_WinHttpQueryHeaders                             ]	

align 16
jmp_WinHttpQueryOption:                              	jmp	[addr_WinHttpQueryOption                              ]	

align 16
jmp_WinHttpReadData:                                 	jmp	[addr_WinHttpReadData                                 ]	

align 16
jmp_WinHttpReadProxySettings:                        	jmp	[addr_WinHttpReadProxySettings                        ]	

align 16
jmp_WinHttpReceiveResponse:                          	jmp	[addr_WinHttpReceiveResponse                          ]	

align 16
jmp_WinHttpResetAutoProxy:                           	jmp	[addr_WinHttpResetAutoProxy                           ]	

align 16
jmp_WinHttpSendRequest:                              	jmp	[addr_WinHttpSendRequest                              ]	

align 16
jmp_WinHttpSetCredentials:                           	jmp	[addr_WinHttpSetCredentials                           ]	

align 16
jmp_WinHttpSetDefaultProxyConfiguration:             	jmp	[addr_WinHttpSetDefaultProxyConfiguration             ]	

align 16
jmp_WinHttpSetOption:                                	jmp	[addr_WinHttpSetOption                                ]	

align 16
jmp_WinHttpSetStatusCallback:                        	jmp	[addr_WinHttpSetStatusCallback                        ]	

align 16
jmp_WinHttpSetTimeouts:                              	jmp	[addr_WinHttpSetTimeouts                              ]	

align 16
jmp_WinHttpTimeFromSystemTime:                       	jmp	[addr_WinHttpTimeFromSystemTime                       ]	

align 16
jmp_WinHttpTimeToSystemTime:                         	jmp	[addr_WinHttpTimeToSystemTime                         ]	

align 16
jmp_WinHttpWebSocketClose:                           	jmp	[addr_WinHttpWebSocketClose                           ]	

align 16
jmp_WinHttpWebSocketCompleteUpgrade:                 	jmp	[addr_WinHttpWebSocketCompleteUpgrade                 ]	

align 16
jmp_WinHttpWebSocketQueryCloseStatus:                	jmp	[addr_WinHttpWebSocketQueryCloseStatus                ]	

align 16
jmp_WinHttpWebSocketReceive:                         	jmp	[addr_WinHttpWebSocketReceive                         ]	

align 16
jmp_WinHttpWebSocketSend:                            	jmp	[addr_WinHttpWebSocketSend                            ]	

align 16
jmp_WinHttpWebSocketShutdown:                        	jmp	[addr_WinHttpWebSocketShutdown                        ]	

align 16
jmp_WinHttpWriteData:                                	jmp	[addr_WinHttpWriteData                                ]	

align 16
jmp_WinHttpWriteProxySettings:                       	jmp	[addr_WinHttpWriteProxySettings                       ]	

align 16
jmp_auxGetDevCapsA:                                  	jmp	[addr_auxGetDevCapsA                                  ]	

align 16
jmp_auxGetDevCapsW:                                  	jmp	[addr_auxGetDevCapsW                                  ]	

align 16
jmp_auxGetNumDevs:                                   	jmp	[addr_auxGetNumDevs                                   ]	

align 16
jmp_auxGetVolume:                                    	jmp	[addr_auxGetVolume                                    ]	

align 16
jmp_auxOutMessage:                                   	jmp	[addr_auxOutMessage                                   ]	

align 16
jmp_auxSetVolume:                                    	jmp	[addr_auxSetVolume                                    ]	

align 16
jmp_joyConfigChanged:                                	jmp	[addr_joyConfigChanged                                ]	

align 16
jmp_joyGetDevCapsA:                                  	jmp	[addr_joyGetDevCapsA                                  ]	

align 16
jmp_joyGetDevCapsW:                                  	jmp	[addr_joyGetDevCapsW                                  ]	

align 16
jmp_joyGetNumDevs:                                   	jmp	[addr_joyGetNumDevs                                   ]	

align 16
jmp_joyGetPos:                                       	jmp	[addr_joyGetPos                                       ]	

align 16
jmp_joyGetPosEx:                                     	jmp	[addr_joyGetPosEx                                     ]	

align 16
jmp_joyGetThreshold:                                 	jmp	[addr_joyGetThreshold                                 ]	

align 16
jmp_joyReleaseCapture:                               	jmp	[addr_joyReleaseCapture                               ]	

align 16
jmp_joySetCapture:                                   	jmp	[addr_joySetCapture                                   ]	

align 16
jmp_joySetThreshold:                                 	jmp	[addr_joySetThreshold                                 ]	

align 16
jmp_mciDriverNotify:                                 	jmp	[addr_mciDriverNotify                                 ]	

align 16
jmp_mciDriverYield:                                  	jmp	[addr_mciDriverYield                                  ]	

align 16
jmp_mciExecute:                                      	jmp	[addr_mciExecute                                      ]	

align 16
jmp_mciFreeCommandResource:                          	jmp	[addr_mciFreeCommandResource                          ]	

align 16
jmp_mciGetCreatorTask:                               	jmp	[addr_mciGetCreatorTask                               ]	

align 16
jmp_mciGetDeviceIDA:                                 	jmp	[addr_mciGetDeviceIDA                                 ]	

align 16
jmp_mciGetDeviceIDFromElementIDA:                    	jmp	[addr_mciGetDeviceIDFromElementIDA                    ]	

align 16
jmp_mciGetDeviceIDFromElementIDW:                    	jmp	[addr_mciGetDeviceIDFromElementIDW                    ]	

align 16
jmp_mciGetDeviceIDW:                                 	jmp	[addr_mciGetDeviceIDW                                 ]	

align 16
jmp_mciGetDriverData:                                	jmp	[addr_mciGetDriverData                                ]	

align 16
jmp_mciGetErrorStringA:                              	jmp	[addr_mciGetErrorStringA                              ]	

align 16
jmp_mciGetErrorStringW:                              	jmp	[addr_mciGetErrorStringW                              ]	

align 16
jmp_mciGetYieldProc:                                 	jmp	[addr_mciGetYieldProc                                 ]	

align 16
jmp_mciLoadCommandResource:                          	jmp	[addr_mciLoadCommandResource                          ]	

align 16
jmp_mciSendCommandA:                                 	jmp	[addr_mciSendCommandA                                 ]	

align 16
jmp_mciSendCommandW:                                 	jmp	[addr_mciSendCommandW                                 ]	

align 16
jmp_mciSendStringA:                                  	jmp	[addr_mciSendStringA                                  ]	

align 16
jmp_mciSendStringW:                                  	jmp	[addr_mciSendStringW                                  ]	

align 16
jmp_mciSetDriverData:                                	jmp	[addr_mciSetDriverData                                ]	

align 16
jmp_mciSetYieldProc:                                 	jmp	[addr_mciSetYieldProc                                 ]	

align 16
jmp_midiConnect:                                     	jmp	[addr_midiConnect                                     ]	

align 16
jmp_midiDisconnect:                                  	jmp	[addr_midiDisconnect                                  ]	

align 16
jmp_midiInAddBuffer:                                 	jmp	[addr_midiInAddBuffer                                 ]	

align 16
jmp_midiInClose:                                     	jmp	[addr_midiInClose                                     ]	

align 16
jmp_midiInGetDevCapsA:                               	jmp	[addr_midiInGetDevCapsA                               ]	

align 16
jmp_midiInGetDevCapsW:                               	jmp	[addr_midiInGetDevCapsW                               ]	

align 16
jmp_midiInGetErrorTextA:                             	jmp	[addr_midiInGetErrorTextA                             ]	

align 16
jmp_midiInGetErrorTextW:                             	jmp	[addr_midiInGetErrorTextW                             ]	

align 16
jmp_midiInGetID:                                     	jmp	[addr_midiInGetID                                     ]	

align 16
jmp_midiInGetNumDevs:                                	jmp	[addr_midiInGetNumDevs                                ]	

align 16
jmp_midiInMessage:                                   	jmp	[addr_midiInMessage                                   ]	

align 16
jmp_midiInOpen:                                      	jmp	[addr_midiInOpen                                      ]	

align 16
jmp_midiInPrepareHeader:                             	jmp	[addr_midiInPrepareHeader                             ]	

align 16
jmp_midiInReset:                                     	jmp	[addr_midiInReset                                     ]	

align 16
jmp_midiInStart:                                     	jmp	[addr_midiInStart                                     ]	

align 16
jmp_midiInStop:                                      	jmp	[addr_midiInStop                                      ]	

align 16
jmp_midiInUnprepareHeader:                           	jmp	[addr_midiInUnprepareHeader                           ]	

align 16
jmp_midiOutCacheDrumPatches:                         	jmp	[addr_midiOutCacheDrumPatches                         ]	

align 16
jmp_midiOutCachePatches:                             	jmp	[addr_midiOutCachePatches                             ]	

align 16
jmp_midiOutClose:                                    	jmp	[addr_midiOutClose                                    ]	

align 16
jmp_midiOutGetDevCapsA:                              	jmp	[addr_midiOutGetDevCapsA                              ]	

align 16
jmp_midiOutGetDevCapsW:                              	jmp	[addr_midiOutGetDevCapsW                              ]	

align 16
jmp_midiOutGetErrorTextA:                            	jmp	[addr_midiOutGetErrorTextA                            ]	

align 16
jmp_midiOutGetErrorTextW:                            	jmp	[addr_midiOutGetErrorTextW                            ]	

align 16
jmp_midiOutGetID:                                    	jmp	[addr_midiOutGetID                                    ]	

align 16
jmp_midiOutGetNumDevs:                               	jmp	[addr_midiOutGetNumDevs                               ]	

align 16
jmp_midiOutGetVolume:                                	jmp	[addr_midiOutGetVolume                                ]	

align 16
jmp_midiOutLongMsg:                                  	jmp	[addr_midiOutLongMsg                                  ]	

align 16
jmp_midiOutMessage:                                  	jmp	[addr_midiOutMessage                                  ]	

align 16
jmp_midiOutOpen:                                     	jmp	[addr_midiOutOpen                                     ]	

align 16
jmp_midiOutPrepareHeader:                            	jmp	[addr_midiOutPrepareHeader                            ]	

align 16
jmp_midiOutReset:                                    	jmp	[addr_midiOutReset                                    ]	

align 16
jmp_midiOutSetVolume:                                	jmp	[addr_midiOutSetVolume                                ]	

align 16
jmp_midiOutShortMsg:                                 	jmp	[addr_midiOutShortMsg                                 ]	

align 16
jmp_midiOutUnprepareHeader:                          	jmp	[addr_midiOutUnprepareHeader                          ]	

align 16
jmp_midiStreamClose:                                 	jmp	[addr_midiStreamClose                                 ]	

align 16
jmp_midiStreamOpen:                                  	jmp	[addr_midiStreamOpen                                  ]	

align 16
jmp_midiStreamOut:                                   	jmp	[addr_midiStreamOut                                   ]	

align 16
jmp_midiStreamPause:                                 	jmp	[addr_midiStreamPause                                 ]	

align 16
jmp_midiStreamPosition:                              	jmp	[addr_midiStreamPosition                              ]	

align 16
jmp_midiStreamProperty:                              	jmp	[addr_midiStreamProperty                              ]	

align 16
jmp_midiStreamRestart:                               	jmp	[addr_midiStreamRestart                               ]	

align 16
jmp_midiStreamStop:                                  	jmp	[addr_midiStreamStop                                  ]	

align 16
jmp_mixerClose:                                      	jmp	[addr_mixerClose                                      ]	

align 16
jmp_mixerGetControlDetailsA:                         	jmp	[addr_mixerGetControlDetailsA                         ]	

align 16
jmp_mixerGetControlDetailsW:                         	jmp	[addr_mixerGetControlDetailsW                         ]	

align 16
jmp_mixerGetDevCapsA:                                	jmp	[addr_mixerGetDevCapsA                                ]	

align 16
jmp_mixerGetDevCapsW:                                	jmp	[addr_mixerGetDevCapsW                                ]	

align 16
jmp_mixerGetID:                                      	jmp	[addr_mixerGetID                                      ]	

align 16
jmp_mixerGetLineControlsA:                           	jmp	[addr_mixerGetLineControlsA                           ]	

align 16
jmp_mixerGetLineControlsW:                           	jmp	[addr_mixerGetLineControlsW                           ]	

align 16
jmp_mixerGetLineInfoA:                               	jmp	[addr_mixerGetLineInfoA                               ]	

align 16
jmp_mixerGetLineInfoW:                               	jmp	[addr_mixerGetLineInfoW                               ]	

align 16
jmp_mixerGetNumDevs:                                 	jmp	[addr_mixerGetNumDevs                                 ]	

align 16
jmp_mixerMessage:                                    	jmp	[addr_mixerMessage                                    ]	

align 16
jmp_mixerOpen:                                       	jmp	[addr_mixerOpen                                       ]	

align 16
jmp_mixerSetControlDetails:                          	jmp	[addr_mixerSetControlDetails                          ]	

align 16
jmp_mmGetCurrentTask:                                	jmp	[addr_mmGetCurrentTask                                ]	

align 16
jmp_mmTaskBlock:                                     	jmp	[addr_mmTaskBlock                                     ]	

align 16
jmp_mmTaskCreate:                                    	jmp	[addr_mmTaskCreate                                    ]	

align 16
jmp_mmTaskSignal:                                    	jmp	[addr_mmTaskSignal                                    ]	

align 16
jmp_mmTaskYield:                                     	jmp	[addr_mmTaskYield                                     ]	

align 16
jmp_mmioAdvance:                                     	jmp	[addr_mmioAdvance                                     ]	

align 16
jmp_mmioAscend:                                      	jmp	[addr_mmioAscend                                      ]	

align 16
jmp_mmioClose:                                       	jmp	[addr_mmioClose                                       ]	

align 16
jmp_mmioCreateChunk:                                 	jmp	[addr_mmioCreateChunk                                 ]	

align 16
jmp_mmioDescend:                                     	jmp	[addr_mmioDescend                                     ]	

align 16
jmp_mmioFlush:                                       	jmp	[addr_mmioFlush                                       ]	

align 16
jmp_mmioGetInfo:                                     	jmp	[addr_mmioGetInfo                                     ]	

align 16
jmp_mmioInstallIOProc16:                             	jmp	[addr_mmioInstallIOProc16                             ]	

align 16
jmp_mmioInstallIOProcA:                              	jmp	[addr_mmioInstallIOProcA                              ]	

align 16
jmp_mmioInstallIOProcW:                              	jmp	[addr_mmioInstallIOProcW                              ]	

align 16
jmp_mmioOpenA:                                       	jmp	[addr_mmioOpenA                                       ]	

align 16
jmp_mmioOpenW:                                       	jmp	[addr_mmioOpenW                                       ]	

align 16
jmp_mmioRead:                                        	jmp	[addr_mmioRead                                        ]	

align 16
jmp_mmioRenameA:                                     	jmp	[addr_mmioRenameA                                     ]	

align 16
jmp_mmioRenameW:                                     	jmp	[addr_mmioRenameW                                     ]	

align 16
jmp_mmioSeek:                                        	jmp	[addr_mmioSeek                                        ]	

align 16
jmp_mmioSendMessage:                                 	jmp	[addr_mmioSendMessage                                 ]	

align 16
jmp_mmioSetBuffer:                                   	jmp	[addr_mmioSetBuffer                                   ]	

align 16
jmp_mmioSetInfo:                                     	jmp	[addr_mmioSetInfo                                     ]	

align 16
jmp_mmioStringToFOURCCA:                             	jmp	[addr_mmioStringToFOURCCA                             ]	

align 16
jmp_mmioStringToFOURCCW:                             	jmp	[addr_mmioStringToFOURCCW                             ]	

align 16
jmp_mmioWrite:                                       	jmp	[addr_mmioWrite                                       ]	

align 16
jmp_mmsystemGetVersion:                              	jmp	[addr_mmsystemGetVersion                              ]	

align 16
jmp_sndPlaySoundA:                                   	jmp	[addr_sndPlaySoundA                                   ]	

align 16
jmp_sndPlaySoundW:                                   	jmp	[addr_sndPlaySoundW                                   ]	

align 16
jmp_timeBeginPeriod:                                 	jmp	[addr_timeBeginPeriod                                 ]	

align 16
jmp_timeEndPeriod:                                   	jmp	[addr_timeEndPeriod                                   ]	

align 16
jmp_timeGetDevCaps:                                  	jmp	[addr_timeGetDevCaps                                  ]	

align 16
jmp_timeGetSystemTime:                               	jmp	[addr_timeGetSystemTime                               ]	

align 16
jmp_timeGetTime:                                     	jmp	[addr_timeGetTime                                     ]	

align 16
jmp_timeKillEvent:                                   	jmp	[addr_timeKillEvent                                   ]	

align 16
jmp_timeSetEvent:                                    	jmp	[addr_timeSetEvent                                    ]	

align 16
jmp_waveInAddBuffer:                                 	jmp	[addr_waveInAddBuffer                                 ]	

align 16
jmp_waveInClose:                                     	jmp	[addr_waveInClose                                     ]	

align 16
jmp_waveInGetDevCapsA:                               	jmp	[addr_waveInGetDevCapsA                               ]	

align 16
jmp_waveInGetDevCapsW:                               	jmp	[addr_waveInGetDevCapsW                               ]	

align 16
jmp_waveInGetErrorTextA:                             	jmp	[addr_waveInGetErrorTextA                             ]	

align 16
jmp_waveInGetErrorTextW:                             	jmp	[addr_waveInGetErrorTextW                             ]	

align 16
jmp_waveInGetID:                                     	jmp	[addr_waveInGetID                                     ]	

align 16
jmp_waveInGetNumDevs:                                	jmp	[addr_waveInGetNumDevs                                ]	

align 16
jmp_waveInGetPosition:                               	jmp	[addr_waveInGetPosition                               ]	

align 16
jmp_waveInMessage:                                   	jmp	[addr_waveInMessage                                   ]	

align 16
jmp_waveInOpen:                                      	jmp	[addr_waveInOpen                                      ]	

align 16
jmp_waveInPrepareHeader:                             	jmp	[addr_waveInPrepareHeader                             ]	

align 16
jmp_waveInReset:                                     	jmp	[addr_waveInReset                                     ]	

align 16
jmp_waveInStart:                                     	jmp	[addr_waveInStart                                     ]	

align 16
jmp_waveInStop:                                      	jmp	[addr_waveInStop                                      ]	

align 16
jmp_waveInUnprepareHeader:                           	jmp	[addr_waveInUnprepareHeader                           ]	

align 16
jmp_waveOutBreakLoop:                                	jmp	[addr_waveOutBreakLoop                                ]	

align 16
jmp_waveOutClose:                                    	jmp	[addr_waveOutClose                                    ]	

align 16
jmp_waveOutGetDevCapsA:                              	jmp	[addr_waveOutGetDevCapsA                              ]	

align 16
jmp_waveOutGetDevCapsW:                              	jmp	[addr_waveOutGetDevCapsW                              ]	

align 16
jmp_waveOutGetErrorTextA:                            	jmp	[addr_waveOutGetErrorTextA                            ]	

align 16
jmp_waveOutGetErrorTextW:                            	jmp	[addr_waveOutGetErrorTextW                            ]	

align 16
jmp_waveOutGetID:                                    	jmp	[addr_waveOutGetID                                    ]	

align 16
jmp_waveOutGetNumDevs:                               	jmp	[addr_waveOutGetNumDevs                               ]	

align 16
jmp_waveOutGetPitch:                                 	jmp	[addr_waveOutGetPitch                                 ]	

align 16
jmp_waveOutGetPlaybackRate:                          	jmp	[addr_waveOutGetPlaybackRate                          ]	

align 16
jmp_waveOutGetPosition:                              	jmp	[addr_waveOutGetPosition                              ]	

align 16
jmp_waveOutGetVolume:                                	jmp	[addr_waveOutGetVolume                                ]	

align 16
jmp_waveOutMessage:                                  	jmp	[addr_waveOutMessage                                  ]	

align 16
jmp_waveOutOpen:                                     	jmp	[addr_waveOutOpen                                     ]	

align 16
jmp_waveOutPause:                                    	jmp	[addr_waveOutPause                                    ]	

align 16
jmp_waveOutPrepareHeader:                            	jmp	[addr_waveOutPrepareHeader                            ]	

align 16
jmp_waveOutReset:                                    	jmp	[addr_waveOutReset                                    ]	

align 16
jmp_waveOutRestart:                                  	jmp	[addr_waveOutRestart                                  ]	

align 16
jmp_waveOutSetPitch:                                 	jmp	[addr_waveOutSetPitch                                 ]	

align 16
jmp_waveOutSetPlaybackRate:                          	jmp	[addr_waveOutSetPlaybackRate                          ]	

align 16
jmp_waveOutSetVolume:                                	jmp	[addr_waveOutSetVolume                                ]	

align 16
jmp_waveOutUnprepareHeader:                          	jmp	[addr_waveOutUnprepareHeader                          ]	

align 16
jmp_waveOutWrite:                                    	jmp	[addr_waveOutWrite                                    ]	

align 16
api_CloseDriver                                     	db	'CloseDriver',0	

align 16
api_DefDriverProc                                   	db	'DefDriverProc',0	

align 16
api_DllCanUnloadNow                                 	db	'DllCanUnloadNow',0	

align 16
api_DllGetClassObject                               	db	'DllGetClassObject',0	

align 16
api_DllRegisterServer                               	db	'DllRegisterServer',0	

align 16
api_DllUnregisterServer                             	db	'DllUnregisterServer',0	

align 16
api_DriverCallback                                  	db	'DriverCallback',0	

align 16
api_DrvClose                                        	db	'DrvClose',0	

align 16
api_DrvDefDriverProc                                	db	'DrvDefDriverProc',0	

align 16
api_DrvGetModuleHandle                              	db	'DrvGetModuleHandle',0	

align 16
api_DrvOpen                                         	db	'DrvOpen',0	

align 16
api_DrvOpenA                                        	db	'DrvOpenA',0	

align 16
api_DrvSendMessage                                  	db	'DrvSendMessage',0	

align 16
api_GetDriverFlags                                  	db	'GetDriverFlags',0	

align 16
api_GetDriverModuleHandle                           	db	'GetDriverModuleHandle',0	

align 16
api_GetFileVersionInfoA                             	db	'GetFileVersionInfoA',0	

align 16
api_GetFileVersionInfoExA                           	db	'GetFileVersionInfoExA',0	

align 16
api_GetFileVersionInfoExW                           	db	'GetFileVersionInfoExW',0	

align 16
api_GetFileVersionInfoSizeA                         	db	'GetFileVersionInfoSizeA',0	

align 16
api_GetFileVersionInfoSizeExA                       	db	'GetFileVersionInfoSizeExA',0	

align 16
api_GetFileVersionInfoSizeExW                       	db	'GetFileVersionInfoSizeExW',0	

align 16
api_GetFileVersionInfoSizeW                         	db	'GetFileVersionInfoSizeW',0	

align 16
api_GetFileVersionInfoW                             	db	'GetFileVersionInfoW',0	

align 16
api_OpenDriver                                      	db	'OpenDriver',0	

align 16
api_OpenDriverA                                     	db	'OpenDriverA',0	

align 16
api_PlaySound                                       	db	'PlaySound',0	

align 16
api_PlaySoundA                                      	db	'PlaySoundA',0	

align 16
api_PlaySoundW                                      	db	'PlaySoundW',0	

align 16
api_SendDriverMessage                               	db	'SendDriverMessage',0	

align 16
api_VerFindFileA                                    	db	'VerFindFileA',0	

align 16
api_VerFindFileW                                    	db	'VerFindFileW',0	

align 16
api_VerInstallFileA                                 	db	'VerInstallFileA',0	

align 16
api_VerInstallFileW                                 	db	'VerInstallFileW',0	

align 16
api_VerLanguageNameA                                	db	'VerLanguageNameA',0	

align 16
api_VerLanguageNameW                                	db	'VerLanguageNameW',0	

align 16
api_VerQueryValueA                                  	db	'VerQueryValueA',0	

align 16
api_VerQueryValueW                                  	db	'VerQueryValueW',0	

align 16
api_WinHttpAddRequestHeaders                        	db	'WinHttpAddRequestHeaders',0	

align 16
api_WinHttpCheckPlatform                            	db	'WinHttpCheckPlatform',0	

align 16
api_WinHttpCloseHandle                              	db	'WinHttpCloseHandle',0	

align 16
api_WinHttpConnect                                  	db	'WinHttpConnect',0	

align 16
api_WinHttpCrackUrl                                 	db	'WinHttpCrackUrl',0	

align 16
api_WinHttpCreateProxyResolver                      	db	'WinHttpCreateProxyResolver',0	

align 16
api_WinHttpCreateUrl                                	db	'WinHttpCreateUrl',0	

align 16
api_WinHttpDetectAutoProxyConfigUrl                 	db	'WinHttpDetectAutoProxyConfigUrl',0	

align 16
api_WinHttpFreeProxyResult                          	db	'WinHttpFreeProxyResult',0	

align 16
api_WinHttpFreeProxyResultEx                        	db	'WinHttpFreeProxyResultEx',0	

align 16
api_WinHttpFreeProxySettings                        	db	'WinHttpFreeProxySettings',0	

align 16
api_WinHttpGetDefaultProxyConfiguration             	db	'WinHttpGetDefaultProxyConfiguration',0	

align 16
api_WinHttpGetIEProxyConfigForCurrentUser           	db	'WinHttpGetIEProxyConfigForCurrentUser',0	

align 16
api_WinHttpGetProxyForUrl                           	db	'WinHttpGetProxyForUrl',0	

align 16
api_WinHttpGetProxyForUrlEx                         	db	'WinHttpGetProxyForUrlEx',0	

align 16
api_WinHttpGetProxyForUrlEx2                        	db	'WinHttpGetProxyForUrlEx2',0	

align 16
api_WinHttpGetProxyResult                           	db	'WinHttpGetProxyResult',0	

align 16
api_WinHttpGetProxyResultEx                         	db	'WinHttpGetProxyResultEx',0	

align 16
api_WinHttpGetProxySettingsVersion                  	db	'WinHttpGetProxySettingsVersion',0	

align 16
api_WinHttpOpen                                     	db	'WinHttpOpen',0	

align 16
api_WinHttpOpenRequest                              	db	'WinHttpOpenRequest',0	

align 16
api_WinHttpQueryAuthSchemes                         	db	'WinHttpQueryAuthSchemes',0	

align 16
api_WinHttpQueryDataAvailable                       	db	'WinHttpQueryDataAvailable',0	

align 16
api_WinHttpQueryHeaders                             	db	'WinHttpQueryHeaders',0	

align 16
api_WinHttpQueryOption                              	db	'WinHttpQueryOption',0	

align 16
api_WinHttpReadData                                 	db	'WinHttpReadData',0	

align 16
api_WinHttpReadProxySettings                        	db	'WinHttpReadProxySettings',0	

align 16
api_WinHttpReceiveResponse                          	db	'WinHttpReceiveResponse',0	

align 16
api_WinHttpResetAutoProxy                           	db	'WinHttpResetAutoProxy',0	

align 16
api_WinHttpSendRequest                              	db	'WinHttpSendRequest',0	

align 16
api_WinHttpSetCredentials                           	db	'WinHttpSetCredentials',0	

align 16
api_WinHttpSetDefaultProxyConfiguration             	db	'WinHttpSetDefaultProxyConfiguration',0	

align 16
api_WinHttpSetOption                                	db	'WinHttpSetOption',0	

align 16
api_WinHttpSetStatusCallback                        	db	'WinHttpSetStatusCallback',0	

align 16
api_WinHttpSetTimeouts                              	db	'WinHttpSetTimeouts',0	

align 16
api_WinHttpTimeFromSystemTime                       	db	'WinHttpTimeFromSystemTime',0	

align 16
api_WinHttpTimeToSystemTime                         	db	'WinHttpTimeToSystemTime',0	

align 16
api_WinHttpWebSocketClose                           	db	'WinHttpWebSocketClose',0	

align 16
api_WinHttpWebSocketCompleteUpgrade                 	db	'WinHttpWebSocketCompleteUpgrade',0	

align 16
api_WinHttpWebSocketQueryCloseStatus                	db	'WinHttpWebSocketQueryCloseStatus',0	

align 16
api_WinHttpWebSocketReceive                         	db	'WinHttpWebSocketReceive',0	

align 16
api_WinHttpWebSocketSend                            	db	'WinHttpWebSocketSend',0	

align 16
api_WinHttpWebSocketShutdown                        	db	'WinHttpWebSocketShutdown',0	

align 16
api_WinHttpWriteData                                	db	'WinHttpWriteData',0	

align 16
api_WinHttpWriteProxySettings                       	db	'WinHttpWriteProxySettings',0	

align 16
api_auxGetDevCapsA                                  	db	'auxGetDevCapsA',0	

align 16
api_auxGetDevCapsW                                  	db	'auxGetDevCapsW',0	

align 16
api_auxGetNumDevs                                   	db	'auxGetNumDevs',0	

align 16
api_auxGetVolume                                    	db	'auxGetVolume',0	

align 16
api_auxOutMessage                                   	db	'auxOutMessage',0	

align 16
api_auxSetVolume                                    	db	'auxSetVolume',0	

align 16
api_joyConfigChanged                                	db	'joyConfigChanged',0	

align 16
api_joyGetDevCapsA                                  	db	'joyGetDevCapsA',0	

align 16
api_joyGetDevCapsW                                  	db	'joyGetDevCapsW',0	

align 16
api_joyGetNumDevs                                   	db	'joyGetNumDevs',0	

align 16
api_joyGetPos                                       	db	'joyGetPos',0	

align 16
api_joyGetPosEx                                     	db	'joyGetPosEx',0	

align 16
api_joyGetThreshold                                 	db	'joyGetThreshold',0	

align 16
api_joyReleaseCapture                               	db	'joyReleaseCapture',0	

align 16
api_joySetCapture                                   	db	'joySetCapture',0	

align 16
api_joySetThreshold                                 	db	'joySetThreshold',0	

align 16
api_mciDriverNotify                                 	db	'mciDriverNotify',0	

align 16
api_mciDriverYield                                  	db	'mciDriverYield',0	

align 16
api_mciExecute                                      	db	'mciExecute',0	

align 16
api_mciFreeCommandResource                          	db	'mciFreeCommandResource',0	

align 16
api_mciGetCreatorTask                               	db	'mciGetCreatorTask',0	

align 16
api_mciGetDeviceIDA                                 	db	'mciGetDeviceIDA',0	

align 16
api_mciGetDeviceIDFromElementIDA                    	db	'mciGetDeviceIDFromElementIDA',0	

align 16
api_mciGetDeviceIDFromElementIDW                    	db	'mciGetDeviceIDFromElementIDW',0	

align 16
api_mciGetDeviceIDW                                 	db	'mciGetDeviceIDW',0	

align 16
api_mciGetDriverData                                	db	'mciGetDriverData',0	

align 16
api_mciGetErrorStringA                              	db	'mciGetErrorStringA',0	

align 16
api_mciGetErrorStringW                              	db	'mciGetErrorStringW',0	

align 16
api_mciGetYieldProc                                 	db	'mciGetYieldProc',0	

align 16
api_mciLoadCommandResource                          	db	'mciLoadCommandResource',0	

align 16
api_mciSendCommandA                                 	db	'mciSendCommandA',0	

align 16
api_mciSendCommandW                                 	db	'mciSendCommandW',0	

align 16
api_mciSendStringA                                  	db	'mciSendStringA',0	

align 16
api_mciSendStringW                                  	db	'mciSendStringW',0	

align 16
api_mciSetDriverData                                	db	'mciSetDriverData',0	

align 16
api_mciSetYieldProc                                 	db	'mciSetYieldProc',0	

align 16
api_midiConnect                                     	db	'midiConnect',0	

align 16
api_midiDisconnect                                  	db	'midiDisconnect',0	

align 16
api_midiInAddBuffer                                 	db	'midiInAddBuffer',0	

align 16
api_midiInClose                                     	db	'midiInClose',0	

align 16
api_midiInGetDevCapsA                               	db	'midiInGetDevCapsA',0	

align 16
api_midiInGetDevCapsW                               	db	'midiInGetDevCapsW',0	

align 16
api_midiInGetErrorTextA                             	db	'midiInGetErrorTextA',0	

align 16
api_midiInGetErrorTextW                             	db	'midiInGetErrorTextW',0	

align 16
api_midiInGetID                                     	db	'midiInGetID',0	

align 16
api_midiInGetNumDevs                                	db	'midiInGetNumDevs',0	

align 16
api_midiInMessage                                   	db	'midiInMessage',0	

align 16
api_midiInOpen                                      	db	'midiInOpen',0	

align 16
api_midiInPrepareHeader                             	db	'midiInPrepareHeader',0	

align 16
api_midiInReset                                     	db	'midiInReset',0	

align 16
api_midiInStart                                     	db	'midiInStart',0	

align 16
api_midiInStop                                      	db	'midiInStop',0	

align 16
api_midiInUnprepareHeader                           	db	'midiInUnprepareHeader',0	

align 16
api_midiOutCacheDrumPatches                         	db	'midiOutCacheDrumPatches',0	

align 16
api_midiOutCachePatches                             	db	'midiOutCachePatches',0	

align 16
api_midiOutClose                                    	db	'midiOutClose',0	

align 16
api_midiOutGetDevCapsA                              	db	'midiOutGetDevCapsA',0	

align 16
api_midiOutGetDevCapsW                              	db	'midiOutGetDevCapsW',0	

align 16
api_midiOutGetErrorTextA                            	db	'midiOutGetErrorTextA',0	

align 16
api_midiOutGetErrorTextW                            	db	'midiOutGetErrorTextW',0	

align 16
api_midiOutGetID                                    	db	'midiOutGetID',0	

align 16
api_midiOutGetNumDevs                               	db	'midiOutGetNumDevs',0	

align 16
api_midiOutGetVolume                                	db	'midiOutGetVolume',0	

align 16
api_midiOutLongMsg                                  	db	'midiOutLongMsg',0	

align 16
api_midiOutMessage                                  	db	'midiOutMessage',0	

align 16
api_midiOutOpen                                     	db	'midiOutOpen',0	

align 16
api_midiOutPrepareHeader                            	db	'midiOutPrepareHeader',0	

align 16
api_midiOutReset                                    	db	'midiOutReset',0	

align 16
api_midiOutSetVolume                                	db	'midiOutSetVolume',0	

align 16
api_midiOutShortMsg                                 	db	'midiOutShortMsg',0	

align 16
api_midiOutUnprepareHeader                          	db	'midiOutUnprepareHeader',0	

align 16
api_midiStreamClose                                 	db	'midiStreamClose',0	

align 16
api_midiStreamOpen                                  	db	'midiStreamOpen',0	

align 16
api_midiStreamOut                                   	db	'midiStreamOut',0	

align 16
api_midiStreamPause                                 	db	'midiStreamPause',0	

align 16
api_midiStreamPosition                              	db	'midiStreamPosition',0	

align 16
api_midiStreamProperty                              	db	'midiStreamProperty',0	

align 16
api_midiStreamRestart                               	db	'midiStreamRestart',0	

align 16
api_midiStreamStop                                  	db	'midiStreamStop',0	

align 16
api_mixerClose                                      	db	'mixerClose',0	

align 16
api_mixerGetControlDetailsA                         	db	'mixerGetControlDetailsA',0	

align 16
api_mixerGetControlDetailsW                         	db	'mixerGetControlDetailsW',0	

align 16
api_mixerGetDevCapsA                                	db	'mixerGetDevCapsA',0	

align 16
api_mixerGetDevCapsW                                	db	'mixerGetDevCapsW',0	

align 16
api_mixerGetID                                      	db	'mixerGetID',0	

align 16
api_mixerGetLineControlsA                           	db	'mixerGetLineControlsA',0	

align 16
api_mixerGetLineControlsW                           	db	'mixerGetLineControlsW',0	

align 16
api_mixerGetLineInfoA                               	db	'mixerGetLineInfoA',0	

align 16
api_mixerGetLineInfoW                               	db	'mixerGetLineInfoW',0	

align 16
api_mixerGetNumDevs                                 	db	'mixerGetNumDevs',0	

align 16
api_mixerMessage                                    	db	'mixerMessage',0	

align 16
api_mixerOpen                                       	db	'mixerOpen',0	

align 16
api_mixerSetControlDetails                          	db	'mixerSetControlDetails',0	

align 16
api_mmGetCurrentTask                                	db	'mmGetCurrentTask',0	

align 16
api_mmTaskBlock                                     	db	'mmTaskBlock',0	

align 16
api_mmTaskCreate                                    	db	'mmTaskCreate',0	

align 16
api_mmTaskSignal                                    	db	'mmTaskSignal',0	

align 16
api_mmTaskYield                                     	db	'mmTaskYield',0	

align 16
api_mmioAdvance                                     	db	'mmioAdvance',0	

align 16
api_mmioAscend                                      	db	'mmioAscend',0	

align 16
api_mmioClose                                       	db	'mmioClose',0	

align 16
api_mmioCreateChunk                                 	db	'mmioCreateChunk',0	

align 16
api_mmioDescend                                     	db	'mmioDescend',0	

align 16
api_mmioFlush                                       	db	'mmioFlush',0	

align 16
api_mmioGetInfo                                     	db	'mmioGetInfo',0	

align 16
api_mmioInstallIOProc16                             	db	'mmioInstallIOProc16',0	

align 16
api_mmioInstallIOProcA                              	db	'mmioInstallIOProcA',0	

align 16
api_mmioInstallIOProcW                              	db	'mmioInstallIOProcW',0	

align 16
api_mmioOpenA                                       	db	'mmioOpenA',0	

align 16
api_mmioOpenW                                       	db	'mmioOpenW',0	

align 16
api_mmioRead                                        	db	'mmioRead',0	

align 16
api_mmioRenameA                                     	db	'mmioRenameA',0	

align 16
api_mmioRenameW                                     	db	'mmioRenameW',0	

align 16
api_mmioSeek                                        	db	'mmioSeek',0	

align 16
api_mmioSendMessage                                 	db	'mmioSendMessage',0	

align 16
api_mmioSetBuffer                                   	db	'mmioSetBuffer',0	

align 16
api_mmioSetInfo                                     	db	'mmioSetInfo',0	

align 16
api_mmioStringToFOURCCA                             	db	'mmioStringToFOURCCA',0	

align 16
api_mmioStringToFOURCCW                             	db	'mmioStringToFOURCCW',0	

align 16
api_mmioWrite                                       	db	'mmioWrite',0	

align 16
api_mmsystemGetVersion                              	db	'mmsystemGetVersion',0	

align 16
api_sndPlaySoundA                                   	db	'sndPlaySoundA',0	

align 16
api_sndPlaySoundW                                   	db	'sndPlaySoundW',0	

align 16
api_timeBeginPeriod                                 	db	'timeBeginPeriod',0	

align 16
api_timeEndPeriod                                   	db	'timeEndPeriod',0	

align 16
api_timeGetDevCaps                                  	db	'timeGetDevCaps',0	

align 16
api_timeGetSystemTime                               	db	'timeGetSystemTime',0	

align 16
api_timeGetTime                                     	db	'timeGetTime',0	

align 16
api_timeKillEvent                                   	db	'timeKillEvent',0	

align 16
api_timeSetEvent                                    	db	'timeSetEvent',0	

align 16
api_waveInAddBuffer                                 	db	'waveInAddBuffer',0	

align 16
api_waveInClose                                     	db	'waveInClose',0	

align 16
api_waveInGetDevCapsA                               	db	'waveInGetDevCapsA',0	

align 16
api_waveInGetDevCapsW                               	db	'waveInGetDevCapsW',0	

align 16
api_waveInGetErrorTextA                             	db	'waveInGetErrorTextA',0	

align 16
api_waveInGetErrorTextW                             	db	'waveInGetErrorTextW',0	

align 16
api_waveInGetID                                     	db	'waveInGetID',0	

align 16
api_waveInGetNumDevs                                	db	'waveInGetNumDevs',0	

align 16
api_waveInGetPosition                               	db	'waveInGetPosition',0	

align 16
api_waveInMessage                                   	db	'waveInMessage',0	

align 16
api_waveInOpen                                      	db	'waveInOpen',0	

align 16
api_waveInPrepareHeader                             	db	'waveInPrepareHeader',0	

align 16
api_waveInReset                                     	db	'waveInReset',0	

align 16
api_waveInStart                                     	db	'waveInStart',0	

align 16
api_waveInStop                                      	db	'waveInStop',0	

align 16
api_waveInUnprepareHeader                           	db	'waveInUnprepareHeader',0	

align 16
api_waveOutBreakLoop                                	db	'waveOutBreakLoop',0	

align 16
api_waveOutClose                                    	db	'waveOutClose',0	

align 16
api_waveOutGetDevCapsA                              	db	'waveOutGetDevCapsA',0	

align 16
api_waveOutGetDevCapsW                              	db	'waveOutGetDevCapsW',0	

align 16
api_waveOutGetErrorTextA                            	db	'waveOutGetErrorTextA',0	

align 16
api_waveOutGetErrorTextW                            	db	'waveOutGetErrorTextW',0	

align 16
api_waveOutGetID                                    	db	'waveOutGetID',0	

align 16
api_waveOutGetNumDevs                               	db	'waveOutGetNumDevs',0	

align 16
api_waveOutGetPitch                                 	db	'waveOutGetPitch',0	

align 16
api_waveOutGetPlaybackRate                          	db	'waveOutGetPlaybackRate',0	

align 16
api_waveOutGetPosition                              	db	'waveOutGetPosition',0	

align 16
api_waveOutGetVolume                                	db	'waveOutGetVolume',0	

align 16
api_waveOutMessage                                  	db	'waveOutMessage',0	

align 16
api_waveOutOpen                                     	db	'waveOutOpen',0	

align 16
api_waveOutPause                                    	db	'waveOutPause',0	

align 16
api_waveOutPrepareHeader                            	db	'waveOutPrepareHeader',0	

align 16
api_waveOutReset                                    	db	'waveOutReset',0	

align 16
api_waveOutRestart                                  	db	'waveOutRestart',0	

align 16
api_waveOutSetPitch                                 	db	'waveOutSetPitch',0	

align 16
api_waveOutSetPlaybackRate                          	db	'waveOutSetPlaybackRate',0	

align 16
api_waveOutSetVolume                                	db	'waveOutSetVolume',0	

align 16
api_waveOutUnprepareHeader                          	db	'waveOutUnprepareHeader',0	

align 16
api_waveOutWrite                                    	db	'waveOutWrite',0

align 16
dll_Maple                                               TCHAR      'Maple.dll', 0

align 16

.end DllEntryPoint

align 16
addr_CloseDriver                                     	dq	?	

align 16
addr_DefDriverProc                                   	dq	?	

align 16
addr_DllCanUnloadNow                                 	dq	?	

align 16
addr_DllGetClassObject                               	dq	?	

align 16
addr_DllRegisterServer                               	dq	?	

align 16
addr_DllUnregisterServer                             	dq	?	

align 16
addr_DriverCallback                                  	dq	?	

align 16
addr_DrvClose                                        	dq	?	

align 16
addr_DrvDefDriverProc                                	dq	?	

align 16
addr_DrvGetModuleHandle                              	dq	?	

align 16
addr_DrvOpen                                         	dq	?	

align 16
addr_DrvOpenA                                        	dq	?	

align 16
addr_DrvSendMessage                                  	dq	?	

align 16
addr_GetDriverFlags                                  	dq	?	

align 16
addr_GetDriverModuleHandle                           	dq	?	

align 16
addr_GetFileVersionInfoA                             	dq	?	

align 16
addr_GetFileVersionInfoExA                           	dq	?	

align 16
addr_GetFileVersionInfoExW                           	dq	?	

align 16
addr_GetFileVersionInfoSizeA                         	dq	?	

align 16
addr_GetFileVersionInfoSizeExA                       	dq	?	

align 16
addr_GetFileVersionInfoSizeExW                       	dq	?	

align 16
addr_GetFileVersionInfoSizeW                         	dq	?	

align 16
addr_GetFileVersionInfoW                             	dq	?	

align 16
addr_OpenDriver                                      	dq	?	

align 16
addr_OpenDriverA                                     	dq	?	

align 16
addr_PlaySound                                       	dq	?	

align 16
addr_PlaySoundA                                      	dq	?	

align 16
addr_PlaySoundW                                      	dq	?	

align 16
addr_SendDriverMessage                               	dq	?	

align 16
addr_VerFindFileA                                    	dq	?	

align 16
addr_VerFindFileW                                    	dq	?	

align 16
addr_VerInstallFileA                                 	dq	?	

align 16
addr_VerInstallFileW                                 	dq	?	

align 16
addr_VerLanguageNameA                                	dq	?	

align 16
addr_VerLanguageNameW                                	dq	?	

align 16
addr_VerQueryValueA                                  	dq	?	

align 16
addr_VerQueryValueW                                  	dq	?	

align 16
addr_WinHttpAddRequestHeaders                        	dq	?	

align 16
addr_WinHttpCheckPlatform                            	dq	?	

align 16
addr_WinHttpCloseHandle                              	dq	?	

align 16
addr_WinHttpConnect                                  	dq	?	

align 16
addr_WinHttpCrackUrl                                 	dq	?	

align 16
addr_WinHttpCreateProxyResolver                      	dq	?	

align 16
addr_WinHttpCreateUrl                                	dq	?	

align 16
addr_WinHttpDetectAutoProxyConfigUrl                 	dq	?	

align 16
addr_WinHttpFreeProxyResult                          	dq	?	

align 16
addr_WinHttpFreeProxyResultEx                        	dq	?	

align 16
addr_WinHttpFreeProxySettings                        	dq	?	

align 16
addr_WinHttpGetDefaultProxyConfiguration             	dq	?	

align 16
addr_WinHttpGetIEProxyConfigForCurrentUser           	dq	?	

align 16
addr_WinHttpGetProxyForUrl                           	dq	?	

align 16
addr_WinHttpGetProxyForUrlEx                         	dq	?	

align 16
addr_WinHttpGetProxyForUrlEx2                        	dq	?	

align 16
addr_WinHttpGetProxyResult                           	dq	?	

align 16
addr_WinHttpGetProxyResultEx                         	dq	?	

align 16
addr_WinHttpGetProxySettingsVersion                  	dq	?	

align 16
addr_WinHttpOpen                                     	dq	?	

align 16
addr_WinHttpOpenRequest                              	dq	?	

align 16
addr_WinHttpQueryAuthSchemes                         	dq	?	

align 16
addr_WinHttpQueryDataAvailable                       	dq	?	

align 16
addr_WinHttpQueryHeaders                             	dq	?	

align 16
addr_WinHttpQueryOption                              	dq	?	

align 16
addr_WinHttpReadData                                 	dq	?	

align 16
addr_WinHttpReadProxySettings                        	dq	?	

align 16
addr_WinHttpReceiveResponse                          	dq	?	

align 16
addr_WinHttpResetAutoProxy                           	dq	?	

align 16
addr_WinHttpSendRequest                              	dq	?	

align 16
addr_WinHttpSetCredentials                           	dq	?	

align 16
addr_WinHttpSetDefaultProxyConfiguration             	dq	?	

align 16
addr_WinHttpSetOption                                	dq	?	

align 16
addr_WinHttpSetStatusCallback                        	dq	?	

align 16
addr_WinHttpSetTimeouts                              	dq	?	

align 16
addr_WinHttpTimeFromSystemTime                       	dq	?	

align 16
addr_WinHttpTimeToSystemTime                         	dq	?	

align 16
addr_WinHttpWebSocketClose                           	dq	?	

align 16
addr_WinHttpWebSocketCompleteUpgrade                 	dq	?	

align 16
addr_WinHttpWebSocketQueryCloseStatus                	dq	?	

align 16
addr_WinHttpWebSocketReceive                         	dq	?	

align 16
addr_WinHttpWebSocketSend                            	dq	?	

align 16
addr_WinHttpWebSocketShutdown                        	dq	?	

align 16
addr_WinHttpWriteData                                	dq	?	

align 16
addr_WinHttpWriteProxySettings                       	dq	?	

align 16
addr_auxGetDevCapsA                                  	dq	?	

align 16
addr_auxGetDevCapsW                                  	dq	?	

align 16
addr_auxGetNumDevs                                   	dq	?	

align 16
addr_auxGetVolume                                    	dq	?	

align 16
addr_auxOutMessage                                   	dq	?	

align 16
addr_auxSetVolume                                    	dq	?	

align 16
addr_joyConfigChanged                                	dq	?	

align 16
addr_joyGetDevCapsA                                  	dq	?	

align 16
addr_joyGetDevCapsW                                  	dq	?	

align 16
addr_joyGetNumDevs                                   	dq	?	

align 16
addr_joyGetPos                                       	dq	?	

align 16
addr_joyGetPosEx                                     	dq	?	

align 16
addr_joyGetThreshold                                 	dq	?	

align 16
addr_joyReleaseCapture                               	dq	?	

align 16
addr_joySetCapture                                   	dq	?	

align 16
addr_joySetThreshold                                 	dq	?	

align 16
addr_mciDriverNotify                                 	dq	?	

align 16
addr_mciDriverYield                                  	dq	?	

align 16
addr_mciExecute                                      	dq	?	

align 16
addr_mciFreeCommandResource                          	dq	?	

align 16
addr_mciGetCreatorTask                               	dq	?	

align 16
addr_mciGetDeviceIDA                                 	dq	?	

align 16
addr_mciGetDeviceIDFromElementIDA                    	dq	?	

align 16
addr_mciGetDeviceIDFromElementIDW                    	dq	?	

align 16
addr_mciGetDeviceIDW                                 	dq	?	

align 16
addr_mciGetDriverData                                	dq	?	

align 16
addr_mciGetErrorStringA                              	dq	?	

align 16
addr_mciGetErrorStringW                              	dq	?	

align 16
addr_mciGetYieldProc                                 	dq	?	

align 16
addr_mciLoadCommandResource                          	dq	?	

align 16
addr_mciSendCommandA                                 	dq	?	

align 16
addr_mciSendCommandW                                 	dq	?	

align 16
addr_mciSendStringA                                  	dq	?	

align 16
addr_mciSendStringW                                  	dq	?	

align 16
addr_mciSetDriverData                                	dq	?	

align 16
addr_mciSetYieldProc                                 	dq	?	

align 16
addr_midiConnect                                     	dq	?	

align 16
addr_midiDisconnect                                  	dq	?	

align 16
addr_midiInAddBuffer                                 	dq	?	

align 16
addr_midiInClose                                     	dq	?	

align 16
addr_midiInGetDevCapsA                               	dq	?	

align 16
addr_midiInGetDevCapsW                               	dq	?	

align 16
addr_midiInGetErrorTextA                             	dq	?	

align 16
addr_midiInGetErrorTextW                             	dq	?	

align 16
addr_midiInGetID                                     	dq	?	

align 16
addr_midiInGetNumDevs                                	dq	?	

align 16
addr_midiInMessage                                   	dq	?	

align 16
addr_midiInOpen                                      	dq	?	

align 16
addr_midiInPrepareHeader                             	dq	?	

align 16
addr_midiInReset                                     	dq	?	

align 16
addr_midiInStart                                     	dq	?	

align 16
addr_midiInStop                                      	dq	?	

align 16
addr_midiInUnprepareHeader                           	dq	?	

align 16
addr_midiOutCacheDrumPatches                         	dq	?	

align 16
addr_midiOutCachePatches                             	dq	?	

align 16
addr_midiOutClose                                    	dq	?	

align 16
addr_midiOutGetDevCapsA                              	dq	?	

align 16
addr_midiOutGetDevCapsW                              	dq	?	

align 16
addr_midiOutGetErrorTextA                            	dq	?	

align 16
addr_midiOutGetErrorTextW                            	dq	?	

align 16
addr_midiOutGetID                                    	dq	?	

align 16
addr_midiOutGetNumDevs                               	dq	?	

align 16
addr_midiOutGetVolume                                	dq	?	

align 16
addr_midiOutLongMsg                                  	dq	?	

align 16
addr_midiOutMessage                                  	dq	?	

align 16
addr_midiOutOpen                                     	dq	?	

align 16
addr_midiOutPrepareHeader                            	dq	?	

align 16
addr_midiOutReset                                    	dq	?	

align 16
addr_midiOutSetVolume                                	dq	?	

align 16
addr_midiOutShortMsg                                 	dq	?	

align 16
addr_midiOutUnprepareHeader                          	dq	?	

align 16
addr_midiStreamClose                                 	dq	?	

align 16
addr_midiStreamOpen                                  	dq	?	

align 16
addr_midiStreamOut                                   	dq	?	

align 16
addr_midiStreamPause                                 	dq	?	

align 16
addr_midiStreamPosition                              	dq	?	

align 16
addr_midiStreamProperty                              	dq	?	

align 16
addr_midiStreamRestart                               	dq	?	

align 16
addr_midiStreamStop                                  	dq	?	

align 16
addr_mixerClose                                      	dq	?	

align 16
addr_mixerGetControlDetailsA                         	dq	?	

align 16
addr_mixerGetControlDetailsW                         	dq	?	

align 16
addr_mixerGetDevCapsA                                	dq	?	

align 16
addr_mixerGetDevCapsW                                	dq	?	

align 16
addr_mixerGetID                                      	dq	?	

align 16
addr_mixerGetLineControlsA                           	dq	?	

align 16
addr_mixerGetLineControlsW                           	dq	?	

align 16
addr_mixerGetLineInfoA                               	dq	?	

align 16
addr_mixerGetLineInfoW                               	dq	?	

align 16
addr_mixerGetNumDevs                                 	dq	?	

align 16
addr_mixerMessage                                    	dq	?	

align 16
addr_mixerOpen                                       	dq	?	

align 16
addr_mixerSetControlDetails                          	dq	?	

align 16
addr_mmGetCurrentTask                                	dq	?	

align 16
addr_mmTaskBlock                                     	dq	?	

align 16
addr_mmTaskCreate                                    	dq	?	

align 16
addr_mmTaskSignal                                    	dq	?	

align 16
addr_mmTaskYield                                     	dq	?	

align 16
addr_mmioAdvance                                     	dq	?	

align 16
addr_mmioAscend                                      	dq	?	

align 16
addr_mmioClose                                       	dq	?	

align 16
addr_mmioCreateChunk                                 	dq	?	

align 16
addr_mmioDescend                                     	dq	?	

align 16
addr_mmioFlush                                       	dq	?	

align 16
addr_mmioGetInfo                                     	dq	?	

align 16
addr_mmioInstallIOProc16                             	dq	?	

align 16
addr_mmioInstallIOProcA                              	dq	?	

align 16
addr_mmioInstallIOProcW                              	dq	?	

align 16
addr_mmioOpenA                                       	dq	?	

align 16
addr_mmioOpenW                                       	dq	?	

align 16
addr_mmioRead                                        	dq	?	

align 16
addr_mmioRenameA                                     	dq	?	

align 16
addr_mmioRenameW                                     	dq	?	

align 16
addr_mmioSeek                                        	dq	?	

align 16
addr_mmioSendMessage                                 	dq	?	

align 16
addr_mmioSetBuffer                                   	dq	?	

align 16
addr_mmioSetInfo                                     	dq	?	

align 16
addr_mmioStringToFOURCCA                             	dq	?	

align 16
addr_mmioStringToFOURCCW                             	dq	?	

align 16
addr_mmioWrite                                       	dq	?	

align 16
addr_mmsystemGetVersion                              	dq	?	

align 16
addr_sndPlaySoundA                                   	dq	?	

align 16
addr_sndPlaySoundW                                   	dq	?	

align 16
addr_timeBeginPeriod                                 	dq	?	

align 16
addr_timeEndPeriod                                   	dq	?	

align 16
addr_timeGetDevCaps                                  	dq	?	

align 16
addr_timeGetSystemTime                               	dq	?	

align 16
addr_timeGetTime                                     	dq	?	

align 16
addr_timeKillEvent                                   	dq	?	

align 16
addr_timeSetEvent                                    	dq	?	

align 16
addr_waveInAddBuffer                                 	dq	?	

align 16
addr_waveInClose                                     	dq	?	

align 16
addr_waveInGetDevCapsA                               	dq	?	

align 16
addr_waveInGetDevCapsW                               	dq	?	

align 16
addr_waveInGetErrorTextA                             	dq	?	

align 16
addr_waveInGetErrorTextW                             	dq	?	

align 16
addr_waveInGetID                                     	dq	?	

align 16
addr_waveInGetNumDevs                                	dq	?	

align 16
addr_waveInGetPosition                               	dq	?	

align 16
addr_waveInMessage                                   	dq	?	

align 16
addr_waveInOpen                                      	dq	?	

align 16
addr_waveInPrepareHeader                             	dq	?	

align 16
addr_waveInReset                                     	dq	?	

align 16
addr_waveInStart                                     	dq	?	

align 16
addr_waveInStop                                      	dq	?	

align 16
addr_waveInUnprepareHeader                           	dq	?	

align 16
addr_waveOutBreakLoop                                	dq	?	

align 16
addr_waveOutClose                                    	dq	?	

align 16
addr_waveOutGetDevCapsA                              	dq	?	

align 16
addr_waveOutGetDevCapsW                              	dq	?	

align 16
addr_waveOutGetErrorTextA                            	dq	?	

align 16
addr_waveOutGetErrorTextW                            	dq	?	

align 16
addr_waveOutGetID                                    	dq	?	

align 16
addr_waveOutGetNumDevs                               	dq	?	

align 16
addr_waveOutGetPitch                                 	dq	?	

align 16
addr_waveOutGetPlaybackRate                          	dq	?	

align 16
addr_waveOutGetPosition                              	dq	?	

align 16
addr_waveOutGetVolume                                	dq	?	

align 16
addr_waveOutMessage                                  	dq	?	

align 16
addr_waveOutOpen                                     	dq	?	

align 16
addr_waveOutPause                                    	dq	?	

align 16
addr_waveOutPrepareHeader                            	dq	?	

align 16
addr_waveOutReset                                    	dq	?	

align 16
addr_waveOutRestart                                  	dq	?	

align 16
addr_waveOutSetPitch                                 	dq	?	

align 16
addr_waveOutSetPlaybackRate                          	dq	?	

align 16
addr_waveOutSetVolume                                	dq	?	

align 16
addr_waveOutUnprepareHeader                          	dq	?	

align 16
addr_waveOutWrite                                    	dq	?	

align 16
addr_DLLNAME  rb 512
align 16
addr_SYSPATH rb 512
align 16
addr_FULLNAME rb 512

align 16
section '.edata' export data readable
export 'version.dll', \
    jmp_CloseDriver,                                     	'CloseDriver',\
    jmp_DefDriverProc,                                   	'DefDriverProc',\
    jmp_DllCanUnloadNow,                                 	'DllCanUnloadNow',\
    jmp_DllGetClassObject,                               	'DllGetClassObject',\
    jmp_DllRegisterServer,                               	'DllRegisterServer',\
    jmp_DllUnregisterServer,                             	'DllUnregisterServer',\
    jmp_DriverCallback,                                  	'DriverCallback',\
    jmp_DrvClose,                                        	'DrvClose',\
    jmp_DrvDefDriverProc,                                	'DrvDefDriverProc',\
    jmp_DrvGetModuleHandle,                              	'DrvGetModuleHandle',\
    jmp_DrvOpen,                                         	'DrvOpen',\
    jmp_DrvOpenA,                                        	'DrvOpenA',\
    jmp_DrvSendMessage,                                  	'DrvSendMessage',\
    jmp_GetDriverFlags,                                  	'GetDriverFlags',\
    jmp_GetDriverModuleHandle,                           	'GetDriverModuleHandle',\
    jmp_GetFileVersionInfoA,                             	'GetFileVersionInfoA',\
    jmp_GetFileVersionInfoExA,                           	'GetFileVersionInfoExA',\
    jmp_GetFileVersionInfoExW,                           	'GetFileVersionInfoExW',\
    jmp_GetFileVersionInfoSizeA,                         	'GetFileVersionInfoSizeA',\
    jmp_GetFileVersionInfoSizeExA,                       	'GetFileVersionInfoSizeExA',\
    jmp_GetFileVersionInfoSizeExW,                       	'GetFileVersionInfoSizeExW',\
    jmp_GetFileVersionInfoSizeW,                         	'GetFileVersionInfoSizeW',\
    jmp_GetFileVersionInfoW,                             	'GetFileVersionInfoW',\
    jmp_OpenDriver,                                      	'OpenDriver',\
    jmp_OpenDriverA,                                     	'OpenDriverA',\
    jmp_PlaySound,                                       	'PlaySound',\
    jmp_PlaySoundA,                                      	'PlaySoundA',\
    jmp_PlaySoundW,                                      	'PlaySoundW',\
    jmp_SendDriverMessage,                               	'SendDriverMessage',\
    jmp_VerFindFileA,                                    	'VerFindFileA',\
    jmp_VerFindFileW,                                    	'VerFindFileW',\
    jmp_VerInstallFileA,                                 	'VerInstallFileA',\
    jmp_VerInstallFileW,                                 	'VerInstallFileW',\
    jmp_VerLanguageNameA,                                	'VerLanguageNameA',\
    jmp_VerLanguageNameW,                                	'VerLanguageNameW',\
    jmp_VerQueryValueA,                                  	'VerQueryValueA',\
    jmp_VerQueryValueW,                                  	'VerQueryValueW',\
    jmp_WinHttpAddRequestHeaders,                        	'WinHttpAddRequestHeaders',\
    jmp_WinHttpCheckPlatform,                            	'WinHttpCheckPlatform',\
    jmp_WinHttpCloseHandle,                              	'WinHttpCloseHandle',\
    jmp_WinHttpConnect,                                  	'WinHttpConnect',\
    jmp_WinHttpCrackUrl,                                 	'WinHttpCrackUrl',\
    jmp_WinHttpCreateProxyResolver,                      	'WinHttpCreateProxyResolver',\
    jmp_WinHttpCreateUrl,                                	'WinHttpCreateUrl',\
    jmp_WinHttpDetectAutoProxyConfigUrl,                 	'WinHttpDetectAutoProxyConfigUrl',\
    jmp_WinHttpFreeProxyResult,                          	'WinHttpFreeProxyResult',\
    jmp_WinHttpFreeProxyResultEx,                        	'WinHttpFreeProxyResultEx',\
    jmp_WinHttpFreeProxySettings,                        	'WinHttpFreeProxySettings',\
    jmp_WinHttpGetDefaultProxyConfiguration,             	'WinHttpGetDefaultProxyConfiguration',\
    jmp_WinHttpGetIEProxyConfigForCurrentUser,           	'WinHttpGetIEProxyConfigForCurrentUser',\
    jmp_WinHttpGetProxyForUrl,                           	'WinHttpGetProxyForUrl',\
    jmp_WinHttpGetProxyForUrlEx,                         	'WinHttpGetProxyForUrlEx',\
    jmp_WinHttpGetProxyForUrlEx2,                        	'WinHttpGetProxyForUrlEx2',\
    jmp_WinHttpGetProxyResult,                           	'WinHttpGetProxyResult',\
    jmp_WinHttpGetProxyResultEx,                         	'WinHttpGetProxyResultEx',\
    jmp_WinHttpGetProxySettingsVersion,                  	'WinHttpGetProxySettingsVersion',\
    jmp_WinHttpOpen,                                     	'WinHttpOpen',\
    jmp_WinHttpOpenRequest,                              	'WinHttpOpenRequest',\
    jmp_WinHttpQueryAuthSchemes,                         	'WinHttpQueryAuthSchemes',\
    jmp_WinHttpQueryDataAvailable,                       	'WinHttpQueryDataAvailable',\
    jmp_WinHttpQueryHeaders,                             	'WinHttpQueryHeaders',\
    jmp_WinHttpQueryOption,                              	'WinHttpQueryOption',\
    jmp_WinHttpReadData,                                 	'WinHttpReadData',\
    jmp_WinHttpReadProxySettings,                        	'WinHttpReadProxySettings',\
    jmp_WinHttpReceiveResponse,                          	'WinHttpReceiveResponse',\
    jmp_WinHttpResetAutoProxy,                           	'WinHttpResetAutoProxy',\
    jmp_WinHttpSendRequest,                              	'WinHttpSendRequest',\
    jmp_WinHttpSetCredentials,                           	'WinHttpSetCredentials',\
    jmp_WinHttpSetDefaultProxyConfiguration,             	'WinHttpSetDefaultProxyConfiguration',\
    jmp_WinHttpSetOption,                                	'WinHttpSetOption',\
    jmp_WinHttpSetStatusCallback,                        	'WinHttpSetStatusCallback',\
    jmp_WinHttpSetTimeouts,                              	'WinHttpSetTimeouts',\
    jmp_WinHttpTimeFromSystemTime,                       	'WinHttpTimeFromSystemTime',\
    jmp_WinHttpTimeToSystemTime,                         	'WinHttpTimeToSystemTime',\
    jmp_WinHttpWebSocketClose,                           	'WinHttpWebSocketClose',\
    jmp_WinHttpWebSocketCompleteUpgrade,                 	'WinHttpWebSocketCompleteUpgrade',\
    jmp_WinHttpWebSocketQueryCloseStatus,                	'WinHttpWebSocketQueryCloseStatus',\
    jmp_WinHttpWebSocketReceive,                         	'WinHttpWebSocketReceive',\
    jmp_WinHttpWebSocketSend,                            	'WinHttpWebSocketSend',\
    jmp_WinHttpWebSocketShutdown,                        	'WinHttpWebSocketShutdown',\
    jmp_WinHttpWriteData,                                	'WinHttpWriteData',\
    jmp_WinHttpWriteProxySettings,                       	'WinHttpWriteProxySettings',\
    jmp_auxGetDevCapsA,                                  	'auxGetDevCapsA',\
    jmp_auxGetDevCapsW,                                  	'auxGetDevCapsW',\
    jmp_auxGetNumDevs,                                   	'auxGetNumDevs',\
    jmp_auxGetVolume,                                    	'auxGetVolume',\
    jmp_auxOutMessage,                                   	'auxOutMessage',\
    jmp_auxSetVolume,                                    	'auxSetVolume',\
    jmp_joyConfigChanged,                                	'joyConfigChanged',\
    jmp_joyGetDevCapsA,                                  	'joyGetDevCapsA',\
    jmp_joyGetDevCapsW,                                  	'joyGetDevCapsW',\
    jmp_joyGetNumDevs,                                   	'joyGetNumDevs',\
    jmp_joyGetPos,                                       	'joyGetPos',\
    jmp_joyGetPosEx,                                     	'joyGetPosEx',\
    jmp_joyGetThreshold,                                 	'joyGetThreshold',\
    jmp_joyReleaseCapture,                               	'joyReleaseCapture',\
    jmp_joySetCapture,                                   	'joySetCapture',\
    jmp_joySetThreshold,                                 	'joySetThreshold',\
    jmp_mciDriverNotify,                                 	'mciDriverNotify',\
    jmp_mciDriverYield,                                  	'mciDriverYield',\
    jmp_mciExecute,                                      	'mciExecute',\
    jmp_mciFreeCommandResource,                          	'mciFreeCommandResource',\
    jmp_mciGetCreatorTask,                               	'mciGetCreatorTask',\
    jmp_mciGetDeviceIDA,                                 	'mciGetDeviceIDA',\
    jmp_mciGetDeviceIDFromElementIDA,                    	'mciGetDeviceIDFromElementIDA',\
    jmp_mciGetDeviceIDFromElementIDW,                    	'mciGetDeviceIDFromElementIDW',\
    jmp_mciGetDeviceIDW,                                 	'mciGetDeviceIDW',\
    jmp_mciGetDriverData,                                	'mciGetDriverData',\
    jmp_mciGetErrorStringA,                              	'mciGetErrorStringA',\
    jmp_mciGetErrorStringW,                              	'mciGetErrorStringW',\
    jmp_mciGetYieldProc,                                 	'mciGetYieldProc',\
    jmp_mciLoadCommandResource,                          	'mciLoadCommandResource',\
    jmp_mciSendCommandA,                                 	'mciSendCommandA',\
    jmp_mciSendCommandW,                                 	'mciSendCommandW',\
    jmp_mciSendStringA,                                  	'mciSendStringA',\
    jmp_mciSendStringW,                                  	'mciSendStringW',\
    jmp_mciSetDriverData,                                	'mciSetDriverData',\
    jmp_mciSetYieldProc,                                 	'mciSetYieldProc',\
    jmp_midiConnect,                                     	'midiConnect',\
    jmp_midiDisconnect,                                  	'midiDisconnect',\
    jmp_midiInAddBuffer,                                 	'midiInAddBuffer',\
    jmp_midiInClose,                                     	'midiInClose',\
    jmp_midiInGetDevCapsA,                               	'midiInGetDevCapsA',\
    jmp_midiInGetDevCapsW,                               	'midiInGetDevCapsW',\
    jmp_midiInGetErrorTextA,                             	'midiInGetErrorTextA',\
    jmp_midiInGetErrorTextW,                             	'midiInGetErrorTextW',\
    jmp_midiInGetID,                                     	'midiInGetID',\
    jmp_midiInGetNumDevs,                                	'midiInGetNumDevs',\
    jmp_midiInMessage,                                   	'midiInMessage',\
    jmp_midiInOpen,                                      	'midiInOpen',\
    jmp_midiInPrepareHeader,                             	'midiInPrepareHeader',\
    jmp_midiInReset,                                     	'midiInReset',\
    jmp_midiInStart,                                     	'midiInStart',\
    jmp_midiInStop,                                      	'midiInStop',\
    jmp_midiInUnprepareHeader,                           	'midiInUnprepareHeader',\
    jmp_midiOutCacheDrumPatches,                         	'midiOutCacheDrumPatches',\
    jmp_midiOutCachePatches,                             	'midiOutCachePatches',\
    jmp_midiOutClose,                                    	'midiOutClose',\
    jmp_midiOutGetDevCapsA,                              	'midiOutGetDevCapsA',\
    jmp_midiOutGetDevCapsW,                              	'midiOutGetDevCapsW',\
    jmp_midiOutGetErrorTextA,                            	'midiOutGetErrorTextA',\
    jmp_midiOutGetErrorTextW,                            	'midiOutGetErrorTextW',\
    jmp_midiOutGetID,                                    	'midiOutGetID',\
    jmp_midiOutGetNumDevs,                               	'midiOutGetNumDevs',\
    jmp_midiOutGetVolume,                                	'midiOutGetVolume',\
    jmp_midiOutLongMsg,                                  	'midiOutLongMsg',\
    jmp_midiOutMessage,                                  	'midiOutMessage',\
    jmp_midiOutOpen,                                     	'midiOutOpen',\
    jmp_midiOutPrepareHeader,                            	'midiOutPrepareHeader',\
    jmp_midiOutReset,                                    	'midiOutReset',\
    jmp_midiOutSetVolume,                                	'midiOutSetVolume',\
    jmp_midiOutShortMsg,                                 	'midiOutShortMsg',\
    jmp_midiOutUnprepareHeader,                          	'midiOutUnprepareHeader',\
    jmp_midiStreamClose,                                 	'midiStreamClose',\
    jmp_midiStreamOpen,                                  	'midiStreamOpen',\
    jmp_midiStreamOut,                                   	'midiStreamOut',\
    jmp_midiStreamPause,                                 	'midiStreamPause',\
    jmp_midiStreamPosition,                              	'midiStreamPosition',\
    jmp_midiStreamProperty,                              	'midiStreamProperty',\
    jmp_midiStreamRestart,                               	'midiStreamRestart',\
    jmp_midiStreamStop,                                  	'midiStreamStop',\
    jmp_mixerClose,                                      	'mixerClose',\
    jmp_mixerGetControlDetailsA,                         	'mixerGetControlDetailsA',\
    jmp_mixerGetControlDetailsW,                         	'mixerGetControlDetailsW',\
    jmp_mixerGetDevCapsA,                                	'mixerGetDevCapsA',\
    jmp_mixerGetDevCapsW,                                	'mixerGetDevCapsW',\
    jmp_mixerGetID,                                      	'mixerGetID',\
    jmp_mixerGetLineControlsA,                           	'mixerGetLineControlsA',\
    jmp_mixerGetLineControlsW,                           	'mixerGetLineControlsW',\
    jmp_mixerGetLineInfoA,                               	'mixerGetLineInfoA',\
    jmp_mixerGetLineInfoW,                               	'mixerGetLineInfoW',\
    jmp_mixerGetNumDevs,                                 	'mixerGetNumDevs',\
    jmp_mixerMessage,                                    	'mixerMessage',\
    jmp_mixerOpen,                                       	'mixerOpen',\
    jmp_mixerSetControlDetails,                          	'mixerSetControlDetails',\
    jmp_mmGetCurrentTask,                                	'mmGetCurrentTask',\
    jmp_mmTaskBlock,                                     	'mmTaskBlock',\
    jmp_mmTaskCreate,                                    	'mmTaskCreate',\
    jmp_mmTaskSignal,                                    	'mmTaskSignal',\
    jmp_mmTaskYield,                                     	'mmTaskYield',\
    jmp_mmioAdvance,                                     	'mmioAdvance',\
    jmp_mmioAscend,                                      	'mmioAscend',\
    jmp_mmioClose,                                       	'mmioClose',\
    jmp_mmioCreateChunk,                                 	'mmioCreateChunk',\
    jmp_mmioDescend,                                     	'mmioDescend',\
    jmp_mmioFlush,                                       	'mmioFlush',\
    jmp_mmioGetInfo,                                     	'mmioGetInfo',\
    jmp_mmioInstallIOProc16,                             	'mmioInstallIOProc16',\
    jmp_mmioInstallIOProcA,                              	'mmioInstallIOProcA',\
    jmp_mmioInstallIOProcW,                              	'mmioInstallIOProcW',\
    jmp_mmioOpenA,                                       	'mmioOpenA',\
    jmp_mmioOpenW,                                       	'mmioOpenW',\
    jmp_mmioRead,                                        	'mmioRead',\
    jmp_mmioRenameA,                                     	'mmioRenameA',\
    jmp_mmioRenameW,                                     	'mmioRenameW',\
    jmp_mmioSeek,                                        	'mmioSeek',\
    jmp_mmioSendMessage,                                 	'mmioSendMessage',\
    jmp_mmioSetBuffer,                                   	'mmioSetBuffer',\
    jmp_mmioSetInfo,                                     	'mmioSetInfo',\
    jmp_mmioStringToFOURCCA,                             	'mmioStringToFOURCCA',\
    jmp_mmioStringToFOURCCW,                             	'mmioStringToFOURCCW',\
    jmp_mmioWrite,                                       	'mmioWrite',\
    jmp_mmsystemGetVersion,                              	'mmsystemGetVersion',\
    jmp_sndPlaySoundA,                                   	'sndPlaySoundA',\
    jmp_sndPlaySoundW,                                   	'sndPlaySoundW',\
    jmp_timeBeginPeriod,                                 	'timeBeginPeriod',\
    jmp_timeEndPeriod,                                   	'timeEndPeriod',\
    jmp_timeGetDevCaps,                                  	'timeGetDevCaps',\
    jmp_timeGetSystemTime,                               	'timeGetSystemTime',\
    jmp_timeGetTime,                                     	'timeGetTime',\
    jmp_timeKillEvent,                                   	'timeKillEvent',\
    jmp_timeSetEvent,                                    	'timeSetEvent',\
    jmp_waveInAddBuffer,                                 	'waveInAddBuffer',\
    jmp_waveInClose,                                     	'waveInClose',\
    jmp_waveInGetDevCapsA,                               	'waveInGetDevCapsA',\
    jmp_waveInGetDevCapsW,                               	'waveInGetDevCapsW',\
    jmp_waveInGetErrorTextA,                             	'waveInGetErrorTextA',\
    jmp_waveInGetErrorTextW,                             	'waveInGetErrorTextW',\
    jmp_waveInGetID,                                     	'waveInGetID',\
    jmp_waveInGetNumDevs,                                	'waveInGetNumDevs',\
    jmp_waveInGetPosition,                               	'waveInGetPosition',\
    jmp_waveInMessage,                                   	'waveInMessage',\
    jmp_waveInOpen,                                      	'waveInOpen',\
    jmp_waveInPrepareHeader,                             	'waveInPrepareHeader',\
    jmp_waveInReset,                                     	'waveInReset',\
    jmp_waveInStart,                                     	'waveInStart',\
    jmp_waveInStop,                                      	'waveInStop',\
    jmp_waveInUnprepareHeader,                           	'waveInUnprepareHeader',\
    jmp_waveOutBreakLoop,                                	'waveOutBreakLoop',\
    jmp_waveOutClose,                                    	'waveOutClose',\
    jmp_waveOutGetDevCapsA,                              	'waveOutGetDevCapsA',\
    jmp_waveOutGetDevCapsW,                              	'waveOutGetDevCapsW',\
    jmp_waveOutGetErrorTextA,                            	'waveOutGetErrorTextA',\
    jmp_waveOutGetErrorTextW,                            	'waveOutGetErrorTextW',\
    jmp_waveOutGetID,                                    	'waveOutGetID',\
    jmp_waveOutGetNumDevs,                               	'waveOutGetNumDevs',\
    jmp_waveOutGetPitch,                                 	'waveOutGetPitch',\
    jmp_waveOutGetPlaybackRate,                          	'waveOutGetPlaybackRate',\
    jmp_waveOutGetPosition,                              	'waveOutGetPosition',\
    jmp_waveOutGetVolume,                                	'waveOutGetVolume',\
    jmp_waveOutMessage,                                  	'waveOutMessage',\
    jmp_waveOutOpen,                                     	'waveOutOpen',\
    jmp_waveOutPause,                                    	'waveOutPause',\
    jmp_waveOutPrepareHeader,                            	'waveOutPrepareHeader',\
    jmp_waveOutReset,                                    	'waveOutReset',\
    jmp_waveOutRestart,                                  	'waveOutRestart',\
    jmp_waveOutSetPitch,                                 	'waveOutSetPitch',\
    jmp_waveOutSetPlaybackRate,                          	'waveOutSetPlaybackRate',\
    jmp_waveOutSetVolume,                                	'waveOutSetVolume',\
    jmp_waveOutUnprepareHeader,                          	'waveOutUnprepareHeader',\
    jmp_waveOutWrite,                                    	'waveOutWrite'



section '.reloc' fixups data readable discardable