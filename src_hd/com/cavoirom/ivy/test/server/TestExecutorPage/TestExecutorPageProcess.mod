[Ivy]
16B53BF392A7A865 3.20 #module
>Proto >Proto Collection #zClass
Ts0 TestExecutorPageProcess Big #zClass
Ts0 RD #cInfo
Ts0 #process
Ts0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ts0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ts0 @TextInP .resExport .resExport #zField
Ts0 @TextInP .type .type #zField
Ts0 @TextInP .processKind .processKind #zField
Ts0 @AnnotationInP-0n ai ai #zField
Ts0 @MessageFlowInP-0n messageIn messageIn #zField
Ts0 @MessageFlowOutP-0n messageOut messageOut #zField
Ts0 @TextInP .xml .xml #zField
Ts0 @TextInP .responsibility .responsibility #zField
Ts0 @RichDialogInitStart f0 '' #zField
Ts0 @RichDialogProcessEnd f1 '' #zField
Ts0 @PushWFArc f2 '' #zField
Ts0 @RichDialogMethodStart f3 '' #zField
Ts0 @RichDialogProcessEnd f4 '' #zField
Ts0 @GridStep f6 '' #zField
Ts0 @PushWFArc f7 '' #zField
Ts0 @PushWFArc f5 '' #zField
>Proto Ts0 Ts0 TestExecutorPageProcess #zField
Ts0 f0 guid 16B53BF3AE5F04EA #txt
Ts0 f0 type com.cavoirom.ivy.test.server.TestExecutorPage.TestExecutorPageData #txt
Ts0 f0 method start(String,String) #txt
Ts0 f0 disableUIEvents true #txt
Ts0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String testClassPath,java.lang.String moduleName> param = methodEvent.getInputArguments();
' #txt
Ts0 f0 inActionCode 'out.testClassPath = param.testClassPath;
out.moduleName = param.moduleName;' #txt
Ts0 f0 outParameterDecl '<> result;
' #txt
Ts0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
        <nameStyle>7,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f0 179 51 26 26 -20 15 #rect
Ts0 f0 @|RichDialogInitStartIcon #fIcon
Ts0 f1 type com.cavoirom.ivy.test.server.TestExecutorPage.TestExecutorPageData #txt
Ts0 f1 467 51 26 26 0 12 #rect
Ts0 f1 @|RichDialogProcessEndIcon #fIcon
Ts0 f2 expr out #txt
Ts0 f2 205 64 467 64 #arcP
Ts0 f3 guid 16B53C3F58E1454F #txt
Ts0 f3 type com.cavoirom.ivy.test.server.TestExecutorPage.TestExecutorPageData #txt
Ts0 f3 method handleTestExecution(javax.faces.event.PreRenderViewEvent) #txt
Ts0 f3 disableUIEvents false #txt
Ts0 f3 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<javax.faces.event.PreRenderViewEvent event> param = methodEvent.getInputArguments();
' #txt
Ts0 f3 outParameterDecl '<> result;
' #txt
Ts0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>handleTestExecution(PreRenderViewEvent)</name>
        <nameStyle>39,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f3 179 179 26 26 -135 15 #rect
Ts0 f3 @|RichDialogMethodStartIcon #fIcon
Ts0 f4 type com.cavoirom.ivy.test.server.TestExecutorPage.TestExecutorPageData #txt
Ts0 f4 467 179 26 26 0 12 #rect
Ts0 f4 @|RichDialogProcessEndIcon #fIcon
Ts0 f6 actionDecl 'com.cavoirom.ivy.test.server.TestExecutorPage.TestExecutorPageData out;
' #txt
Ts0 f6 actionTable 'out=in;
' #txt
Ts0 f6 actionCode 'import com.cavoirom.ivy.test.server.IvyTestExecutor;

IvyTestExecutor executor = new IvyTestExecutor();
in.testResult = executor.execute(in.testClassPath, in.moduleName).toJson();' #txt
Ts0 f6 security system #txt
Ts0 f6 type com.cavoirom.ivy.test.server.TestExecutorPage.TestExecutorPageData #txt
Ts0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>execute</name>
        <nameStyle>7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ts0 f6 280 170 112 44 -25 -7 #rect
Ts0 f6 @|StepIcon #fIcon
Ts0 f7 expr out #txt
Ts0 f7 205 192 280 192 #arcP
Ts0 f5 expr out #txt
Ts0 f5 392 192 467 192 #arcP
>Proto Ts0 .type com.cavoirom.ivy.test.server.TestExecutorPage.TestExecutorPageData #txt
>Proto Ts0 .processKind HTML_DIALOG #txt
>Proto Ts0 -8 -8 16 16 16 26 #rect
>Proto Ts0 '' #fIcon
Ts0 f0 mainOut f2 tail #connect
Ts0 f2 head f1 mainIn #connect
Ts0 f3 mainOut f7 tail #connect
Ts0 f7 head f6 mainIn #connect
Ts0 f6 mainOut f5 tail #connect
Ts0 f5 head f4 mainIn #connect
