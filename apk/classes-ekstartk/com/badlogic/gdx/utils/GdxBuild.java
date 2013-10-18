package com.badlogic.gdx.utils;

import com.badlogic.gdx.jnigen.AntScriptGenerator;
import com.badlogic.gdx.jnigen.BuildConfig;
import com.badlogic.gdx.jnigen.BuildTarget;
import com.badlogic.gdx.jnigen.BuildTarget.TargetOs;
import com.badlogic.gdx.jnigen.NativeCodeGenerator;

public class GdxBuild
{
  public static void main(String[] paramArrayOfString)
  {
    new NativeCodeGenerator().generate("src", "bin", "jni", new String[] { "**/*" }, null);
    BuildTarget localBuildTarget1 = BuildTarget.newDefaultTarget(BuildTarget.TargetOs.Windows, false);
    localBuildTarget1.compilerPrefix = "";
    localBuildTarget1.buildFileName = "build-windows32home.xml";
    localBuildTarget1.excludeFromMasterBuildFile = true;
    BuildTarget localBuildTarget2 = BuildTarget.newDefaultTarget(BuildTarget.TargetOs.Windows, false);
    BuildTarget localBuildTarget3 = BuildTarget.newDefaultTarget(BuildTarget.TargetOs.Windows, true);
    BuildTarget localBuildTarget4 = BuildTarget.newDefaultTarget(BuildTarget.TargetOs.Linux, false);
    BuildTarget localBuildTarget5 = BuildTarget.newDefaultTarget(BuildTarget.TargetOs.Linux, true);
    BuildTarget localBuildTarget6 = BuildTarget.newDefaultTarget(BuildTarget.TargetOs.Android, false);
    BuildTarget localBuildTarget7 = BuildTarget.newDefaultTarget(BuildTarget.TargetOs.MacOsX, false);
    new AntScriptGenerator().generate(new BuildConfig("gdx", "../target/native", "libs", "jni"), new BuildTarget[] { localBuildTarget7, localBuildTarget1, localBuildTarget2, localBuildTarget3, localBuildTarget4, localBuildTarget5, localBuildTarget6 });
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.GdxBuild
 * JD-Core Version:    0.6.2
 */