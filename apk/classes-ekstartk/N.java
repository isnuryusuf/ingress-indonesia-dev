import android.util.DisplayMetrics;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;
import com.nianticproject.ingress.common.g.o;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.inventory.ui.q;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.ui.a;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.common.ui.widget.aa;
import com.nianticproject.ingress.gameentity.components.FlipCard;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.af;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class N extends a
{
  final float jdField_a_of_type_Float = J.jdField_a_of_type_AndroidUtilDisplayMetrics.density;
  private Label jdField_a_of_type_ComBadlogicGdxScenesScene2dUiLabel;
  private TextButton.TextButtonStyle jdField_a_of_type_ComBadlogicGdxScenesScene2dUiTextButton$TextButtonStyle;
  private aa jdField_a_of_type_ComNianticprojectIngressCommonUiWidgetAa;
  private Map jdField_a_of_type_JavaUtilMap = new HashMap();
  private Label jdField_b_of_type_ComBadlogicGdxScenesScene2dUiLabel;
  private Map jdField_b_of_type_JavaUtilMap = new HashMap();

  public N()
  {
    super(N.class.getName());
    K().a(new O(this));
  }

  private static String a(int paramInt)
  {
    if (paramInt == 0)
      return "-";
    Locale localLocale = Locale.US;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    return String.format(localLocale, "%,d", arrayOfObject);
  }

  protected void a()
  {
    Iterator localIterator1 = this.jdField_a_of_type_JavaUtilMap.values().iterator();
    while (localIterator1.hasNext())
    {
      Iterator localIterator5 = ((List)localIterator1.next()).iterator();
      while (localIterator5.hasNext())
      {
        Q localQ5 = (Q)localIterator5.next();
        localQ5.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiTextButton.setText(a(0));
        localQ5.jdField_a_of_type_ComNianticprojectIngressGameentityF = null;
      }
    }
    Iterator localIterator2 = this.jdField_b_of_type_JavaUtilMap.values().iterator();
    while (localIterator2.hasNext())
    {
      Iterator localIterator4 = ((Map)localIterator2.next()).values().iterator();
      while (localIterator4.hasNext())
      {
        Q localQ4 = (Q)localIterator4.next();
        localQ4.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiTextButton.setText(a(0));
        localQ4.jdField_a_of_type_ComNianticprojectIngressGameentityF = null;
      }
    }
    int[] arrayOfInt = new int[8];
    Iterator localIterator3 = q.a(null, J.jdField_a_of_type_ComNianticprojectIngressCommonGO.e()).iterator();
    int i = 0;
    int j = 0;
    int k = 0;
    int m = 0;
    int n = 0;
    int i1 = 0;
    int i2 = 0;
    int i3 = 0;
    q localq;
    int i5;
    int i6;
    int i7;
    af localaf;
    while (localIterator3.hasNext())
    {
      localq = (q)localIterator3.next();
      i5 = localq.g();
      i6 = n + i5;
      i7 = -1 + localq.e();
      localaf = localq.a();
      switch (P.a[localaf.ordinal()])
      {
      default:
        n = i6;
        break;
      case 1:
        if (arrayOfInt[i7] == 0)
          ((Q)((List)this.jdField_a_of_type_JavaUtilMap.get(localaf)).get(i7)).jdField_a_of_type_ComNianticprojectIngressGameentityF = localq.h();
        arrayOfInt[i7] = (i5 + arrayOfInt[i7]);
        k += i5;
        n = i6;
        break;
      case 2:
        i += i5;
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 5:
      case 4:
      case 3:
      }
    }
    for (int i8 = 1; ; i8 = 0)
    {
      if (i8 == 0)
        i1 += i5;
      for (i8 = 1; ; i8 = 0)
      {
        if (i8 == 0)
          j += i5;
        for (i8 = 1; ; i8 = 0)
        {
          if (i8 == 0)
            i2 += i5;
          Q localQ1 = (Q)((List)this.jdField_a_of_type_JavaUtilMap.get(localaf)).get(i7);
          int i9 = i2;
          int i10 = j;
          int i11 = i1;
          int i12 = i;
          Object localObject = localQ1;
          while (true)
          {
            if (localObject != null)
            {
              ((Q)localObject).jdField_a_of_type_ComBadlogicGdxScenesScene2dUiTextButton.setText(a(i5));
              ((Q)localObject).jdField_a_of_type_ComNianticprojectIngressGameentityF = localq.h();
            }
            i = i12;
            i1 = i11;
            j = i10;
            i2 = i9;
            n = i6;
            break;
            int i13 = i3 + i5;
            m++;
            i3 = i13;
            n = i6;
            break;
            Q localQ3 = (Q)((Map)this.jdField_b_of_type_JavaUtilMap.get(localaf)).get(localq.d());
            i9 = i2;
            i10 = j;
            i11 = i1;
            i12 = i;
            localObject = localQ3;
            continue;
            Q localQ2 = (Q)((Map)this.jdField_b_of_type_JavaUtilMap.get(((FlipCard)localq.h().getComponent(FlipCard.class)).getFlipCardType())).get(localq.d());
            i9 = i2;
            i10 = j;
            i11 = i1;
            i12 = i;
            localObject = localQ2;
          }
          for (int i4 = 0; i4 < 8; i4++)
            ((Q)((List)this.jdField_a_of_type_JavaUtilMap.get(af.g)).get(i4)).jdField_a_of_type_ComBadlogicGdxScenesScene2dUiTextButton.setText(a(arrayOfInt[i4]));
          ((Q)((List)this.jdField_a_of_type_JavaUtilMap.get(af.a)).get(8)).jdField_a_of_type_ComBadlogicGdxScenesScene2dUiTextButton.setText(a(i));
          ((Q)((List)this.jdField_a_of_type_JavaUtilMap.get(af.b)).get(8)).jdField_a_of_type_ComBadlogicGdxScenesScene2dUiTextButton.setText(a(i1));
          ((Q)((List)this.jdField_a_of_type_JavaUtilMap.get(af.m)).get(8)).jdField_a_of_type_ComBadlogicGdxScenesScene2dUiTextButton.setText(a(j));
          ((Q)((List)this.jdField_a_of_type_JavaUtilMap.get(af.j)).get(8)).jdField_a_of_type_ComBadlogicGdxScenesScene2dUiTextButton.setText(a(i2));
          ((Q)((List)this.jdField_a_of_type_JavaUtilMap.get(af.g)).get(8)).jdField_a_of_type_ComBadlogicGdxScenesScene2dUiTextButton.setText(a(k));
          long l = J.jdField_a_of_type_ComNianticprojectIngressCommonGP.b().d();
          Label localLabel = this.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiLabel;
          Locale localLocale = Locale.US;
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = Integer.valueOf(n);
          arrayOfObject[1] = Long.valueOf(l);
          localLabel.setText(String.format(localLocale, "Items: %,d - XM: %,d", arrayOfObject));
          this.jdField_b_of_type_ComBadlogicGdxScenesScene2dUiLabel.setText("Keys:  " + i3 + " for " + m + " distinct portals");
          this.jdField_a_of_type_ComNianticprojectIngressCommonUiWidgetAa.a();
          return;
        }
      }
    }
  }

  protected String d()
  {
    return N.class.getName();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     N
 * JD-Core Version:    0.6.2
 */