import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.widget.aa;
import com.nianticproject.ingress.common.ui.widget.ag;
import com.nianticproject.ingress.shared.af;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class O
  implements ac
{
  O(N paramN)
  {
  }

  private void a(Skin paramSkin, Table paramTable)
  {
    Table localTable = new Table();
    localTable.row();
    localTable.add();
    localTable.add(new Label("R", paramSkin));
    localTable.add(new Label("X", paramSkin));
    localTable.add(new Label("U", paramSkin));
    localTable.add(new Label("C", paramSkin));
    localTable.add(new Label("M", paramSkin));
    for (int i = 0; i < 9; i++)
    {
      Color localColor;
      if (i < 8)
      {
        localColor = com.nianticproject.ingress.common.ui.l.a(paramSkin, i + 1);
        localTable.row().c(40.0F * this.a.a);
        if (i >= 8)
          break label405;
      }
      label405: for (String str = "L" + (i + 1); ; str = "Total")
      {
        Label localLabel = new Label(str, paramSkin);
        localLabel.setColor(localColor);
        localTable.add(localLabel).a(-1.0F, 0.0F, -1.0F, 16.0F * this.a.a);
        af[] arrayOfaf = new af[5];
        arrayOfaf[0] = af.a;
        arrayOfaf[1] = af.b;
        arrayOfaf[2] = af.m;
        arrayOfaf[3] = af.j;
        arrayOfaf[4] = af.g;
        int j = arrayOfaf.length;
        for (int k = 0; k < j; k++)
        {
          af localaf = arrayOfaf[k];
          Object localObject = (List)N.a(this.a).get(localaf);
          if (localObject == null)
          {
            localObject = new ArrayList();
            N.a(this.a).put(localaf, localObject);
          }
          Q localQ = new Q(this.a, (byte)0);
          ((List)localObject).add(localQ);
          localQ.a.getLabel().setColor(localColor);
          localTable.add(localQ.a).b(0.0F).o().f().a(-1.0F, -1.0F, -1.0F, -1.0F);
        }
        localColor = Color.WHITE;
        break;
      }
    }
    localTable.row();
    localTable.add().c(16.0F * this.a.a);
    String[] arrayOfString1 = { "Shields" };
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = af.k;
    com.nianticproject.ingress.gameentity.components.l[] arrayOfl1 = new com.nianticproject.ingress.gameentity.components.l[3];
    arrayOfl1[0] = com.nianticproject.ingress.gameentity.components.l.b;
    arrayOfl1[1] = com.nianticproject.ingress.gameentity.components.l.d;
    arrayOfl1[2] = com.nianticproject.ingress.gameentity.components.l.e;
    a(localTable, paramSkin, arrayOfString1, arrayOfObject1, arrayOfl1);
    String[] arrayOfString2 = { "Heat Sink", "Multi-hack" };
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = af.e;
    arrayOfObject2[1] = af.h;
    com.nianticproject.ingress.gameentity.components.l[] arrayOfl2 = new com.nianticproject.ingress.gameentity.components.l[3];
    arrayOfl2[0] = com.nianticproject.ingress.gameentity.components.l.b;
    arrayOfl2[1] = com.nianticproject.ingress.gameentity.components.l.d;
    arrayOfl2[2] = com.nianticproject.ingress.gameentity.components.l.e;
    a(localTable, paramSkin, arrayOfString2, arrayOfObject2, arrayOfl2);
    String[] arrayOfString3 = { "Link Amp" };
    Object[] arrayOfObject3 = new Object[1];
    arrayOfObject3[0] = af.f;
    com.nianticproject.ingress.gameentity.components.l[] arrayOfl3 = new com.nianticproject.ingress.gameentity.components.l[1];
    arrayOfl3[0] = com.nianticproject.ingress.gameentity.components.l.d;
    a(localTable, paramSkin, arrayOfString3, arrayOfObject3, arrayOfl3);
    String[] arrayOfString4 = { "Force Amp", "Turret" };
    Object[] arrayOfObject4 = new Object[2];
    arrayOfObject4[0] = af.d;
    arrayOfObject4[1] = af.l;
    com.nianticproject.ingress.gameentity.components.l[] arrayOfl4 = new com.nianticproject.ingress.gameentity.components.l[1];
    arrayOfl4[0] = com.nianticproject.ingress.gameentity.components.l.d;
    a(localTable, paramSkin, arrayOfString4, arrayOfObject4, arrayOfl4);
    String[] arrayOfString5 = { "ADA Refactor", "JARVIS Virus" };
    Object[] arrayOfObject5 = new Object[2];
    arrayOfObject5[0] = com.nianticproject.ingress.gameentity.components.c.a;
    arrayOfObject5[1] = com.nianticproject.ingress.gameentity.components.c.b;
    com.nianticproject.ingress.gameentity.components.l[] arrayOfl5 = new com.nianticproject.ingress.gameentity.components.l[1];
    arrayOfl5[0] = com.nianticproject.ingress.gameentity.components.l.e;
    a(localTable, paramSkin, arrayOfString5, arrayOfObject5, arrayOfl5);
    localTable.row();
    N.b(this.a, new Label("", paramSkin));
    localTable.add(N.a(this.a)).b(Integer.valueOf(2)).b(0.0F).a(-1.0F, 0.0F, -1.0F, 0.0F).k();
    paramTable.row();
    paramTable.add(localTable).o().g();
  }

  private void a(Table paramTable, Skin paramSkin, String[] paramArrayOfString, Object[] paramArrayOfObject, com.nianticproject.ingress.gameentity.components.l[] paramArrayOfl)
  {
    for (int i = 0; i < paramArrayOfObject.length; i++)
    {
      paramTable.row().c(40.0F * this.a.a);
      paramTable.add(new Label(paramArrayOfString[i], paramSkin)).b(Integer.valueOf(2)).b(0.0F).a(-1.0F, 0.0F, -1.0F, 0.0F).k();
      HashMap localHashMap = new HashMap(3);
      N.b(this.a).put(paramArrayOfObject[i], localHashMap);
      com.nianticproject.ingress.gameentity.components.l[] arrayOfl = new com.nianticproject.ingress.gameentity.components.l[3];
      arrayOfl[0] = com.nianticproject.ingress.gameentity.components.l.b;
      arrayOfl[1] = com.nianticproject.ingress.gameentity.components.l.d;
      arrayOfl[2] = com.nianticproject.ingress.gameentity.components.l.e;
      int j = arrayOfl.length;
      int k = 0;
      if (k < j)
      {
        com.nianticproject.ingress.gameentity.components.l locall = arrayOfl[k];
        if (Arrays.binarySearch(paramArrayOfl, locall) < 0)
          paramTable.add().a(-1.0F, -1.0F, -1.0F, -1.0F);
        while (true)
        {
          k++;
          break;
          Q localQ = new Q(this.a, (byte)0);
          localQ.a.getLabel().setColor(com.nianticproject.ingress.common.ui.l.a(paramSkin, locall));
          paramTable.add(localQ.a).b(0.0F).f().a(-1.0F, -1.0F, -1.0F, -1.0F);
          localHashMap.put(locall, localQ);
        }
      }
    }
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    N.a(this.a, new TextButton.TextButtonStyle());
    N.a(this.a).down = paramSkin.getDrawable("nav-button-clear-down");
    N.a(this.a).up = paramSkin.getDrawable("nav-button-clear");
    N.a(this.a).font = paramSkin.getFont("default-font");
    Table localTable1 = new Table(paramSkin);
    localTable1.top().pad(6.6F * this.a.a);
    localTable1.row();
    localTable1.add(N.a(this.a, new Label("", paramSkin)));
    a(paramSkin, localTable1);
    Table localTable2 = new Table();
    localTable2.setFillParent(true);
    N.a(this.a, new aa(paramSkin, (int)paramStage.getWidth(), J.a, ag.MOD_ITEMS));
    N.a(this.a).a();
    localTable2.add(N.a(this.a));
    localTable2.row();
    localTable2.add(new ScrollPane(localTable1)).n().f().e(2.0F);
    paramStage.addActor(localTable2);
  }

  public final boolean a(float paramFloat)
  {
    return true;
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     O
 * JD-Core Version:    0.6.2
 */