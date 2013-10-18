.class public final Lcom/nianticproject/ingress/common/ui/widget/ActionButton;
.super Lcom/nianticproject/ingress/common/ui/widget/x;
.source "SourceFile"


# instance fields
.field private final c:Lcom/nianticproject/ingress/common/ui/widget/c;

.field private final d:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field private final e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private final f:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

.field private final g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private final h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private final i:Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/ui/widget/b;)V
    .locals 4
    .parameter

    .prologue
    .line 176
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/b;->e:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/ui/widget/b;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v2, p1, Lcom/nianticproject/ingress/common/ui/widget/b;->d:Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->enabledButtonStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    iget-object v3, p1, Lcom/nianticproject/ingress/common/ui/widget/b;->d:Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->disabledButtonStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/ui/widget/x;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 92
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/a;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/widget/a;-><init>(Lcom/nianticproject/ingress/common/ui/widget/ActionButton;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->c:Lcom/nianticproject/ingress/common/ui/widget/c;

    .line 181
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/b;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 182
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/b;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 183
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/b;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 184
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/b;->f:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->f:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    .line 185
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/b;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 186
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/b;->d:Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->i:Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 156
    const-class v0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v4

    int-to-float v2, v2

    div-float/2addr v2, v4

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x4416

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const v1, 0x3fb33333

    :cond_0
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->setScale(F)Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    const-string/jumbo v0, ""

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/nianticproject/ingress/common/ui/widget/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;)V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;-><init>(Lcom/nianticproject/ingress/common/ui/widget/b;)V

    .line 173
    return-void
.end method

.method static synthetic a(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    const v0, 0x3ca3d70a

    invoke-static {v0}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v0

    const/high16 v1, -0x4180

    invoke-static {v1}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v1

    const v2, -0x41b33333

    invoke-static {v2}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v2

    iget-object v3, p2, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->mainLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v3

    neg-float v3, v3

    const v4, 0x3eb33333

    mul-float/2addr v3, v4

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/a/c;->k()Lcom/a/a/c;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/a/c;->k()Lcom/a/a/c;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/a/a/c;->f(Lcom/a/a/e;)Lcom/a/a/c;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop(Lcom/a/a/e;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom(Lcom/a/a/e;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v4
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/widget/ActionButton;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/widget/ActionButton;)Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->f:Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/ui/widget/ActionButton;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/ui/widget/ActionButton;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/ui/widget/ActionButton;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object v0
.end method


# virtual methods
.method protected final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->a()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 204
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->b(Z)V

    .line 205
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->i:Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->mainLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 206
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->i:Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->subLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 208
    :cond_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->i:Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->mainDisabledLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    goto :goto_0

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->i:Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton$ActionButtonStyle;->subDisabledLabelStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    goto :goto_1
.end method

.method public final b()Lcom/nianticproject/ingress/common/ui/widget/c;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ActionButton;->c:Lcom/nianticproject/ingress/common/ui/widget/c;

    return-object v0
.end method
