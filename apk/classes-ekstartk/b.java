import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton;
import com.nianticproject.ingress.common.ui.a;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.common.ui.widget.aa;
import java.util.List;

public class b extends a
{
  private G jdField_a_of_type_G;
  private Table jdField_a_of_type_ComBadlogicGdxScenesScene2dUiTable;
  private aa jdField_a_of_type_ComNianticprojectIngressCommonUiWidgetAa;
  private G b;
  private G c;
  private G d;
  private G e;
  private G f;

  public b()
  {
    super(b.class.getName());
    K().a(new c(this));
  }

  private void a(boolean paramBoolean)
  {
    if (paramBoolean)
      J.d();
    TextButton localTextButton = (TextButton)this.jdField_a_of_type_G.jdField_a_of_type_JavaUtilList.get(0);
    if (J.jdField_a_of_type_Boolean);
    for (String str = "Swap"; ; str = "Leave")
    {
      localTextButton.setText(str);
      return;
    }
  }

  private void b()
  {
    String str = J.jdField_b_of_type_U.b;
    if (J.jdField_b_of_type_U == U.jdField_a_of_type_U)
      str = str + " (" + J.jdField_a_of_type_U.b + ")";
    this.e.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiLabel.setText(str);
  }

  private void b(boolean paramBoolean)
  {
    if (paramBoolean)
      J.d();
    ((TextButton)this.b.jdField_a_of_type_JavaUtilList.get(0)).setText(J.jdField_a_of_type_S.a);
    TextButton localTextButton1 = (TextButton)this.b.jdField_a_of_type_JavaUtilList.get(1);
    String str1;
    String str2;
    label91: String str3;
    label126: String str4;
    label161: String str5;
    label196: String str6;
    label232: TextButton localTextButton7;
    if (J.jdField_b_of_type_Boolean)
    {
      str1 = "Show";
      localTextButton1.setText(str1);
      TextButton localTextButton2 = (TextButton)this.b.jdField_a_of_type_JavaUtilList.get(2);
      if (!J.c)
        break label289;
      str2 = "Show";
      localTextButton2.setText(str2);
      TextButton localTextButton3 = (TextButton)this.b.jdField_a_of_type_JavaUtilList.get(3);
      if (!J.e)
        break label296;
      str3 = "Show";
      localTextButton3.setText(str3);
      TextButton localTextButton4 = (TextButton)this.b.jdField_a_of_type_JavaUtilList.get(4);
      if (!J.d)
        break label303;
      str4 = "Show";
      localTextButton4.setText(str4);
      TextButton localTextButton5 = (TextButton)this.b.jdField_a_of_type_JavaUtilList.get(5);
      if (!J.f)
        break label310;
      str5 = "Show";
      localTextButton5.setText(str5);
      TextButton localTextButton6 = (TextButton)this.b.jdField_a_of_type_JavaUtilList.get(6);
      if (!J.g)
        break label317;
      str6 = "Show";
      localTextButton6.setText(str6);
      localTextButton7 = (TextButton)this.b.jdField_a_of_type_JavaUtilList.get(7);
      if (!J.h)
        break label324;
    }
    label289: label296: label303: label310: label317: label324: for (String str7 = "Show"; ; str7 = "Hide")
    {
      localTextButton7.setText(str7);
      this.jdField_a_of_type_ComNianticprojectIngressCommonUiWidgetAa.a();
      return;
      str1 = "Hide";
      break;
      str2 = "Hide";
      break label91;
      str3 = "Hide";
      break label126;
      str4 = "Hide";
      break label161;
      str5 = "Hide";
      break label196;
      str6 = "Hide";
      break label232;
    }
  }

  private void c(boolean paramBoolean)
  {
    if (paramBoolean)
      J.d();
    TextButton localTextButton1 = (TextButton)this.c.jdField_a_of_type_JavaUtilList.get(0);
    String str1;
    String str2;
    label66: String str3;
    label101: String str4;
    label136: String str5;
    label171: TextButton localTextButton6;
    if (J.j)
    {
      str1 = "ON";
      localTextButton1.setText(str1);
      TextButton localTextButton2 = (TextButton)this.c.jdField_a_of_type_JavaUtilList.get(1);
      if (!J.k)
        break label220;
      str2 = "ON";
      localTextButton2.setText(str2);
      TextButton localTextButton3 = (TextButton)this.c.jdField_a_of_type_JavaUtilList.get(2);
      if (!J.l)
        break label227;
      str3 = "ON";
      localTextButton3.setText(str3);
      TextButton localTextButton4 = (TextButton)this.c.jdField_a_of_type_JavaUtilList.get(3);
      if (!J.m)
        break label234;
      str4 = "ON";
      localTextButton4.setText(str4);
      TextButton localTextButton5 = (TextButton)this.c.jdField_a_of_type_JavaUtilList.get(4);
      if (!J.n)
        break label241;
      str5 = "ON";
      localTextButton5.setText(str5);
      localTextButton6 = (TextButton)this.c.jdField_a_of_type_JavaUtilList.get(5);
      if (!J.o)
        break label248;
    }
    label220: label227: label234: label241: label248: for (String str6 = "ON"; ; str6 = "OFF")
    {
      localTextButton6.setText(str6);
      return;
      str1 = "OFF";
      break;
      str2 = "OFF";
      break label66;
      str3 = "OFF";
      break label101;
      str4 = "OFF";
      break label136;
      str5 = "OFF";
      break label171;
    }
  }

  private void d(boolean paramBoolean)
  {
    if (paramBoolean)
      J.d();
    TextButton localTextButton1 = (TextButton)this.d.jdField_a_of_type_JavaUtilList.get(0);
    String str1;
    String str2;
    label66: String str3;
    label101: String str4;
    label136: String str5;
    label171: String str6;
    label208: String str7;
    label258: String str8;
    label294: String str9;
    label376: String str10;
    label427: String str11;
    label463: TextButton localTextButton10;
    if (J.p)
    {
      str1 = "ON";
      localTextButton1.setText(str1);
      TextButton localTextButton2 = (TextButton)this.d.jdField_a_of_type_JavaUtilList.get(1);
      if (!J.q)
        break label513;
      str2 = "ON";
      localTextButton2.setText(str2);
      TextButton localTextButton3 = (TextButton)this.d.jdField_a_of_type_JavaUtilList.get(2);
      if (!J.r)
        break label520;
      str3 = "ON";
      localTextButton3.setText(str3);
      TextButton localTextButton4 = (TextButton)this.d.jdField_a_of_type_JavaUtilList.get(3);
      if (!J.t)
        break label527;
      str4 = "ON";
      localTextButton4.setText(str4);
      TextButton localTextButton5 = (TextButton)this.d.jdField_a_of_type_JavaUtilList.get(4);
      if (!J.u)
        break label534;
      str5 = "ON";
      localTextButton5.setText(str5);
      switch (J.jdField_a_of_type_Int)
      {
      default:
        str6 = "00:00";
        ((TextButton)this.d.jdField_a_of_type_JavaUtilList.get(5)).setText(str6);
        TextButton localTextButton6 = (TextButton)this.d.jdField_a_of_type_JavaUtilList.get(6);
        if (J.v)
        {
          str7 = "ON";
          localTextButton6.setText(str7);
          TextButton localTextButton7 = (TextButton)this.d.jdField_a_of_type_JavaUtilList.get(7);
          if (!J.w)
            break label562;
          str8 = "ON";
          localTextButton7.setText(str8);
          switch (J.jdField_b_of_type_Int)
          {
          default:
            str9 = "Unknown";
            ((TextButton)this.d.jdField_a_of_type_JavaUtilList.get(8)).setText(str9);
            TextButton localTextButton8 = (TextButton)this.d.jdField_a_of_type_JavaUtilList.get(9);
            if (J.x)
            {
              str10 = "ON";
              localTextButton8.setText(str10);
              TextButton localTextButton9 = (TextButton)this.d.jdField_a_of_type_JavaUtilList.get(10);
              if (!J.y)
                break label625;
              str11 = "ON";
              localTextButton9.setText(str11);
              localTextButton10 = (TextButton)this.d.jdField_a_of_type_JavaUtilList.get(11);
              if (!J.z)
                break label632;
            }
            break;
          case 0:
          case 30000:
          case 60000:
          case 120000:
          case 300000:
          case 600000:
          case 900000:
          }
        }
        break;
      case 0:
      case 1:
      }
    }
    label513: label520: label527: label534: label562: label625: label632: for (String str12 = "ON"; ; str12 = "OFF")
    {
      localTextButton10.setText(str12);
      return;
      str1 = "OFF";
      break;
      str2 = "OFF";
      break label66;
      str3 = "OFF";
      break label101;
      str4 = "OFF";
      break label136;
      str5 = "OFF";
      break label171;
      str6 = "12:00 AM";
      break label208;
      str6 = "00:00:00";
      break label208;
      str7 = "OFF";
      break label258;
      str8 = "OFF";
      break label294;
      str9 = "Disabled";
      break label376;
      str9 = "30sec";
      break label376;
      str9 = "1min";
      break label376;
      str9 = "2min";
      break label376;
      str9 = "5min";
      break label376;
      str9 = "10min";
      break label376;
      str9 = "15min";
      break label376;
      str10 = "OFF";
      break label427;
      str11 = "OFF";
      break label463;
    }
  }

  protected void a()
  {
    a(false);
    b(false);
    c(false);
    d(false);
    b();
  }

  protected String d()
  {
    return b.class.getName();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     b
 * JD-Core Version:    0.6.2
 */