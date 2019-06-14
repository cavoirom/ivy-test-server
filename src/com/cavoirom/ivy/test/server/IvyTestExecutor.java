package com.cavoirom.ivy.test.server;

import java.util.Objects;
import java.util.Optional;

import org.apache.commons.lang3.StringUtils;
import org.junit.runner.JUnitCore;

import ch.ivyteam.ivy.application.IProcessModel;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.project.IvyProjectNavigationUtil;

import com.cavoirom.ivy.test.runner.TestResult;

@SuppressWarnings("restriction")
public class IvyTestExecutor {
  public TestResult execute(String testClassPath, String moduleName) {
    Objects.requireNonNull(testClassPath);
    Objects.requireNonNull(moduleName);
    TestResult result = new TestResult();
    try {
      ClassLoader testRunnerClassLoader = findTestRunnerClassLoader(moduleName);
      Class<?> testClass = loadTestClass(testClassPath, testRunnerClassLoader);
      result = runTestClass(testClass);
    } catch (Exception ex) {
      Ivy.log().error("Fail to run test class: " + testClassPath, ex);
    }
    return result;
  }

	private ClassLoader findTestRunnerClassLoader(String moduleName) {
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

  private Class<?> loadTestClass(String testClassPath, ClassLoader testRunnerClassLoader)
      throws ClassNotFoundException {
    return Class.forName(testClassPath, true, testRunnerClassLoader);
  }

  private TestResult runTestClass(Class<?> testClass) {
    JUnitCore junit = new JUnitCore();
    TestResultListener testResultListener = new TestResultListener();
    junit.addListener(testResultListener);
    junit.run(testClass);
    return testResultListener.getTestResult();
  }
}
