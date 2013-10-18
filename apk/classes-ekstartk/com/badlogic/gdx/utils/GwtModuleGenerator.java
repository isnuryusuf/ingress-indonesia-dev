package com.badlogic.gdx.utils;

import com.badlogic.gdx.files.FileHandle;
import java.io.PrintStream;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

public class GwtModuleGenerator
{
  private static void gatherJavaFiles(FileHandle paramFileHandle, Set<String> paramSet, Map<String, FileHandle> paramMap, boolean paramBoolean)
  {
    if (paramFileHandle.name().equals(".svn"))
      return;
    FileHandle[] arrayOfFileHandle = paramFileHandle.list();
    int i = arrayOfFileHandle.length;
    int j = 0;
    label27: FileHandle localFileHandle;
    if (j < i)
    {
      localFileHandle = arrayOfFileHandle[j];
      if ((!localFileHandle.isDirectory()) || (!paramBoolean))
        break label67;
      gatherJavaFiles(localFileHandle, paramSet, paramMap, paramBoolean);
    }
    while (true)
    {
      j++;
      break label27;
      break;
      label67: if (localFileHandle.extension().equals("java"))
      {
        System.out.println(localFileHandle.name());
        if (paramSet.contains(localFileHandle.name()))
          System.out.println(localFileHandle.name() + " duplicate!");
        paramSet.add(localFileHandle.name());
        paramMap.put(localFileHandle.name(), localFileHandle);
      }
    }
  }

  public static void main(String[] paramArrayOfString)
  {
    HashSet localHashSet1 = new HashSet();
    HashMap localHashMap = new HashMap();
    System.out.println("Excludes -------------------------------------------------");
    gatherJavaFiles(new FileHandle("../backends/gdx-backends-gwt/src/com/badlogic/gdx/backends/gwt/emu/com/badlogic/gdx"), localHashSet1, localHashMap, true);
    System.out.println("#" + localHashSet1.size());
    localHashSet1.add("GdxBuild.java");
    localHashSet1.add("GdxNativesLoader.java");
    localHashSet1.add("GwtModuleGenerator.java");
    localHashSet1.add("SharedLibraryLoader.java");
    localHashSet1.add("Gdx2DPixmap.java");
    localHashSet1.add("PixmapIO.java");
    localHashSet1.add("ETC1.java");
    localHashSet1.add("ETC1TextureData.java");
    localHashSet1.add("ScreenUtils.java");
    localHashSet1.add("RemoteInput.java");
    localHashSet1.add("RemoteSender.java");
    localHashSet1.add("TiledLoader.java");
    localHashSet1.add("TileMapRendererLoader.java");
    localHashSet1.add("AtomicQueue.java");
    localHashSet1.add("LittleEndianInputStream.java");
    localHashSet1.add("PauseableThread.java");
    localHashSet1.add("DesktopClipboard.java");
    localHashSet1.add("AndroidClipboard.java");
    HashSet localHashSet2 = new HashSet();
    TreeMap localTreeMap = new TreeMap();
    System.out.println("Includes -------------------------------------------------");
    gatherJavaFiles(new FileHandle("src"), localHashSet2, localTreeMap, true);
    System.out.println("#" + localHashSet2.size());
    Iterator localIterator1 = localHashSet2.iterator();
    while (localIterator1.hasNext())
    {
      String str2 = (String)localIterator1.next();
      if (localHashSet1.contains(str2))
      {
        localTreeMap.get(str2);
        localHashMap.get(str2);
        localTreeMap.remove(str2);
        System.out.println("excluded '" + str2 + "'");
      }
    }
    System.out.println("diff: " + localTreeMap.size());
    StringWriter localStringWriter = new StringWriter();
    localStringWriter.write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n");
    XmlWriter localXmlWriter = new XmlWriter(localStringWriter);
    localXmlWriter.element("module").attribute("rename-to", "com.badlogic.gdx");
    localXmlWriter.element("inherits").attribute("name", "com.esotericsoftware.tablelayout").pop();
    localXmlWriter.element("source").attribute("path", "gdx");
    Iterator localIterator2 = localTreeMap.keySet().iterator();
    while (localIterator2.hasNext())
    {
      String str1 = ((FileHandle)localTreeMap.get((String)localIterator2.next())).path().replace("\\", "/").replace("src/com/badlogic/gdx/", "");
      localXmlWriter.element("include").attribute("name", str1).pop();
    }
    localXmlWriter.element("include").attribute("name", "graphics/g2d/Animation.java").pop();
    localXmlWriter.element("include").attribute("name", "graphics/g3d/Animation.java").pop();
    localXmlWriter.pop();
    localXmlWriter.pop();
    localXmlWriter.close();
    System.out.println(localStringWriter);
    new FileHandle("src/com/badlogic/gdx.gwt.xml").writeString(localStringWriter.toString(), false);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.GwtModuleGenerator
 * JD-Core Version:    0.6.2
 */