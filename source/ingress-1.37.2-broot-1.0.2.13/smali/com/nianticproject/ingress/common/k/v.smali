.class final Lcom/nianticproject/ingress/common/k/v;
.super Lcom/nianticproject/ingress/common/ui/elements/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:Lcom/nianticproject/ingress/common/k/s;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/k/s;Ljava/lang/String;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/nianticproject/ingress/common/k/v;->d:Lcom/nianticproject/ingress/common/k/s;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/k/v;->a:Ljava/lang/String;

    iput p3, p0, Lcom/nianticproject/ingress/common/k/v;->b:F

    iput p4, p0, Lcom/nianticproject/ingress/common/k/v;->c:F

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x40a0

    const/high16 v7, 0x3f80

    const v4, 0x3f733333

    const/4 v3, 0x0

    const/high16 v6, 0x4080

    .line 342
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    const-string/jumbo v0, "default"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 343
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->fontColor:Lcom/badlogic/gdx/graphics/Color;

    .line 344
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/v;->a:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 345
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    .line 346
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    .line 347
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    mul-float/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWidth(F)V

    .line 348
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v0

    mul-float/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setHeight(F)V

    .line 351
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/h;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;-><init>()V

    iget v4, p0, Lcom/nianticproject/ingress/common/k/v;->b:F

    iget v5, p0, Lcom/nianticproject/ingress/common/k/v;->c:F

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/widget/h;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;FFF)V

    .line 357
    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/ui/widget/h;->setScrollY(F)V

    .line 359
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 360
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v2

    const/high16 v3, 0x4120

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 361
    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v2

    const v3, 0x3e99999a

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setHeight(F)V

    .line 362
    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setX(F)V

    .line 363
    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setY(F)V

    .line 364
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-static {v7}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    invoke-static {v7}, Lcom/a/a/e;->b(F)Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->b(Lcom/a/a/e;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v6, v6, v6, v6}, Lcom/a/a/c;->a(FFFF)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->l()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->i()Lcom/a/a/c;

    .line 371
    return-object v1
.end method
