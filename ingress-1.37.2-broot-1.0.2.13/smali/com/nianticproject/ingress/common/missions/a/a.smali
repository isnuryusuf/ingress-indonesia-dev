.class public abstract Lcom/nianticproject/ingress/common/missions/a/a;
.super Lcom/nianticproject/ingress/common/ui/b/s;
.source "SourceFile"


# static fields
.field private static d:F


# instance fields
.field protected a:Lcom/nianticproject/ingress/common/missions/a/f;

.field protected final b:Lcom/nianticproject/ingress/common/ui/t;

.field protected c:Lcom/nianticproject/ingress/common/ui/ac;

.field private e:Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const v0, 0x3d4ccccd

    sput v0, Lcom/nianticproject/ingress/common/missions/a/a;->d:F

    return-void
.end method

.method protected constructor <init>(Lcom/nianticproject/ingress/common/ui/ad;Lcom/nianticproject/ingress/common/ui/t;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/nianticproject/ingress/common/ui/ac;

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/ui/b/s;-><init>(Lcom/nianticproject/ingress/common/ui/ad;[Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 75
    new-instance v0, Lcom/nianticproject/ingress/common/missions/a/b;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/a/b;-><init>(Lcom/nianticproject/ingress/common/missions/a/a;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/a;->c:Lcom/nianticproject/ingress/common/ui/ac;

    .line 64
    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/a/a;->b:Lcom/nianticproject/ingress/common/ui/t;

    .line 65
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a/a;->e()V

    .line 66
    return-void
.end method

.method protected static a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/widget/z;Ljava/lang/String;Ljava/lang/String;Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const-wide v5, 0x3fd70a3d70a3d70aL

    .line 373
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 374
    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    const-string/jumbo v3, ""

    const-string/jumbo v0, "large-accept"

    const-class v4, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    invoke-virtual {p0, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    invoke-direct {v2, p4, v7, v3, v0}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;)V

    .line 379
    invoke-virtual {v2, p2}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->a(Lcom/nianticproject/ingress/common/ui/widget/z;)V

    .line 381
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const/high16 v2, 0x3f00

    invoke-static {v2}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    const v2, 0x3ecccccd

    invoke-static {v2}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    move-result-object v0

    float-to-double v2, p1

    mul-double/2addr v2, v5

    double-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    .line 388
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 390
    if-eqz p6, :cond_0

    .line 391
    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;

    const-string/jumbo v3, ""

    const-string/jumbo v0, "medium-ignore"

    const-class v4, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    invoke-virtual {p0, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    invoke-direct {v2, p5, v7, v3, v0}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;)V

    .line 396
    invoke-virtual {v2, p3}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->a(Lcom/nianticproject/ingress/common/ui/widget/z;)V

    .line 398
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const v2, 0x3ea8f5c3

    invoke-static {v2}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    const v2, 0x3eb33333

    invoke-static {v2}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    move-result-object v0

    float-to-double v2, p1

    mul-double/2addr v2, v5

    double-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    .line 407
    :cond_0
    return-object v1
.end method

.method protected static a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Ljava/lang/String;FZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4170

    const/4 v0, 0x0

    const/16 v5, 0xa

    .line 156
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 157
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    .line 158
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setY(F)V

    .line 159
    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 163
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 164
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v0, "ada-title"

    const-class v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p0, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v3, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/a/a/c;->a(Ljava/lang/Integer;)Lcom/a/a/c;

    .line 167
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 169
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v0, "ada-location"

    const-class v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p0, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v3, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/a/a/c;->a(Ljava/lang/Integer;)Lcom/a/a/c;

    .line 173
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->a(Ljava/lang/Integer;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    .line 178
    if-eqz p4, :cond_0

    .line 180
    new-instance v2, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;

    const-string/jumbo v0, "ada-wheels-sm"

    const-class v3, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;

    invoke-virtual {p0, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;

    invoke-direct {v2, v0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;-><init>(Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator$ProgressIndicatorStyle;)V

    .line 182
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->a(Z)V

    .line 184
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->a(Ljava/lang/Integer;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    .line 190
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected abstract a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.end method

.method protected final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FLjava/util/List;Ljava/lang/String;Ljava/lang/String;F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            "F",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Table;"
        }
    .end annotation

    .prologue
    .line 201
    const-string/jumbo v3, "message-label"

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    invoke-virtual {v6, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;

    invoke-direct {v1, p1}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/missions/a/a;->e:Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const-string/jumbo v2, "message-window"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a/a;->e:Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v2

    const/high16 v4, 0x4080

    const/high16 v5, 0x4080

    const/high16 v7, 0x4080

    const/high16 v8, 0x4080

    invoke-virtual {v2, v4, v5, v7, v8}, Lcom/a/a/c;->a(FFFF)Lcom/a/a/c;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->b()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->i()Lcom/a/a/c;

    move-result-object v1

    const v2, 0x3f7d70a4

    invoke-static {v2}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v1

    const v2, 0x3f2e147b

    invoke-static {v2}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;

    const-string/jumbo v2, "audio-pause"

    invoke-direct {v1, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;

    const-string/jumbo v4, "audio-rewind"

    invoke-direct {v2, p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    new-instance v4, Lcom/nianticproject/ingress/common/missions/a/f;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/missions/a/a;->e:Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;

    invoke-direct {v4, v5}, Lcom/nianticproject/ingress/common/missions/a/f;-><init>(Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;)V

    iput-object v4, p0, Lcom/nianticproject/ingress/common/missions/a/a;->a:Lcom/nianticproject/ingress/common/missions/a/f;

    new-instance v4, Lcom/nianticproject/ingress/common/missions/a/c;

    invoke-direct {v4, p0, v1, p1}, Lcom/nianticproject/ingress/common/missions/a/c;-><init>(Lcom/nianticproject/ingress/common/missions/a/a;Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v4, Lcom/nianticproject/ingress/common/missions/a/d;

    invoke-direct {v4, p0, v1, p1}, Lcom/nianticproject/ingress/common/missions/a/d;-><init>(Lcom/nianticproject/ingress/common/missions/a/a;Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    const/high16 v5, 0x3e80

    invoke-static {v5}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v1

    const v5, 0x3f666666

    invoke-static {v5}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    const/high16 v2, 0x3e80

    invoke-static {v2}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v1

    const v2, 0x3f666666

    invoke-static {v2}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-static {v2}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v1

    const v2, 0x3eb33333

    invoke-static {v2}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->i()Lcom/a/a/c;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->b()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    move-result-object v0

    const v1, 0x3f7d70a4

    invoke-static {v1}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    const v1, 0x3e99999a

    invoke-static {v1}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const v0, 0x3d23d70a

    invoke-static {v0}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->j()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/a/a/c;->f(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/a/a/c;->h(Lcom/a/a/e;)Lcom/a/a/c;

    const/4 v2, 0x0

    invoke-static {p6}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Mission - "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "mission-briefing-title-old"

    const-class v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v2, v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getTextBounds()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    add-float/2addr v2, v0

    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v5, "Objectives"

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v4, v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getTextBounds()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    add-float/2addr v0, v2

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "- "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v0, "mission-briefing-objective"

    const-class v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v7, v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getTextBounds()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    add-float/2addr v0, v2

    move v2, v0

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "\n "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v4, v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const v0, 0x3f666666

    mul-float/2addr v0, p3

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWidth(F)V

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->layout()V

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getTextBounds()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    add-float/2addr v2, v0

    const/high16 v3, 0x3f80

    div-float/2addr v0, v2

    sub-float/2addr v3, v0

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->l()Lcom/a/a/c;

    move-result-object v0

    const/high16 v2, 0x3f80

    invoke-static {v2}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    invoke-static {}, Lcom/a/a/e;->a()Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/h;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;-><init>()V

    sget v5, Lcom/nianticproject/ingress/common/missions/a/a;->d:F

    move/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/widget/h;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;FFF)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/h;->setScrollPercentY(F)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/h;->setScrollingDisabled(ZZ)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    const v2, 0x3f59999a

    invoke-static {v2}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->j()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->c()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    move-result-object v0

    const v1, 0x3f7d70a4

    invoke-static {v1}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    const v1, 0x3f30a3d7

    invoke-static {v1}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    return-object v6
.end method

.method protected abstract b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.end method

.method protected abstract c(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/a;->c:Lcom/nianticproject/ingress/common/ui/ac;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/missions/a/a;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 73
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/a;->a:Lcom/nianticproject/ingress/common/missions/a/f;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/a;->a:Lcom/nianticproject/ingress/common/missions/a/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/a/f;->a()V

    .line 415
    :cond_0
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/b/s;->f()V

    .line 416
    return-void
.end method

.method protected r_()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method
