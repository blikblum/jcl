{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit JclWin;

interface

uses
  JclSynch, JclUnitVersioning, JclUnitVersioningProviders, JclNTFS, 
  JclPeImage, JclRegistry, JclSecurity, JclShell, JclStructStorage, 
  JclSvcCtrl, JclTask, JclTD32, JclTimeZones, JclWin32, JclWin32Ex, 
  JclWinMIDI, mscoree_TLB, mscorlib_TLB, MSHelpServices_TLB, MSTask, sevenzip, 
  Snmp, JclConsole, JclCppException, JclDebug, JclDebugSerialization, 
  JclDebugXMLDeserializer, JclDebugXMLSerializer, JclDotNet, JclHelpUtils, 
  JclHookExcept, JclLANMan, JclLocales, JclMetadata, JclMiscel, JclMsBuild, 
  JclMsdosSys, JclMultimedia, Hardlinks, JclAppInst, JclCIL, JclCLR, JclCOM, 
  JclWin32Process, LazarusPackageIntf;

implementation

procedure Register;
begin
end;

initialization
  RegisterPackage('JclWin', @Register);
end.
