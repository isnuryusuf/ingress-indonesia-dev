package com.badlogic.gdx.scenes.scene2d.utils;

import java.awt.Toolkit;
import java.awt.datatransfer.ClipboardOwner;
import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.StringSelection;
import java.awt.datatransfer.Transferable;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.io.IOException;

public class DesktopClipboard extends Clipboard
  implements ClipboardOwner
{
  public String getContents()
  {
    Transferable localTransferable = Toolkit.getDefaultToolkit().getSystemClipboard().getContents(null);
    int i;
    if ((localTransferable != null) && (localTransferable.isDataFlavorSupported(DataFlavor.stringFlavor)))
      i = 1;
    while (i != 0)
      try
      {
        String str = (String)localTransferable.getTransferData(DataFlavor.stringFlavor);
        return str;
        i = 0;
      }
      catch (UnsupportedFlavorException localUnsupportedFlavorException)
      {
        return "";
      }
      catch (IOException localIOException)
      {
      }
    return "";
  }

  public void lostOwnership(java.awt.datatransfer.Clipboard paramClipboard, Transferable paramTransferable)
  {
  }

  public void setContents(String paramString)
  {
    StringSelection localStringSelection = new StringSelection(paramString);
    Toolkit.getDefaultToolkit().getSystemClipboard().setContents(localStringSelection, this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.utils.DesktopClipboard
 * JD-Core Version:    0.6.2
 */