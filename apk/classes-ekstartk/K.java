import android.view.Window;
import android.view.WindowManager.LayoutParams;
import com.nianticproject.ingress.NemesisActivity;

final class K
  implements Runnable
{
  public final void run()
  {
    WindowManager.LayoutParams localLayoutParams = J.a.getWindow().getAttributes();
    if (J.p);
    for (localLayoutParams.flags = (0x400 | localLayoutParams.flags); ; localLayoutParams.flags = (0xFFFFFBFF & localLayoutParams.flags))
    {
      J.a.getWindow().setAttributes(localLayoutParams);
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     K
 * JD-Core Version:    0.6.2
 */