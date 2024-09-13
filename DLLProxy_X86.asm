format PE GUI 6.0 DLL


include 'win32wx.inc'

macro LoadApi handle,name,address
{
    invoke GetProcAddress,  handle, name
    mov dword [address],eax
}

align 16
.code

proc LoadOrigExports stdcall uses esi edi, hinstDLL 
    local @dllName[MAX_PATH]:TCHAR
    local @sysPath[MAX_PATH]:TCHAR
    local @fullName[MAX_PATH]:TCHAR
    
    lea esi,[@dllName]
    invoke GetModuleFileName,[hinstDLL],esi,MAX_PATH
    invoke PathStripPath,esi
    
    lea edi,[@sysPath] 
    invoke GetSystemDirectory,edi,MAX_PATH
    invoke PathCombine,addr @fullName,edi,esi
    .if eax = 0
        ret
    .endif
    
    invoke LoadLibrary,eax
    .if eax = 0
        ret
    .endif
     
    mov esi,eax
     
    LoadApi esi	,	api_CloseDriver                                     	,	addr_CloseDriver                                     
    LoadApi esi	,	api_DefDriverProc                                   	,	addr_DefDriverProc                                   
    LoadApi esi	,	api_DllCanUnloadNow                                 	,	addr_DllCanUnloadNow                                 
    LoadApi esi	,	api_DllGetClassObject                               	,	addr_DllGetClassObject                               
    LoadApi esi	,	api_DllRegisterServer                               	,	addr_DllRegisterServer                               
    LoadApi esi	,	api_DllUnregisterServer                             	,	addr_DllUnregisterServer                             
    LoadApi esi	,	api_DriverCallback                                  	,	addr_DriverCallback                                  
    LoadApi esi	,	api_DrvClose                                        	,	addr_DrvClose                                        
    LoadApi esi	,	api_DrvDefDriverProc                                	,	addr_DrvDefDriverProc                                
    LoadApi esi	,	api_DrvGetModuleHandle                              	,	addr_DrvGetModuleHandle                              
    LoadApi esi	,	api_DrvOpen                                         	,	addr_DrvOpen                                         
    LoadApi esi	,	api_DrvOpenA                                        	,	addr_DrvOpenA                                        
    LoadApi esi	,	api_DrvSendMessage                                  	,	addr_DrvSendMessage                                  
    LoadApi esi	,	api_GetDriverFlags                                  	,	addr_GetDriverFlags                                  
    LoadApi esi	,	api_GetDriverModuleHandle                           	,	addr_GetDriverModuleHandle                           
    LoadApi esi	,	api_GetFileVersionInfoA                             	,	addr_GetFileVersionInfoA                             
    LoadApi esi	,	api_GetFileVersionInfoExA                           	,	addr_GetFileVersionInfoExA                           
    LoadApi esi	,	api_GetFileVersionInfoExW                           	,	addr_GetFileVersionInfoExW                           
    LoadApi esi	,	api_GetFileVersionInfoSizeA                         	,	addr_GetFileVersionInfoSizeA                         
    LoadApi esi	,	api_GetFileVersionInfoSizeExA                       	,	addr_GetFileVersionInfoSizeExA                       
    LoadApi esi	,	api_GetFileVersionInfoSizeExW                       	,	addr_GetFileVersionInfoSizeExW                       
    LoadApi esi	,	api_GetFileVersionInfoSizeW                         	,	addr_GetFileVersionInfoSizeW                         
    LoadApi esi	,	api_GetFileVersionInfoW                             	,	addr_GetFileVersionInfoW                             
    LoadApi esi	,	api_OpenDriver                                      	,	addr_OpenDriver                                      
    LoadApi esi	,	api_OpenDriverA                                     	,	addr_OpenDriverA                                     
    LoadApi esi	,	api_PlaySound                                       	,	addr_PlaySound                                       
    LoadApi esi	,	api_PlaySoundA                                      	,	addr_PlaySoundA                                      
    LoadApi esi	,	api_PlaySoundW                                      	,	addr_PlaySoundW                                      
    LoadApi esi	,	api_SendDriverMessage                               	,	addr_SendDriverMessage                               
    LoadApi esi	,	api_VerFindFileA                                    	,	addr_VerFindFileA                                    
    LoadApi esi	,	api_VerFindFileW                                    	,	addr_VerFindFileW                                    
    LoadApi esi	,	api_VerInstallFileA                                 	,	addr_VerInstallFileA                                 
    LoadApi esi	,	api_VerInstallFileW                                 	,	addr_VerInstallFileW                                 
    LoadApi esi	,	api_VerLanguageNameA                                	,	addr_VerLanguageNameA                                
    LoadApi esi	,	api_VerLanguageNameW                                	,	addr_VerLanguageNameW                                
    LoadApi esi	,	api_VerQueryValueA                                  	,	addr_VerQueryValueA                                  
    LoadApi esi	,	api_VerQueryValueW                                  	,	addr_VerQueryValueW                                  
    LoadApi esi	,	api_WinHttpAddRequestHeaders                        	,	addr_WinHttpAddRequestHeaders                        
    LoadApi esi	,	api_WinHttpCheckPlatform                            	,	addr_WinHttpCheckPlatform                            
    LoadApi esi	,	api_WinHttpCloseHandle                              	,	addr_WinHttpCloseHandle                              
    LoadApi esi	,	api_WinHttpConnect                                  	,	addr_WinHttpConnect                                  
    LoadApi esi	,	api_WinHttpCrackUrl                                 	,	addr_WinHttpCrackUrl                                 
    LoadApi esi	,	api_WinHttpCreateProxyResolver                      	,	addr_WinHttpCreateProxyResolver                      
    LoadApi esi	,	api_WinHttpCreateUrl                                	,	addr_WinHttpCreateUrl                                
    LoadApi esi	,	api_WinHttpDetectAutoProxyConfigUrl                 	,	addr_WinHttpDetectAutoProxyConfigUrl                 
    LoadApi esi	,	api_WinHttpFreeProxyResult                          	,	addr_WinHttpFreeProxyResult                          
    LoadApi esi	,	api_WinHttpFreeProxyResultEx                        	,	addr_WinHttpFreeProxyResultEx                        
    LoadApi esi	,	api_WinHttpFreeProxySettings                        	,	addr_WinHttpFreeProxySettings                        
    LoadApi esi	,	api_WinHttpGetDefaultProxyConfiguration             	,	addr_WinHttpGetDefaultProxyConfiguration             
    LoadApi esi	,	api_WinHttpGetIEProxyConfigForCurrentUser           	,	addr_WinHttpGetIEProxyConfigForCurrentUser           
    LoadApi esi	,	api_WinHttpGetProxyForUrl                           	,	addr_WinHttpGetProxyForUrl                           
    LoadApi esi	,	api_WinHttpGetProxyForUrlEx                         	,	addr_WinHttpGetProxyForUrlEx                         
    LoadApi esi	,	api_WinHttpGetProxyForUrlEx2                        	,	addr_WinHttpGetProxyForUrlEx2                        
    LoadApi esi	,	api_WinHttpGetProxyResult                           	,	addr_WinHttpGetProxyResult                           
    LoadApi esi	,	api_WinHttpGetProxyResultEx                         	,	addr_WinHttpGetProxyResultEx                         
    LoadApi esi	,	api_WinHttpGetProxySettingsVersion                  	,	addr_WinHttpGetProxySettingsVersion                  
    LoadApi esi	,	api_WinHttpOpen                                     	,	addr_WinHttpOpen                                     
    LoadApi esi	,	api_WinHttpOpenRequest                              	,	addr_WinHttpOpenRequest                              
    LoadApi esi	,	api_WinHttpQueryAuthSchemes                         	,	addr_WinHttpQueryAuthSchemes                         
    LoadApi esi	,	api_WinHttpQueryDataAvailable                       	,	addr_WinHttpQueryDataAvailable                       
    LoadApi esi	,	api_WinHttpQueryHeaders                             	,	addr_WinHttpQueryHeaders                             
    LoadApi esi	,	api_WinHttpQueryOption                              	,	addr_WinHttpQueryOption                              
    LoadApi esi	,	api_WinHttpReadData                                 	,	addr_WinHttpReadData                                 
    LoadApi esi	,	api_WinHttpReadProxySettings                        	,	addr_WinHttpReadProxySettings                        
    LoadApi esi	,	api_WinHttpReceiveResponse                          	,	addr_WinHttpReceiveResponse                          
    LoadApi esi	,	api_WinHttpResetAutoProxy                           	,	addr_WinHttpResetAutoProxy                           
    LoadApi esi	,	api_WinHttpSendRequest                              	,	addr_WinHttpSendRequest                              
    LoadApi esi	,	api_WinHttpSetCredentials                           	,	addr_WinHttpSetCredentials                           
    LoadApi esi	,	api_WinHttpSetDefaultProxyConfiguration             	,	addr_WinHttpSetDefaultProxyConfiguration             
    LoadApi esi	,	api_WinHttpSetOption                                	,	addr_WinHttpSetOption                                
    LoadApi esi	,	api_WinHttpSetStatusCallback                        	,	addr_WinHttpSetStatusCallback                        
    LoadApi esi	,	api_WinHttpSetTimeouts                              	,	addr_WinHttpSetTimeouts                              
    LoadApi esi	,	api_WinHttpTimeFromSystemTime                       	,	addr_WinHttpTimeFromSystemTime                       
    LoadApi esi	,	api_WinHttpTimeToSystemTime                         	,	addr_WinHttpTimeToSystemTime                         
    LoadApi esi	,	api_WinHttpWebSocketClose                           	,	addr_WinHttpWebSocketClose                           
    LoadApi esi	,	api_WinHttpWebSocketCompleteUpgrade                 	,	addr_WinHttpWebSocketCompleteUpgrade                 
    LoadApi esi	,	api_WinHttpWebSocketQueryCloseStatus                	,	addr_WinHttpWebSocketQueryCloseStatus                
    LoadApi esi	,	api_WinHttpWebSocketReceive                         	,	addr_WinHttpWebSocketReceive                         
    LoadApi esi	,	api_WinHttpWebSocketSend                            	,	addr_WinHttpWebSocketSend                            
    LoadApi esi	,	api_WinHttpWebSocketShutdown                        	,	addr_WinHttpWebSocketShutdown                        
    LoadApi esi	,	api_WinHttpWriteData                                	,	addr_WinHttpWriteData                                
    LoadApi esi	,	api_WinHttpWriteProxySettings                       	,	addr_WinHttpWriteProxySettings                       
    LoadApi esi	,	api_auxGetDevCapsA                                  	,	addr_auxGetDevCapsA                                  
    LoadApi esi	,	api_auxGetDevCapsW                                  	,	addr_auxGetDevCapsW                                  
    LoadApi esi	,	api_auxGetNumDevs                                   	,	addr_auxGetNumDevs                                   
    LoadApi esi	,	api_auxGetVolume                                    	,	addr_auxGetVolume                                    
    LoadApi esi	,	api_auxOutMessage                                   	,	addr_auxOutMessage                                   
    LoadApi esi	,	api_auxSetVolume                                    	,	addr_auxSetVolume                                    
    LoadApi esi	,	api_joyConfigChanged                                	,	addr_joyConfigChanged                                
    LoadApi esi	,	api_joyGetDevCapsA                                  	,	addr_joyGetDevCapsA                                  
    LoadApi esi	,	api_joyGetDevCapsW                                  	,	addr_joyGetDevCapsW                                  
    LoadApi esi	,	api_joyGetNumDevs                                   	,	addr_joyGetNumDevs                                   
    LoadApi esi	,	api_joyGetPos                                       	,	addr_joyGetPos                                       
    LoadApi esi	,	api_joyGetPosEx                                     	,	addr_joyGetPosEx                                     
    LoadApi esi	,	api_joyGetThreshold                                 	,	addr_joyGetThreshold                                 
    LoadApi esi	,	api_joyReleaseCapture                               	,	addr_joyReleaseCapture                               
    LoadApi esi	,	api_joySetCapture                                   	,	addr_joySetCapture                                   
    LoadApi esi	,	api_joySetThreshold                                 	,	addr_joySetThreshold                                 
    LoadApi esi	,	api_mciDriverNotify                                 	,	addr_mciDriverNotify                                 
    LoadApi esi	,	api_mciDriverYield                                  	,	addr_mciDriverYield                                  
    LoadApi esi	,	api_mciExecute                                      	,	addr_mciExecute                                      
    LoadApi esi	,	api_mciFreeCommandResource                          	,	addr_mciFreeCommandResource                          
    LoadApi esi	,	api_mciGetCreatorTask                               	,	addr_mciGetCreatorTask                               
    LoadApi esi	,	api_mciGetDeviceIDA                                 	,	addr_mciGetDeviceIDA                                 
    LoadApi esi	,	api_mciGetDeviceIDFromElementIDA                    	,	addr_mciGetDeviceIDFromElementIDA                    
    LoadApi esi	,	api_mciGetDeviceIDFromElementIDW                    	,	addr_mciGetDeviceIDFromElementIDW                    
    LoadApi esi	,	api_mciGetDeviceIDW                                 	,	addr_mciGetDeviceIDW                                 
    LoadApi esi	,	api_mciGetDriverData                                	,	addr_mciGetDriverData                                
    LoadApi esi	,	api_mciGetErrorStringA                              	,	addr_mciGetErrorStringA                              
    LoadApi esi	,	api_mciGetErrorStringW                              	,	addr_mciGetErrorStringW                              
    LoadApi esi	,	api_mciGetYieldProc                                 	,	addr_mciGetYieldProc                                 
    LoadApi esi	,	api_mciLoadCommandResource                          	,	addr_mciLoadCommandResource                          
    LoadApi esi	,	api_mciSendCommandA                                 	,	addr_mciSendCommandA                                 
    LoadApi esi	,	api_mciSendCommandW                                 	,	addr_mciSendCommandW                                 
    LoadApi esi	,	api_mciSendStringA                                  	,	addr_mciSendStringA                                  
    LoadApi esi	,	api_mciSendStringW                                  	,	addr_mciSendStringW                                  
    LoadApi esi	,	api_mciSetDriverData                                	,	addr_mciSetDriverData                                
    LoadApi esi	,	api_mciSetYieldProc                                 	,	addr_mciSetYieldProc                                 
    LoadApi esi	,	api_midiConnect                                     	,	addr_midiConnect                                     
    LoadApi esi	,	api_midiDisconnect                                  	,	addr_midiDisconnect                                  
    LoadApi esi	,	api_midiInAddBuffer                                 	,	addr_midiInAddBuffer                                 
    LoadApi esi	,	api_midiInClose                                     	,	addr_midiInClose                                     
    LoadApi esi	,	api_midiInGetDevCapsA                               	,	addr_midiInGetDevCapsA                               
    LoadApi esi	,	api_midiInGetDevCapsW                               	,	addr_midiInGetDevCapsW                               
    LoadApi esi	,	api_midiInGetErrorTextA                             	,	addr_midiInGetErrorTextA                             
    LoadApi esi	,	api_midiInGetErrorTextW                             	,	addr_midiInGetErrorTextW                             
    LoadApi esi	,	api_midiInGetID                                     	,	addr_midiInGetID                                     
    LoadApi esi	,	api_midiInGetNumDevs                                	,	addr_midiInGetNumDevs                                
    LoadApi esi	,	api_midiInMessage                                   	,	addr_midiInMessage                                   
    LoadApi esi	,	api_midiInOpen                                      	,	addr_midiInOpen                                      
    LoadApi esi	,	api_midiInPrepareHeader                             	,	addr_midiInPrepareHeader                             
    LoadApi esi	,	api_midiInReset                                     	,	addr_midiInReset                                     
    LoadApi esi	,	api_midiInStart                                     	,	addr_midiInStart                                     
    LoadApi esi	,	api_midiInStop                                      	,	addr_midiInStop                                      
    LoadApi esi	,	api_midiInUnprepareHeader                           	,	addr_midiInUnprepareHeader                           
    LoadApi esi	,	api_midiOutCacheDrumPatches                         	,	addr_midiOutCacheDrumPatches                         
    LoadApi esi	,	api_midiOutCachePatches                             	,	addr_midiOutCachePatches                             
    LoadApi esi	,	api_midiOutClose                                    	,	addr_midiOutClose                                    
    LoadApi esi	,	api_midiOutGetDevCapsA                              	,	addr_midiOutGetDevCapsA                              
    LoadApi esi	,	api_midiOutGetDevCapsW                              	,	addr_midiOutGetDevCapsW                              
    LoadApi esi	,	api_midiOutGetErrorTextA                            	,	addr_midiOutGetErrorTextA                            
    LoadApi esi	,	api_midiOutGetErrorTextW                            	,	addr_midiOutGetErrorTextW                            
    LoadApi esi	,	api_midiOutGetID                                    	,	addr_midiOutGetID                                    
    LoadApi esi	,	api_midiOutGetNumDevs                               	,	addr_midiOutGetNumDevs                               
    LoadApi esi	,	api_midiOutGetVolume                                	,	addr_midiOutGetVolume                                
    LoadApi esi	,	api_midiOutLongMsg                                  	,	addr_midiOutLongMsg                                  
    LoadApi esi	,	api_midiOutMessage                                  	,	addr_midiOutMessage                                  
    LoadApi esi	,	api_midiOutOpen                                     	,	addr_midiOutOpen                                     
    LoadApi esi	,	api_midiOutPrepareHeader                            	,	addr_midiOutPrepareHeader                            
    LoadApi esi	,	api_midiOutReset                                    	,	addr_midiOutReset                                    
    LoadApi esi	,	api_midiOutSetVolume                                	,	addr_midiOutSetVolume                                
    LoadApi esi	,	api_midiOutShortMsg                                 	,	addr_midiOutShortMsg                                 
    LoadApi esi	,	api_midiOutUnprepareHeader                          	,	addr_midiOutUnprepareHeader                          
    LoadApi esi	,	api_midiStreamClose                                 	,	addr_midiStreamClose                                 
    LoadApi esi	,	api_midiStreamOpen                                  	,	addr_midiStreamOpen                                  
    LoadApi esi	,	api_midiStreamOut                                   	,	addr_midiStreamOut                                   
    LoadApi esi	,	api_midiStreamPause                                 	,	addr_midiStreamPause                                 
    LoadApi esi	,	api_midiStreamPosition                              	,	addr_midiStreamPosition                              
    LoadApi esi	,	api_midiStreamProperty                              	,	addr_midiStreamProperty                              
    LoadApi esi	,	api_midiStreamRestart                               	,	addr_midiStreamRestart                               
    LoadApi esi	,	api_midiStreamStop                                  	,	addr_midiStreamStop                                  
    LoadApi esi	,	api_mixerClose                                      	,	addr_mixerClose                                      
    LoadApi esi	,	api_mixerGetControlDetailsA                         	,	addr_mixerGetControlDetailsA                         
    LoadApi esi	,	api_mixerGetControlDetailsW                         	,	addr_mixerGetControlDetailsW                         
    LoadApi esi	,	api_mixerGetDevCapsA                                	,	addr_mixerGetDevCapsA                                
    LoadApi esi	,	api_mixerGetDevCapsW                                	,	addr_mixerGetDevCapsW                                
    LoadApi esi	,	api_mixerGetID                                      	,	addr_mixerGetID                                      
    LoadApi esi	,	api_mixerGetLineControlsA                           	,	addr_mixerGetLineControlsA                           
    LoadApi esi	,	api_mixerGetLineControlsW                           	,	addr_mixerGetLineControlsW                           
    LoadApi esi	,	api_mixerGetLineInfoA                               	,	addr_mixerGetLineInfoA                               
    LoadApi esi	,	api_mixerGetLineInfoW                               	,	addr_mixerGetLineInfoW                               
    LoadApi esi	,	api_mixerGetNumDevs                                 	,	addr_mixerGetNumDevs                                 
    LoadApi esi	,	api_mixerMessage                                    	,	addr_mixerMessage                                    
    LoadApi esi	,	api_mixerOpen                                       	,	addr_mixerOpen                                       
    LoadApi esi	,	api_mixerSetControlDetails                          	,	addr_mixerSetControlDetails                          
    LoadApi esi	,	api_mmGetCurrentTask                                	,	addr_mmGetCurrentTask                                
    LoadApi esi	,	api_mmTaskBlock                                     	,	addr_mmTaskBlock                                     
    LoadApi esi	,	api_mmTaskCreate                                    	,	addr_mmTaskCreate                                    
    LoadApi esi	,	api_mmTaskSignal                                    	,	addr_mmTaskSignal                                    
    LoadApi esi	,	api_mmTaskYield                                     	,	addr_mmTaskYield                                     
    LoadApi esi	,	api_mmioAdvance                                     	,	addr_mmioAdvance                                     
    LoadApi esi	,	api_mmioAscend                                      	,	addr_mmioAscend                                      
    LoadApi esi	,	api_mmioClose                                       	,	addr_mmioClose                                       
    LoadApi esi	,	api_mmioCreateChunk                                 	,	addr_mmioCreateChunk                                 
    LoadApi esi	,	api_mmioDescend                                     	,	addr_mmioDescend                                     
    LoadApi esi	,	api_mmioFlush                                       	,	addr_mmioFlush                                       
    LoadApi esi	,	api_mmioGetInfo                                     	,	addr_mmioGetInfo                                     
    LoadApi esi	,	api_mmioInstallIOProc16                             	,	addr_mmioInstallIOProc16                             
    LoadApi esi	,	api_mmioInstallIOProcA                              	,	addr_mmioInstallIOProcA                              
    LoadApi esi	,	api_mmioInstallIOProcW                              	,	addr_mmioInstallIOProcW                              
    LoadApi esi	,	api_mmioOpenA                                       	,	addr_mmioOpenA                                       
    LoadApi esi	,	api_mmioOpenW                                       	,	addr_mmioOpenW                                       
    LoadApi esi	,	api_mmioRead                                        	,	addr_mmioRead                                        
    LoadApi esi	,	api_mmioRenameA                                     	,	addr_mmioRenameA                                     
    LoadApi esi	,	api_mmioRenameW                                     	,	addr_mmioRenameW                                     
    LoadApi esi	,	api_mmioSeek                                        	,	addr_mmioSeek                                        
    LoadApi esi	,	api_mmioSendMessage                                 	,	addr_mmioSendMessage                                 
    LoadApi esi	,	api_mmioSetBuffer                                   	,	addr_mmioSetBuffer                                   
    LoadApi esi	,	api_mmioSetInfo                                     	,	addr_mmioSetInfo                                     
    LoadApi esi	,	api_mmioStringToFOURCCA                             	,	addr_mmioStringToFOURCCA                             
    LoadApi esi	,	api_mmioStringToFOURCCW                             	,	addr_mmioStringToFOURCCW                             
    LoadApi esi	,	api_mmioWrite                                       	,	addr_mmioWrite                                       
    LoadApi esi	,	api_mmsystemGetVersion                              	,	addr_mmsystemGetVersion                              
    LoadApi esi	,	api_sndPlaySoundA                                   	,	addr_sndPlaySoundA                                   
    LoadApi esi	,	api_sndPlaySoundW                                   	,	addr_sndPlaySoundW                                   
    LoadApi esi	,	api_timeBeginPeriod                                 	,	addr_timeBeginPeriod                                 
    LoadApi esi	,	api_timeEndPeriod                                   	,	addr_timeEndPeriod                                   
    LoadApi esi	,	api_timeGetDevCaps                                  	,	addr_timeGetDevCaps                                  
    LoadApi esi	,	api_timeGetSystemTime                               	,	addr_timeGetSystemTime                               
    LoadApi esi	,	api_timeGetTime                                     	,	addr_timeGetTime                                     
    LoadApi esi	,	api_timeKillEvent                                   	,	addr_timeKillEvent                                   
    LoadApi esi	,	api_timeSetEvent                                    	,	addr_timeSetEvent                                    
    LoadApi esi	,	api_waveInAddBuffer                                 	,	addr_waveInAddBuffer                                 
    LoadApi esi	,	api_waveInClose                                     	,	addr_waveInClose                                     
    LoadApi esi	,	api_waveInGetDevCapsA                               	,	addr_waveInGetDevCapsA                               
    LoadApi esi	,	api_waveInGetDevCapsW                               	,	addr_waveInGetDevCapsW                               
    LoadApi esi	,	api_waveInGetErrorTextA                             	,	addr_waveInGetErrorTextA                             
    LoadApi esi	,	api_waveInGetErrorTextW                             	,	addr_waveInGetErrorTextW                             
    LoadApi esi	,	api_waveInGetID                                     	,	addr_waveInGetID                                     
    LoadApi esi	,	api_waveInGetNumDevs                                	,	addr_waveInGetNumDevs                                
    LoadApi esi	,	api_waveInGetPosition                               	,	addr_waveInGetPosition                               
    LoadApi esi	,	api_waveInMessage                                   	,	addr_waveInMessage                                   
    LoadApi esi	,	api_waveInOpen                                      	,	addr_waveInOpen                                      
    LoadApi esi	,	api_waveInPrepareHeader                             	,	addr_waveInPrepareHeader                             
    LoadApi esi	,	api_waveInReset                                     	,	addr_waveInReset                                     
    LoadApi esi	,	api_waveInStart                                     	,	addr_waveInStart                                     
    LoadApi esi	,	api_waveInStop                                      	,	addr_waveInStop                                      
    LoadApi esi	,	api_waveInUnprepareHeader                           	,	addr_waveInUnprepareHeader                           
    LoadApi esi	,	api_waveOutBreakLoop                                	,	addr_waveOutBreakLoop                                
    LoadApi esi	,	api_waveOutClose                                    	,	addr_waveOutClose                                    
    LoadApi esi	,	api_waveOutGetDevCapsA                              	,	addr_waveOutGetDevCapsA                              
    LoadApi esi	,	api_waveOutGetDevCapsW                              	,	addr_waveOutGetDevCapsW                              
    LoadApi esi	,	api_waveOutGetErrorTextA                            	,	addr_waveOutGetErrorTextA                            
    LoadApi esi	,	api_waveOutGetErrorTextW                            	,	addr_waveOutGetErrorTextW                            
    LoadApi esi	,	api_waveOutGetID                                    	,	addr_waveOutGetID                                    
    LoadApi esi	,	api_waveOutGetNumDevs                               	,	addr_waveOutGetNumDevs                               
    LoadApi esi	,	api_waveOutGetPitch                                 	,	addr_waveOutGetPitch                                 
    LoadApi esi	,	api_waveOutGetPlaybackRate                          	,	addr_waveOutGetPlaybackRate                          
    LoadApi esi	,	api_waveOutGetPosition                              	,	addr_waveOutGetPosition                              
    LoadApi esi	,	api_waveOutGetVolume                                	,	addr_waveOutGetVolume                                
    LoadApi esi	,	api_waveOutMessage                                  	,	addr_waveOutMessage                                  
    LoadApi esi	,	api_waveOutOpen                                     	,	addr_waveOutOpen                                     
    LoadApi esi	,	api_waveOutPause                                    	,	addr_waveOutPause                                    
    LoadApi esi	,	api_waveOutPrepareHeader                            	,	addr_waveOutPrepareHeader                            
    LoadApi esi	,	api_waveOutReset                                    	,	addr_waveOutReset                                    
    LoadApi esi	,	api_waveOutRestart                                  	,	addr_waveOutRestart                                  
    LoadApi esi	,	api_waveOutSetPitch                                 	,	addr_waveOutSetPitch                                 
    LoadApi esi	,	api_waveOutSetPlaybackRate                          	,	addr_waveOutSetPlaybackRate                          
    LoadApi esi	,	api_waveOutSetVolume                                	,	addr_waveOutSetVolume                                
    LoadApi esi	,	api_waveOutUnprepareHeader                          	,	addr_waveOutUnprepareHeader                          
    LoadApi esi	,	api_waveOutWrite                                    	,	addr_waveOutWrite                                    

     ret
endp

align 16
proc LoadPlugin stdcall
    invoke LoadLibrary,<'Maple.dll',0>
    ret
endp

align 16
proc DllEntryPoint hinstDLL, reason, reserved
    .if [reason]=1
        push [hinstDLL]
        call LoadOrigExports
        call LoadPlugin
    .endif
    mov	eax,TRUE
    ret
endp

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
.end DllEntryPoint

align 16
addr_CloseDriver                                     	dd	?	

align 16
addr_DefDriverProc                                   	dd	?	

align 16
addr_DllCanUnloadNow                                 	dd	?	

align 16
addr_DllGetClassObject                               	dd	?	

align 16
addr_DllRegisterServer                               	dd	?	

align 16
addr_DllUnregisterServer                             	dd	?	

align 16
addr_DriverCallback                                  	dd	?	

align 16
addr_DrvClose                                        	dd	?	

align 16
addr_DrvDefDriverProc                                	dd	?	

align 16
addr_DrvGetModuleHandle                              	dd	?	

align 16
addr_DrvOpen                                         	dd	?	

align 16
addr_DrvOpenA                                        	dd	?	

align 16
addr_DrvSendMessage                                  	dd	?	

align 16
addr_GetDriverFlags                                  	dd	?	

align 16
addr_GetDriverModuleHandle                           	dd	?	

align 16
addr_GetFileVersionInfoA                             	dd	?	

align 16
addr_GetFileVersionInfoExA                           	dd	?	

align 16
addr_GetFileVersionInfoExW                           	dd	?	

align 16
addr_GetFileVersionInfoSizeA                         	dd	?	

align 16
addr_GetFileVersionInfoSizeExA                       	dd	?	

align 16
addr_GetFileVersionInfoSizeExW                       	dd	?	

align 16
addr_GetFileVersionInfoSizeW                         	dd	?	

align 16
addr_GetFileVersionInfoW                             	dd	?	

align 16
addr_OpenDriver                                      	dd	?	

align 16
addr_OpenDriverA                                     	dd	?	

align 16
addr_PlaySound                                       	dd	?	

align 16
addr_PlaySoundA                                      	dd	?	

align 16
addr_PlaySoundW                                      	dd	?	

align 16
addr_SendDriverMessage                               	dd	?	

align 16
addr_VerFindFileA                                    	dd	?	

align 16
addr_VerFindFileW                                    	dd	?	

align 16
addr_VerInstallFileA                                 	dd	?	

align 16
addr_VerInstallFileW                                 	dd	?	

align 16
addr_VerLanguageNameA                                	dd	?	

align 16
addr_VerLanguageNameW                                	dd	?	

align 16
addr_VerQueryValueA                                  	dd	?	

align 16
addr_VerQueryValueW                                  	dd	?	

align 16
addr_WinHttpAddRequestHeaders                        	dd	?	

align 16
addr_WinHttpCheckPlatform                            	dd	?	

align 16
addr_WinHttpCloseHandle                              	dd	?	

align 16
addr_WinHttpConnect                                  	dd	?	

align 16
addr_WinHttpCrackUrl                                 	dd	?	

align 16
addr_WinHttpCreateProxyResolver                      	dd	?	

align 16
addr_WinHttpCreateUrl                                	dd	?	

align 16
addr_WinHttpDetectAutoProxyConfigUrl                 	dd	?	

align 16
addr_WinHttpFreeProxyResult                          	dd	?	

align 16
addr_WinHttpFreeProxyResultEx                        	dd	?	

align 16
addr_WinHttpFreeProxySettings                        	dd	?	

align 16
addr_WinHttpGetDefaultProxyConfiguration             	dd	?	

align 16
addr_WinHttpGetIEProxyConfigForCurrentUser           	dd	?	

align 16
addr_WinHttpGetProxyForUrl                           	dd	?	

align 16
addr_WinHttpGetProxyForUrlEx                         	dd	?	

align 16
addr_WinHttpGetProxyForUrlEx2                        	dd	?	

align 16
addr_WinHttpGetProxyResult                           	dd	?	

align 16
addr_WinHttpGetProxyResultEx                         	dd	?	

align 16
addr_WinHttpGetProxySettingsVersion                  	dd	?	

align 16
addr_WinHttpOpen                                     	dd	?	

align 16
addr_WinHttpOpenRequest                              	dd	?	

align 16
addr_WinHttpQueryAuthSchemes                         	dd	?	

align 16
addr_WinHttpQueryDataAvailable                       	dd	?	

align 16
addr_WinHttpQueryHeaders                             	dd	?	

align 16
addr_WinHttpQueryOption                              	dd	?	

align 16
addr_WinHttpReadData                                 	dd	?	

align 16
addr_WinHttpReadProxySettings                        	dd	?	

align 16
addr_WinHttpReceiveResponse                          	dd	?	

align 16
addr_WinHttpResetAutoProxy                           	dd	?	

align 16
addr_WinHttpSendRequest                              	dd	?	

align 16
addr_WinHttpSetCredentials                           	dd	?	

align 16
addr_WinHttpSetDefaultProxyConfiguration             	dd	?	

align 16
addr_WinHttpSetOption                                	dd	?	

align 16
addr_WinHttpSetStatusCallback                        	dd	?	

align 16
addr_WinHttpSetTimeouts                              	dd	?	

align 16
addr_WinHttpTimeFromSystemTime                       	dd	?	

align 16
addr_WinHttpTimeToSystemTime                         	dd	?	

align 16
addr_WinHttpWebSocketClose                           	dd	?	

align 16
addr_WinHttpWebSocketCompleteUpgrade                 	dd	?	

align 16
addr_WinHttpWebSocketQueryCloseStatus                	dd	?	

align 16
addr_WinHttpWebSocketReceive                         	dd	?	

align 16
addr_WinHttpWebSocketSend                            	dd	?	

align 16
addr_WinHttpWebSocketShutdown                        	dd	?	

align 16
addr_WinHttpWriteData                                	dd	?	

align 16
addr_WinHttpWriteProxySettings                       	dd	?	

align 16
addr_auxGetDevCapsA                                  	dd	?	

align 16
addr_auxGetDevCapsW                                  	dd	?	

align 16
addr_auxGetNumDevs                                   	dd	?	

align 16
addr_auxGetVolume                                    	dd	?	

align 16
addr_auxOutMessage                                   	dd	?	

align 16
addr_auxSetVolume                                    	dd	?	

align 16
addr_joyConfigChanged                                	dd	?	

align 16
addr_joyGetDevCapsA                                  	dd	?	

align 16
addr_joyGetDevCapsW                                  	dd	?	

align 16
addr_joyGetNumDevs                                   	dd	?	

align 16
addr_joyGetPos                                       	dd	?	

align 16
addr_joyGetPosEx                                     	dd	?	

align 16
addr_joyGetThreshold                                 	dd	?	

align 16
addr_joyReleaseCapture                               	dd	?	

align 16
addr_joySetCapture                                   	dd	?	

align 16
addr_joySetThreshold                                 	dd	?	

align 16
addr_mciDriverNotify                                 	dd	?	

align 16
addr_mciDriverYield                                  	dd	?	

align 16
addr_mciExecute                                      	dd	?	

align 16
addr_mciFreeCommandResource                          	dd	?	

align 16
addr_mciGetCreatorTask                               	dd	?	

align 16
addr_mciGetDeviceIDA                                 	dd	?	

align 16
addr_mciGetDeviceIDFromElementIDA                    	dd	?	

align 16
addr_mciGetDeviceIDFromElementIDW                    	dd	?	

align 16
addr_mciGetDeviceIDW                                 	dd	?	

align 16
addr_mciGetDriverData                                	dd	?	

align 16
addr_mciGetErrorStringA                              	dd	?	

align 16
addr_mciGetErrorStringW                              	dd	?	

align 16
addr_mciGetYieldProc                                 	dd	?	

align 16
addr_mciLoadCommandResource                          	dd	?	

align 16
addr_mciSendCommandA                                 	dd	?	

align 16
addr_mciSendCommandW                                 	dd	?	

align 16
addr_mciSendStringA                                  	dd	?	

align 16
addr_mciSendStringW                                  	dd	?	

align 16
addr_mciSetDriverData                                	dd	?	

align 16
addr_mciSetYieldProc                                 	dd	?	

align 16
addr_midiConnect                                     	dd	?	

align 16
addr_midiDisconnect                                  	dd	?	

align 16
addr_midiInAddBuffer                                 	dd	?	

align 16
addr_midiInClose                                     	dd	?	

align 16
addr_midiInGetDevCapsA                               	dd	?	

align 16
addr_midiInGetDevCapsW                               	dd	?	

align 16
addr_midiInGetErrorTextA                             	dd	?	

align 16
addr_midiInGetErrorTextW                             	dd	?	

align 16
addr_midiInGetID                                     	dd	?	

align 16
addr_midiInGetNumDevs                                	dd	?	

align 16
addr_midiInMessage                                   	dd	?	

align 16
addr_midiInOpen                                      	dd	?	

align 16
addr_midiInPrepareHeader                             	dd	?	

align 16
addr_midiInReset                                     	dd	?	

align 16
addr_midiInStart                                     	dd	?	

align 16
addr_midiInStop                                      	dd	?	

align 16
addr_midiInUnprepareHeader                           	dd	?	

align 16
addr_midiOutCacheDrumPatches                         	dd	?	

align 16
addr_midiOutCachePatches                             	dd	?	

align 16
addr_midiOutClose                                    	dd	?	

align 16
addr_midiOutGetDevCapsA                              	dd	?	

align 16
addr_midiOutGetDevCapsW                              	dd	?	

align 16
addr_midiOutGetErrorTextA                            	dd	?	

align 16
addr_midiOutGetErrorTextW                            	dd	?	

align 16
addr_midiOutGetID                                    	dd	?	

align 16
addr_midiOutGetNumDevs                               	dd	?	

align 16
addr_midiOutGetVolume                                	dd	?	

align 16
addr_midiOutLongMsg                                  	dd	?	

align 16
addr_midiOutMessage                                  	dd	?	

align 16
addr_midiOutOpen                                     	dd	?	

align 16
addr_midiOutPrepareHeader                            	dd	?	

align 16
addr_midiOutReset                                    	dd	?	

align 16
addr_midiOutSetVolume                                	dd	?	

align 16
addr_midiOutShortMsg                                 	dd	?	

align 16
addr_midiOutUnprepareHeader                          	dd	?	

align 16
addr_midiStreamClose                                 	dd	?	

align 16
addr_midiStreamOpen                                  	dd	?	

align 16
addr_midiStreamOut                                   	dd	?	

align 16
addr_midiStreamPause                                 	dd	?	

align 16
addr_midiStreamPosition                              	dd	?	

align 16
addr_midiStreamProperty                              	dd	?	

align 16
addr_midiStreamRestart                               	dd	?	

align 16
addr_midiStreamStop                                  	dd	?	

align 16
addr_mixerClose                                      	dd	?	

align 16
addr_mixerGetControlDetailsA                         	dd	?	

align 16
addr_mixerGetControlDetailsW                         	dd	?	

align 16
addr_mixerGetDevCapsA                                	dd	?	

align 16
addr_mixerGetDevCapsW                                	dd	?	

align 16
addr_mixerGetID                                      	dd	?	

align 16
addr_mixerGetLineControlsA                           	dd	?	

align 16
addr_mixerGetLineControlsW                           	dd	?	

align 16
addr_mixerGetLineInfoA                               	dd	?	

align 16
addr_mixerGetLineInfoW                               	dd	?	

align 16
addr_mixerGetNumDevs                                 	dd	?	

align 16
addr_mixerMessage                                    	dd	?	

align 16
addr_mixerOpen                                       	dd	?	

align 16
addr_mixerSetControlDetails                          	dd	?	

align 16
addr_mmGetCurrentTask                                	dd	?	

align 16
addr_mmTaskBlock                                     	dd	?	

align 16
addr_mmTaskCreate                                    	dd	?	

align 16
addr_mmTaskSignal                                    	dd	?	

align 16
addr_mmTaskYield                                     	dd	?	

align 16
addr_mmioAdvance                                     	dd	?	

align 16
addr_mmioAscend                                      	dd	?	

align 16
addr_mmioClose                                       	dd	?	

align 16
addr_mmioCreateChunk                                 	dd	?	

align 16
addr_mmioDescend                                     	dd	?	

align 16
addr_mmioFlush                                       	dd	?	

align 16
addr_mmioGetInfo                                     	dd	?	

align 16
addr_mmioInstallIOProc16                             	dd	?	

align 16
addr_mmioInstallIOProcA                              	dd	?	

align 16
addr_mmioInstallIOProcW                              	dd	?	

align 16
addr_mmioOpenA                                       	dd	?	

align 16
addr_mmioOpenW                                       	dd	?	

align 16
addr_mmioRead                                        	dd	?	

align 16
addr_mmioRenameA                                     	dd	?	

align 16
addr_mmioRenameW                                     	dd	?	

align 16
addr_mmioSeek                                        	dd	?	

align 16
addr_mmioSendMessage                                 	dd	?	

align 16
addr_mmioSetBuffer                                   	dd	?	

align 16
addr_mmioSetInfo                                     	dd	?	

align 16
addr_mmioStringToFOURCCA                             	dd	?	

align 16
addr_mmioStringToFOURCCW                             	dd	?	

align 16
addr_mmioWrite                                       	dd	?	

align 16
addr_mmsystemGetVersion                              	dd	?	

align 16
addr_sndPlaySoundA                                   	dd	?	

align 16
addr_sndPlaySoundW                                   	dd	?	

align 16
addr_timeBeginPeriod                                 	dd	?	

align 16
addr_timeEndPeriod                                   	dd	?	

align 16
addr_timeGetDevCaps                                  	dd	?	

align 16
addr_timeGetSystemTime                               	dd	?	

align 16
addr_timeGetTime                                     	dd	?	

align 16
addr_timeKillEvent                                   	dd	?	

align 16
addr_timeSetEvent                                    	dd	?	

align 16
addr_waveInAddBuffer                                 	dd	?	

align 16
addr_waveInClose                                     	dd	?	

align 16
addr_waveInGetDevCapsA                               	dd	?	

align 16
addr_waveInGetDevCapsW                               	dd	?	

align 16
addr_waveInGetErrorTextA                             	dd	?	

align 16
addr_waveInGetErrorTextW                             	dd	?	

align 16
addr_waveInGetID                                     	dd	?	

align 16
addr_waveInGetNumDevs                                	dd	?	

align 16
addr_waveInGetPosition                               	dd	?	

align 16
addr_waveInMessage                                   	dd	?	

align 16
addr_waveInOpen                                      	dd	?	

align 16
addr_waveInPrepareHeader                             	dd	?	

align 16
addr_waveInReset                                     	dd	?	

align 16
addr_waveInStart                                     	dd	?	

align 16
addr_waveInStop                                      	dd	?	

align 16
addr_waveInUnprepareHeader                           	dd	?	

align 16
addr_waveOutBreakLoop                                	dd	?	

align 16
addr_waveOutClose                                    	dd	?	

align 16
addr_waveOutGetDevCapsA                              	dd	?	

align 16
addr_waveOutGetDevCapsW                              	dd	?	

align 16
addr_waveOutGetErrorTextA                            	dd	?	

align 16
addr_waveOutGetErrorTextW                            	dd	?	

align 16
addr_waveOutGetID                                    	dd	?	

align 16
addr_waveOutGetNumDevs                               	dd	?	

align 16
addr_waveOutGetPitch                                 	dd	?	

align 16
addr_waveOutGetPlaybackRate                          	dd	?	

align 16
addr_waveOutGetPosition                              	dd	?	

align 16
addr_waveOutGetVolume                                	dd	?	

align 16
addr_waveOutMessage                                  	dd	?	

align 16
addr_waveOutOpen                                     	dd	?	

align 16
addr_waveOutPause                                    	dd	?	

align 16
addr_waveOutPrepareHeader                            	dd	?	

align 16
addr_waveOutReset                                    	dd	?	

align 16
addr_waveOutRestart                                  	dd	?	

align 16
addr_waveOutSetPitch                                 	dd	?	

align 16
addr_waveOutSetPlaybackRate                          	dd	?	

align 16
addr_waveOutSetVolume                                	dd	?	

align 16
addr_waveOutUnprepareHeader                          	dd	?	

align 16
addr_waveOutWrite                                    	dd	?	

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