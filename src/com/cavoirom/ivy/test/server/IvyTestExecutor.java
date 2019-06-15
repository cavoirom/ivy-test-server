package com.cavoirom.ivy.test.server;

import ch.ivyteam.ivy.application.IProcessModel;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.project.IvyProjectNavigationUtil;
import com.cavoirom.ivy.test.runner.TestResult;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;
import java.util.Optional;
import org.apache.commons.lang3.StringUtils;

@SuppressWarnings("restriction")
public class IvyTestExecutor {
  public TestResult execute(String testClassPath, String moduleName) {
    Objects.requireNonNull(testClassPath);
    Objects.requireNonNull(moduleName);
    TestResult result = new TestResult();
    try {
      ClassLoader testClassLoader = findTestClassLoader(moduleName);
      Class<?> testClass = getClass(testClassPath, testClassLoader);
      result = runTestClass(testClass);
    } catch (Exception ex) {
      Ivy.log().error("Fail to run test class: " + testClassPath, ex);
    }
    return result;
  }

  private ClassLoader findTestClassLoader(String moduleName) {
    return Optional.of(moduleName)
        .flatMap(
            item ->
                Ivy.wf().getApplication().getProcessModels().stream()
                    .filter(pm -> StringUtils.equals(pm.getName(), item))
                    .findFirst())
        .map(IProcessModel::getReleasedProcessModelVersion)
        .map(pmv -> IvyProjectNavigationUtil.getIvyProject(pmv).getProjectClassLoader())
        .orElse(this.getClass().getClassLoader());
  }

  private Class<?> getClass(String testClassPath, ClassLoader testClassLoader)
      throws ClassNotFoundException {
    return Class.forName(testClassPath, true, testClassLoader);
  }

  @SuppressWarnings("unchecked")
  private TestResult runTestClass(Class<?> testClass)
      throws IllegalAccessException, InstantiationException, ClassNotFoundException,
          NoSuchMethodException, InvocationTargetException {
    /*
     * <code>
     * JUnitCore junit = new JUnitCore();
     * TestResultListener testResultListener = new TestResultListener();
     * junit.addListener(testResultListener);
     * junit.run(testClass);
     * return testResultListener.getTestResult();
     * </code>
     *
     * Because the class loaders are different, cause the Test annotation cannot be detected in
     * test case. The code above need to be re-implemented in reflection.
     *
     */
    ClassLoader testClassLoader = testClass.getClassLoader();
    Class<Object> junitClass =
        (Class<Object>) getClass("org.junit.runner.JUnitCore", testClassLoader);
    Object junit = junitClass.newInstance();
    Class<Object> testResultListenerClass =
        (Class<Object>)
            getClass("com.cavoirom.ivy.test.runner.TestResultListener", testClassLoader);
    Object testResultListener = testResultListenerClass.newInstance();
    junitClass
        .getMethod(
            "addListener", getClass("org.junit.runner.notification.RunListener", testClassLoader))
        .invoke(junit, testResultListener);
    junitClass.getMethod("run", Class[].class).invoke(junit, (Object) new Class[] {testClass});
    Object testResult =
        testResultListenerClass.getMethod("getTestResult").invoke(testResultListener);
    String testResultJson = (String) testResult.getClass().getMethod("toJson").invoke(testResult);
    return TestResult.fromJson(testResultJson);
  }
}
