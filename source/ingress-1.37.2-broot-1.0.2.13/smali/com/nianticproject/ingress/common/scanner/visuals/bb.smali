.class final Lcom/nianticproject/ingress/common/scanner/visuals/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/ac;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/visuals/aw;

.field private b:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field private c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/visuals/aw;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 252
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->a:Lcom/nianticproject/ingress/common/scanner/visuals/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->b:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 249
    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 253
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->d:Ljava/lang/String;

    .line 254
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 263
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->b:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 264
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    const-string/jumbo v1, "default-font"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    .line 265
    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->d:Ljava/lang/String;

    const/high16 v3, 0x4120

    invoke-direct {v1, v2, v0, v3}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;F)V

    .line 266
    new-instance v0, Lcom/nianticproject/ingress/common/ui/a/f;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/ui/a/f;-><init>(Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;)V

    const/high16 v2, 0x40c0

    new-instance v3, Lcom/nianticproject/ingress/common/ui/a/e;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/ui/a/e;-><init>()V

    invoke-static {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(FLcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 268
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;->setAlignment(I)V

    .line 269
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 270
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->b:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 271
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->defaults()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    const v2, 0x3ca3d70a

    invoke-static {v2}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->d(Lcom/a/a/e;)Lcom/a/a/c;

    .line 274
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v2, 0x3f00

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->b:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    .line 281
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->b:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v2

    const v3, 0x3f19999a

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setY(F)V

    .line 283
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 284
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const-string/jumbo v1, "transparent-outline-red"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 285
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pack()V

    .line 286
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->b:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 287
    return-void
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public final dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 291
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->b:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->remove()Z

    .line 293
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->b:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 295
    :cond_0
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bb;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 296
    return-void
.end method
