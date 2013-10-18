import android.app.AlarmManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Process;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;

final class y extends ClickListener
{
  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    Application localApplication = J.a;
    Intent localIntent = localApplication.getPackageManager().getLaunchIntentForPackage(localApplication.getPackageName());
    localIntent.addFlags(268435456);
    ((AlarmManager)localApplication.getSystemService("alarm")).set(1, 1000L + System.currentTimeMillis(), PendingIntent.getActivity(localApplication, 0, localIntent, 0));
    Process.killProcess(Process.myPid());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     y
 * JD-Core Version:    0.6.2
 */