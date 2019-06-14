[Ivy]
16B53B3E6F6E3E12 3.20 #module
>Proto >Proto Collection #zClass
Tr0 TestExecutor Big #zClass
Tr0 B #cInfo
Tr0 #process
Tr0 @TextInP .resExport .resExport #zField
Tr0 @TextInP .type .type #zField
Tr0 @TextInP .processKind .processKind #zField
Tr0 @AnnotationInP-0n ai ai #zField
Tr0 @MessageFlowInP-0n messageIn messageIn #zField
Tr0 @MessageFlowOutP-0n messageOut messageOut #zField
Tr0 @TextInP .xml .xml #zField
Tr0 @TextInP .responsibility .responsibility #zField
Tr0 @StartRequest f0 '' #zField
Tr0 @EndTask f1 '' #zField
Tr0 @RichDialog f3 '' #zField
Tr0 @PushWFArc f4 '' #zField
Tr0 @PushWFArc f2 '' #zField
>Proto Tr0 Tr0 TestExecutor #zField
Tr0 f0 outLink start.ivp #txt
Tr0 f0 type com.cavoirom.ivy.test.server.TestExecutorData #txt
Tr0 f0 inParamDecl '<java.lang.String testClassPath,java.lang.String moduleName> param;' #txt
Tr0 f0 inParamTable 'out.moduleName=param.moduleName;
out.testClassPath=param.testClassPath;
' #txt
Tr0 f0 actionDecl 'com.cavoirom.ivy.test.server.TestExecutorData out;
' #txt
Tr0 f0 guid 16B53B3E78D43115 #txt
Tr0 f0 requestEnabled true #txt
Tr0 f0 triggerEnabled false #txt
Tr0 f0 callSignature start(String,String) #txt
Tr0 f0 persist false #txt
Tr0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Tr0 f0 caseData businessCase.attach=true #txt
Tr0 f0 showInStartList 1 #txt
Tr0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Tr0 f0 @C|.responsibility Everybody #txt
Tr0 f0 145 113 30 30 -25 17 #rect
Tr0 f0 @|StartRequestIcon #fIcon
Tr0 f1 type com.cavoirom.ivy.test.server.TestExecutorData #txt
Tr0 f1 401 113 30 30 0 15 #rect
Tr0 f1 @|EndIcon #fIcon
Tr0 f3 targetWindow NEW #txt
Tr0 f3 targetDisplay TOP #txt
Tr0 f3 richDialogId com.cavoirom.ivy.test.server.TestExecutorPage #txt
Tr0 f3 startMethod start(String,String) #txt
Tr0 f3 type com.cavoirom.ivy.test.server.TestExecutorData #txt
Tr0 f3 requestActionDecl '<String testClassPath, String moduleName> param;' #txt
Tr0 f3 requestActionCode 'param.testClassPath = in.testClassPath;
param.moduleName = in.moduleName;' #txt
Tr0 f3 responseActionDecl 'com.cavoirom.ivy.test.server.TestExecutorData out;
' #txt
Tr0 f3 responseMappingAction 'out=in;
' #txt
Tr0 f3 isAsynch false #txt
Tr0 f3 isInnerRd false #txt
Tr0 f3 userContext '* ' #txt
Tr0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>TestExecutorPage</name>
        <nameStyle>16
</nameStyle>
    </language>
</elementInfo>
' #txt
Tr0 f3 224 106 128 44 -57 -7 #rect
Tr0 f3 @|RichDialogIcon #fIcon
Tr0 f4 expr out #txt
Tr0 f4 175 128 224 128 #arcP
Tr0 f2 expr out #txt
Tr0 f2 352 128 401 128 #arcP
>Proto Tr0 .type com.cavoirom.ivy.test.server.TestExecutorData #txt
>Proto Tr0 .processKind NORMAL #txt
>Proto Tr0 0 0 32 24 18 0 #rect
>Proto Tr0 @|BIcon #fIcon
Tr0 f0 mainOut f4 tail #connect
Tr0 f4 head f3 mainIn #connect
Tr0 f3 mainOut f2 tail #connect
Tr0 f2 head f1 mainIn #connect
