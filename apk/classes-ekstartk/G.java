import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.EventListener;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton;
import java.util.ArrayList;
import java.util.List;

public final class G extends Table
{
  private final Label.LabelStyle jdField_a_of_type_ComBadlogicGdxScenesScene2dUiLabel$LabelStyle;
  public Label a;
  private final Skin jdField_a_of_type_ComBadlogicGdxScenesScene2dUiSkin;
  private Table jdField_a_of_type_ComBadlogicGdxScenesScene2dUiTable;
  public final List a;

  public G(Skin paramSkin, String paramString1, String paramString2)
  {
    this.jdField_a_of_type_JavaUtilList = new ArrayList();
    this.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiSkin = paramSkin;
    this.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiLabel$LabelStyle = ((Label.LabelStyle)paramSkin.get("small-white", Label.LabelStyle.class));
    setBackground(paramSkin.getDrawable("nav-button-clear"));
    Table localTable = new Table();
    localTable.setBackground(paramSkin.getDrawable("nav-button"));
    localTable.add(new Label(paramString1, this.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiLabel$LabelStyle)).a(0.0F, 8.0F, 0.0F, 8.0F);
    add(localTable).k().j().a(8.0F, -8.0F, 8.0F, 8.0F);
    Label localLabel = new Label(paramString2, this.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiLabel$LabelStyle);
    this.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiLabel = localLabel;
    add(localLabel).o().k();
    this.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiLabel.setWrap(true);
    row();
  }

  public G(Skin paramSkin, String paramString1, String paramString2, String paramString3, EventListener paramEventListener)
  {
    this(paramSkin, paramString1, paramString2);
    a(null, paramString3, paramEventListener);
  }

  public final TextButton a(String paramString1, String paramString2, EventListener paramEventListener)
  {
    if (this.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiTable == null)
    {
      Table localTable = new Table();
      this.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiTable = localTable;
      add(localTable).b(Integer.valueOf(2)).o().g().h(8.0F);
    }
    this.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiTable.row();
    if (paramString1 == null)
      this.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiTable.add().o();
    while (true)
    {
      TextButton localTextButton = new TextButton(paramString2, this.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiSkin);
      if (paramEventListener != null)
        localTextButton.addListener(paramEventListener);
      this.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiTable.add(localTextButton).a(e.a(0.5F)).m().i(8.0F);
      this.jdField_a_of_type_JavaUtilList.add(localTextButton);
      return localTextButton;
      this.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiTable.add(new Label(paramString1, this.jdField_a_of_type_ComBadlogicGdxScenesScene2dUiLabel$LabelStyle)).o().m().i(12.0F);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     G
 * JD-Core Version:    0.6.2
 */