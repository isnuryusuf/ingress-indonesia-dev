package com.badlogic.gdx.backends.android;

import android.content.pm.PackageManager;
import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.Pool;
import java.util.ArrayList;

public class AndroidMultiTouchHandler
  implements AndroidTouchHandler
{
  private void logAction(int paramInt1, int paramInt2)
  {
    String str;
    if (paramInt1 == 0)
      str = "DOWN";
    while (true)
    {
      Gdx.app.log("AndroidMultiTouchHandler", "action " + str + ", Android pointer id: " + paramInt2);
      return;
      if (paramInt1 == 5)
        str = "POINTER DOWN";
      else if (paramInt1 == 1)
        str = "UP";
      else if (paramInt1 == 6)
        str = "POINTER UP";
      else if (paramInt1 == 4)
        str = "OUTSIDE";
      else if (paramInt1 == 3)
        str = "CANCEL";
      else if (paramInt1 == 2)
        str = "MOVE";
      else
        str = "UNKNOWN (" + paramInt1 + ")";
    }
  }

  private void postTouchEvent(AndroidInput paramAndroidInput, int paramInt1, int paramInt2, int paramInt3, int paramInt4, long paramLong)
  {
    AndroidInput.TouchEvent localTouchEvent = (AndroidInput.TouchEvent)paramAndroidInput.usedTouchEvents.obtain();
    localTouchEvent.timeStamp = paramLong;
    localTouchEvent.pointer = paramInt4;
    localTouchEvent.x = paramInt2;
    localTouchEvent.y = paramInt3;
    localTouchEvent.type = paramInt1;
    paramAndroidInput.touchEvents.add(localTouchEvent);
  }

  // ERROR //
  public void onTouch(android.view.MotionEvent paramMotionEvent, AndroidInput paramAndroidInput)
  {
    // Byte code:
    //   0: sipush 255
    //   3: aload_1
    //   4: invokevirtual 115	android/view/MotionEvent:getAction	()I
    //   7: iand
    //   8: istore_3
    //   9: ldc 116
    //   11: aload_1
    //   12: invokevirtual 115	android/view/MotionEvent:getAction	()I
    //   15: iand
    //   16: bipush 8
    //   18: ishr
    //   19: istore 4
    //   21: aload_1
    //   22: iload 4
    //   24: invokevirtual 120	android/view/MotionEvent:getPointerId	(I)I
    //   27: istore 5
    //   29: invokestatic 126	java/lang/System:nanoTime	()J
    //   32: lstore 6
    //   34: aload_2
    //   35: monitorenter
    //   36: iload_3
    //   37: tableswitch	default:+43 -> 80, 0:+59->96, 1:+158->195, 2:+257->294, 3:+158->195, 4:+158->195, 5:+59->96, 6:+158->195
    //   81: monitorexit
    //   82: getstatic 20	com/badlogic/gdx/Gdx:app	Lcom/badlogic/gdx/Application;
    //   85: invokeinterface 130 1 0
    //   90: invokeinterface 135 1 0
    //   95: return
    //   96: aload_2
    //   97: invokevirtual 138	com/badlogic/gdx/backends/android/AndroidInput:getFreePointerIndex	()I
    //   100: istore 18
    //   102: aload_2
    //   103: getfield 142	com/badlogic/gdx/backends/android/AndroidInput:realId	[I
    //   106: iload 18
    //   108: iload 5
    //   110: iastore
    //   111: aload_1
    //   112: iload 4
    //   114: invokevirtual 146	android/view/MotionEvent:getX	(I)F
    //   117: f2i
    //   118: istore 19
    //   120: aload_1
    //   121: iload 4
    //   123: invokevirtual 149	android/view/MotionEvent:getY	(I)F
    //   126: f2i
    //   127: istore 20
    //   129: aload_0
    //   130: aload_2
    //   131: iconst_0
    //   132: iload 19
    //   134: iload 20
    //   136: iload 18
    //   138: lload 6
    //   140: invokespecial 151	com/badlogic/gdx/backends/android/AndroidMultiTouchHandler:postTouchEvent	(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIJ)V
    //   143: aload_2
    //   144: getfield 154	com/badlogic/gdx/backends/android/AndroidInput:touchX	[I
    //   147: iload 18
    //   149: iload 19
    //   151: iastore
    //   152: aload_2
    //   153: getfield 157	com/badlogic/gdx/backends/android/AndroidInput:touchY	[I
    //   156: iload 18
    //   158: iload 20
    //   160: iastore
    //   161: aload_2
    //   162: getfield 160	com/badlogic/gdx/backends/android/AndroidInput:deltaX	[I
    //   165: iload 18
    //   167: iconst_0
    //   168: iastore
    //   169: aload_2
    //   170: getfield 163	com/badlogic/gdx/backends/android/AndroidInput:deltaY	[I
    //   173: iload 18
    //   175: iconst_0
    //   176: iastore
    //   177: aload_2
    //   178: getfield 167	com/badlogic/gdx/backends/android/AndroidInput:touched	[Z
    //   181: iload 18
    //   183: iconst_1
    //   184: bastore
    //   185: goto -105 -> 80
    //   188: astore 14
    //   190: aload_2
    //   191: monitorexit
    //   192: aload 14
    //   194: athrow
    //   195: aload_2
    //   196: iload 5
    //   198: invokevirtual 170	com/badlogic/gdx/backends/android/AndroidInput:lookUpPointerIndex	(I)I
    //   201: istore 15
    //   203: iload 15
    //   205: iconst_m1
    //   206: if_icmpeq -126 -> 80
    //   209: aload_2
    //   210: getfield 142	com/badlogic/gdx/backends/android/AndroidInput:realId	[I
    //   213: iload 15
    //   215: iconst_m1
    //   216: iastore
    //   217: aload_1
    //   218: iload 4
    //   220: invokevirtual 146	android/view/MotionEvent:getX	(I)F
    //   223: f2i
    //   224: istore 16
    //   226: aload_1
    //   227: iload 4
    //   229: invokevirtual 149	android/view/MotionEvent:getY	(I)F
    //   232: f2i
    //   233: istore 17
    //   235: aload_0
    //   236: aload_2
    //   237: iconst_1
    //   238: iload 16
    //   240: iload 17
    //   242: iload 15
    //   244: lload 6
    //   246: invokespecial 151	com/badlogic/gdx/backends/android/AndroidMultiTouchHandler:postTouchEvent	(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIJ)V
    //   249: aload_2
    //   250: getfield 154	com/badlogic/gdx/backends/android/AndroidInput:touchX	[I
    //   253: iload 15
    //   255: iload 16
    //   257: iastore
    //   258: aload_2
    //   259: getfield 157	com/badlogic/gdx/backends/android/AndroidInput:touchY	[I
    //   262: iload 15
    //   264: iload 17
    //   266: iastore
    //   267: aload_2
    //   268: getfield 160	com/badlogic/gdx/backends/android/AndroidInput:deltaX	[I
    //   271: iload 15
    //   273: iconst_0
    //   274: iastore
    //   275: aload_2
    //   276: getfield 163	com/badlogic/gdx/backends/android/AndroidInput:deltaY	[I
    //   279: iload 15
    //   281: iconst_0
    //   282: iastore
    //   283: aload_2
    //   284: getfield 167	com/badlogic/gdx/backends/android/AndroidInput:touched	[Z
    //   287: iload 15
    //   289: iconst_0
    //   290: bastore
    //   291: goto -211 -> 80
    //   294: aload_1
    //   295: invokevirtual 173	android/view/MotionEvent:getPointerCount	()I
    //   298: istore 8
    //   300: iconst_0
    //   301: istore 9
    //   303: iload 9
    //   305: iload 8
    //   307: if_icmpge -227 -> 80
    //   310: aload_1
    //   311: iload 9
    //   313: invokevirtual 120	android/view/MotionEvent:getPointerId	(I)I
    //   316: istore 10
    //   318: aload_1
    //   319: iload 9
    //   321: invokevirtual 146	android/view/MotionEvent:getX	(I)F
    //   324: f2i
    //   325: istore 11
    //   327: aload_1
    //   328: iload 9
    //   330: invokevirtual 149	android/view/MotionEvent:getY	(I)F
    //   333: f2i
    //   334: istore 12
    //   336: aload_2
    //   337: iload 10
    //   339: invokevirtual 170	com/badlogic/gdx/backends/android/AndroidInput:lookUpPointerIndex	(I)I
    //   342: istore 13
    //   344: iload 13
    //   346: iconst_m1
    //   347: if_icmpeq +69 -> 416
    //   350: aload_0
    //   351: aload_2
    //   352: iconst_2
    //   353: iload 11
    //   355: iload 12
    //   357: iload 13
    //   359: lload 6
    //   361: invokespecial 151	com/badlogic/gdx/backends/android/AndroidMultiTouchHandler:postTouchEvent	(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIJ)V
    //   364: aload_2
    //   365: getfield 160	com/badlogic/gdx/backends/android/AndroidInput:deltaX	[I
    //   368: iload 13
    //   370: iload 11
    //   372: aload_2
    //   373: getfield 154	com/badlogic/gdx/backends/android/AndroidInput:touchX	[I
    //   376: iload 13
    //   378: iaload
    //   379: isub
    //   380: iastore
    //   381: aload_2
    //   382: getfield 163	com/badlogic/gdx/backends/android/AndroidInput:deltaY	[I
    //   385: iload 13
    //   387: iload 12
    //   389: aload_2
    //   390: getfield 157	com/badlogic/gdx/backends/android/AndroidInput:touchY	[I
    //   393: iload 13
    //   395: iaload
    //   396: isub
    //   397: iastore
    //   398: aload_2
    //   399: getfield 154	com/badlogic/gdx/backends/android/AndroidInput:touchX	[I
    //   402: iload 13
    //   404: iload 11
    //   406: iastore
    //   407: aload_2
    //   408: getfield 157	com/badlogic/gdx/backends/android/AndroidInput:touchY	[I
    //   411: iload 13
    //   413: iload 12
    //   415: iastore
    //   416: iinc 9 1
    //   419: goto -116 -> 303
    //
    // Exception table:
    //   from	to	target	type
    //   80	82	188	finally
    //   96	185	188	finally
    //   195	203	188	finally
    //   209	291	188	finally
    //   294	300	188	finally
    //   310	344	188	finally
    //   350	416	188	finally
  }

  public boolean supportsMultitouch(AndroidApplication paramAndroidApplication)
  {
    return paramAndroidApplication.getPackageManager().hasSystemFeature("android.hardware.touchscreen.multitouch");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidMultiTouchHandler
 * JD-Core Version:    0.6.2
 */