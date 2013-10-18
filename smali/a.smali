.class public La;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private static a:Ljava/text/SimpleDateFormat;

.field private static b:Ljava/text/SimpleDateFormat;

.field private static c:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mma"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, La;->a:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, La;->b:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, La;->c:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Class;
    .locals 2

    invoke-static {}, LJ;->a()[Lcom/nianticproject/ingress/common/ui/widget/ag;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, LJ;->a(Lcom/nianticproject/ingress/common/ui/widget/ag;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static ac()Z
    .locals 1

    sget-boolean v0, LJ;->a:Z

    return v0
.end method

.method public static ad()Z
    .locals 1

    sget-boolean v0, LJ;->q:Z

    return v0
.end method

.method public static ae(Lcom/nianticproject/ingress/NemesisActivity;)V
    .locals 3

    sput-object p0, LJ;->a:Lcom/nianticproject/ingress/NemesisActivity;

    invoke-static {}, LJ;->a()V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/NemesisActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "Ingress - Keep Screen ON"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, LJ;->a:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, LJ;->b()V

    return-void
.end method

.method public static af()Lcom/nianticproject/ingress/shared/ah;
    .locals 1

    sget-object v0, Lcom/nianticproject/ingress/shared/ah;->a:Lcom/nianticproject/ingress/shared/ah;

    return-object v0
.end method

.method public static ag(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V
    .locals 6

    sput-object p0, LJ;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    sget-boolean v0, LJ;->x:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, LJ;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string v1, "portal-stats"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v1, LJ;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string v2, "ops-title"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCells()Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clear()V

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/a/c;

    invoke-virtual {v2}, Lcom/a/a/c;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->k()Lcom/a/a/c;

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/a/c;

    invoke-virtual {v2}, Lcom/a/a/c;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->o()Lcom/a/a/c;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    const/4 v2, 0x3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/a/c;

    invoke-virtual {v2}, Lcom/a/a/c;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->k()Lcom/a/a/c;

    const/4 v2, 0x4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/a/c;

    invoke-virtual {v2}, Lcom/a/a/c;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->o()Lcom/a/a/c;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->r:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-static {v2}, LJ;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;)I

    move-result v3

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v5, "Keys:"

    if-lez v3, :cond_1

    move-object v2, v1

    :goto_1
    invoke-direct {v4, v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->k()Lcom/a/a/c;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    if-lez v3, :cond_2

    :goto_2
    invoke-direct {v2, v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->o()Lcom/a/a/c;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v2, "Dist.:"

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->k()Lcom/a/a/c;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sput-object v1, La;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    goto/16 :goto_0

    :cond_1
    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_2
.end method

.method public static ai(Ljava/util/List;)V
    .locals 1

    new-instance v0, Lb;

    invoke-direct {v0}, Lb;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LN;

    invoke-direct {v0}, LN;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static aj()Z
    .locals 1

    sget-boolean v0, LJ;->i:Z

    return v0
.end method

.method public static ak(F)F
    .locals 1

    sget-boolean v0, LJ;->n:Z

    if-eqz v0, :cond_0

    :goto_0
    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static al()Z
    .locals 1

    sget-boolean v0, LJ;->l:Z

    return v0
.end method

.method public static am(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V
    .locals 6

    const v5, 0x3e947ae1

    const v4, 0x3df5c28f

    sget-boolean v0, LJ;->y:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCells()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clear()V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v0

    invoke-static {v5}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-static {v4}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/a/a/c;->a(Lcom/a/a/e;Lcom/a/a/e;)Lcom/a/a/c;

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v0

    invoke-static {v5}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v1

    invoke-static {v4}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;Lcom/a/a/e;)Lcom/a/a/c;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    goto :goto_0
.end method

.method public static an()Z
    .locals 1

    sget-boolean v0, LJ;->j:Z

    return v0
.end method

.method public static ao(Lcom/nianticproject/ingress/NemesisActivity;)V
    .locals 1

    sget-boolean v0, LJ;->w:Z

    if-eqz v0, :cond_0

    sget-object v0, LJ;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, LJ;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method public static ap()Lcom/nianticproject/ingress/shared/ah;
    .locals 1

    sget-object v0, Lcom/nianticproject/ingress/shared/ah;->c:Lcom/nianticproject/ingress/shared/ah;

    return-object v0
.end method

.method public static aq(Lcom/nianticproject/ingress/common/b/p;)V
    .locals 0

    sput-object p0, LJ;->a:Lcom/nianticproject/ingress/common/b/p;

    invoke-static {}, LJ;->c()V

    return-void
.end method

.method public static ar()Ljava/text/SimpleDateFormat;
    .locals 1

    sget v0, LJ;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, La;->c:Ljava/text/SimpleDateFormat;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, La;->a:Ljava/text/SimpleDateFormat;

    goto :goto_0

    :pswitch_1
    sget-object v0, La;->b:Ljava/text/SimpleDateFormat;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static at(F)F
    .locals 1

    sget-boolean v0, LJ;->o:Z

    if-eqz v0, :cond_0

    :goto_0
    return p0

    :cond_0
    const/high16 p0, 0x3f80

    goto :goto_0
.end method

.method public static au(F)F
    .locals 1

    sget-boolean v0, LJ;->o:Z

    if-eqz v0, :cond_0

    :goto_0
    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, LJ;->t:Z

    return v0
.end method

.method public static d()[Lcom/nianticproject/ingress/common/ui/widget/ag;
    .locals 1

    invoke-static {}, LJ;->a()[Lcom/nianticproject/ingress/common/ui/widget/ag;

    move-result-object v0

    return-object v0
.end method

.method public static e()V
    .locals 3

    sget-boolean v0, LJ;->x:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, LJ;->a:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v1

    sget-object v0, LJ;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->r:Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v2, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/shared/b/a;->a(Lcom/google/a/d/u;Lcom/google/a/d/u;)D

    move-result-wide v0

    sget-object v2, La;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    double-to-float v0, v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/l;->a(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static i()Z
    .locals 1

    sget-boolean v0, LJ;->c:Z

    return v0
.end method

.method public static j(Lcom/nianticproject/ingress/common/ui/widget/ag;)Ljava/lang/String;
    .locals 2

    sget-object v0, LI;->a:[I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

## Change
    :pswitch_0
    const-string v0, "MOD"

    goto :goto_0

    :pswitch_1
    const-string v0, "ITEMS"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static k(Lcom/nianticproject/ingress/common/inventory/i;)V
    .locals 0

    sput-object p0, LJ;->a:Lcom/nianticproject/ingress/common/inventory/i;

    return-void
.end method

.method public static l()V
    .locals 1

    invoke-static {}, Lcom/nianticproject/ingress/common/g/i;->a()Lcom/nianticproject/ingress/common/g/e;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/g/o;

    sput-object v0, LJ;->a:Lcom/nianticproject/ingress/common/g/o;

    sget-object v0, LJ;->a:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->n()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/t;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    sput-object v0, LJ;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-void
.end method

.method public static n()Z
    .locals 1

    sget-boolean v0, LJ;->v:Z

    return v0
.end method

.method public static o(Lcom/nianticproject/ingress/NemesisActivity;)V
    .locals 1

    sget-boolean v0, LJ;->w:Z

    if-eqz v0, :cond_0

    sget-object v0, LJ;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LJ;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public static p(Landroid/app/Application;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    sput-object p0, LJ;->a:Landroid/app/Application;

    const-string v0, "mod"

    invoke-virtual {p0, v0, v4}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "swapTouchMenuButtons"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->a:Z

    const-string v1, "itemsTab"

    const-string v2, "HIDDEN"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LS;->valueOf(Ljava/lang/String;)LS;

    move-result-object v1

    sput-object v1, LJ;->a:LS;

    const-string v1, "showOrigItemsTab"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->b:Z

    const-string v1, "showAgentTab"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->c:Z

    const-string v1, "showIntelTab"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->d:Z

    const-string v1, "showMissionTab"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->e:Z

    const-string v1, "showRecruitTab"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->f:Z

    const-string v1, "showPasscodeTab"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->g:Z

    const-string v1, "showDeviceTab"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->h:Z

    const-string v1, "skipIntro"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->i:Z

    const-string v1, "scannerZoomInAnimEnabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->j:Z

    const-string v1, "hackAnimEnabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->k:Z

    const-string v1, "rotateInventoryItemsEnabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->l:Z

    const-string v1, "recycleAnimationsEnabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->m:Z

    const-string v1, "xmFlowEnabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->n:Z

    const-string v1, "shieldAnimEnabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->o:Z

    const-string v1, "fullscreen"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->p:Z

    const-string v1, "showPortalVectors"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->q:Z

    const-string v1, "portalParticlesEnabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->r:Z

    const-string v1, "xmGlobsEnabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->s:Z

    const-string v1, "scannerObjectsEnabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->t:Z

    const-string v1, "simplifyInventoryItems"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->u:Z

    const-string v1, "gpsLockTime"

    const v2, 0x1d4c0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, LJ;->b:I

    const-string v1, "chatTimeFormat"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, LJ;->a:I

    const-string v1, "vibration"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->v:Z

    const-string v1, "keepScreenOn"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->w:Z

    const-string v1, "changePortalInfoDialog"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->x:Z

    const-string v1, "enablePowerCubesRecycle"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->y:Z

    const-string v1, "isPrivacyOn"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, LJ;->z:Z

    sget-object v1, LU;->a:Ljava/util/Map;

    const-string v2, "uiVariant"

    const-string v3, "auto"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU;

    sput-object v0, LJ;->b:LU;

    if-nez v0, :cond_0

    sget-object v0, LU;->a:LU;

    sput-object v0, LJ;->b:LU;

    :cond_0
    sget-boolean v0, LJ;->r:Z

    sput-boolean v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->a:Z

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, LJ;->a:Landroid/util/DisplayMetrics;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, LJ;->a:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public static q()Z
    .locals 1

    sget-boolean v0, LJ;->z:Z

    return v0
.end method

.method public static r(Lcom/nianticproject/ingress/common/g/p;)V
    .locals 0

    sput-object p0, LJ;->a:Lcom/nianticproject/ingress/common/g/p;

    return-void
.end method

.method public static s(Lcom/nianticproject/ingress/common/ui/widget/ag;)V
    .locals 2

    sget-object v0, LJ;->a:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->n()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    invoke-static {p0}, LJ;->a(Lcom/nianticproject/ingress/common/ui/widget/ag;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->d(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    return-void
.end method

.method public static t()Z
    .locals 1

    sget-boolean v0, LJ;->m:Z

    return v0
.end method

.method public static u()J
    .locals 2

    sget v0, LJ;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public static v()Z
    .locals 1

    sget-boolean v0, LJ;->u:Z

    return v0
.end method

.method public static w()Z
    .locals 1

    sget-boolean v0, LJ;->k:Z

    return v0
.end method

.method public static x(F)F
    .locals 1

    sget-boolean v0, LJ;->k:Z

    if-eqz v0, :cond_0

    :goto_0
    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static y(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x6

    const-string v0, "{data:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "/data/"

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const-string v2, ","

    add-int/lit8 v3, v0, 0x6

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v0, LJ;->a:LU;

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, LU;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v0, LU;->a:Ljava/util/Map;

    iget-object v2, v2, LU;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU;

    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static z(F)F
    .locals 1

    sget-boolean v0, LJ;->j:Z

    if-eqz v0, :cond_0

    :goto_0
    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method
