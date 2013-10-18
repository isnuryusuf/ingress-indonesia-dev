.class final Lcom/nianticproject/ingress/common/scanner/visuals/cw;
.super Lcom/nianticproject/ingress/common/scanner/visuals/cs;
.source "SourceFile"


# instance fields
.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/shared/ai;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/shared/ai;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private n:Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;

.field private o:Lcom/nianticproject/ingress/common/scanner/visuals/cy;

.field private final p:Lcom/nianticproject/ingress/common/scanner/ef;

.field private final q:Lcom/nianticproject/ingress/common/scanner/ed;

.field private final r:Lcom/nianticproject/ingress/common/scanner/ez;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/scanner/ez;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    const-string/jumbo v0, "TARGET"

    invoke-direct {p0, p1, p2, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/cs;-><init>(Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/scanner/ed;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->g:Ljava/util/Map;

    .line 147
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->h:Ljava/util/Map;

    .line 163
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/cx;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/visuals/cx;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/cw;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->p:Lcom/nianticproject/ingress/common/scanner/ef;

    .line 185
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->q:Lcom/nianticproject/ingress/common/scanner/ed;

    .line 186
    iput-object p4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->r:Lcom/nianticproject/ingress/common/scanner/ez;

    .line 187
    return-void
.end method

.method private a(Lcom/badlogic/gdx/utils/FloatArray;FFF)F
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 434
    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v0, v1, :cond_2

    .line 435
    iget-object v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v1, v1, v0

    .line 436
    sub-float v2, v1, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/ui/widget/f;->getHeight()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 438
    add-float v2, p3, p4

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->getHeight()F

    move-result v1

    add-float/2addr p2, v1

    .line 434
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->getHeight()F

    move-result v1

    sub-float/2addr p2, v1

    goto :goto_1

    .line 451
    :cond_2
    return p2
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/cw;)Lcom/nianticproject/ingress/common/scanner/ed;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->q:Lcom/nianticproject/ingress/common/scanner/ed;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/cw;F)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/visuals/cw;)Lcom/nianticproject/ingress/common/scanner/ez;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->r:Lcom/nianticproject/ingress/common/scanner/ez;

    return-object v0
.end method


# virtual methods
.method protected final a()F
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method protected final a(FFFFFFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    .line 308
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getWidth()F

    move-result v2

    .line 309
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getHeight()F

    move-result v3

    .line 313
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setVisible(Z)V

    .line 314
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setPosition(FF)V

    .line 315
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setRotation(F)V

    .line 343
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getHeight()F

    move-result v0

    .line 346
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getWidth()F

    .line 347
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v2, 0x42b4

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->rotate(F)V

    .line 349
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->o:Lcom/nianticproject/ingress/common/scanner/visuals/cy;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->b()Lcom/badlogic/gdx/utils/FloatArray;

    move-result-object v1

    .line 350
    invoke-direct {p0, v1, p4, p7, p8}, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->a(Lcom/badlogic/gdx/utils/FloatArray;FFF)F

    move-result p4

    .line 351
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v1, p4}, Lcom/nianticproject/ingress/common/ui/widget/f;->setY(F)V

    .line 352
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->o:Lcom/nianticproject/ingress/common/scanner/visuals/cy;

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/da;->a:Lcom/nianticproject/ingress/common/scanner/visuals/da;

    invoke-virtual {v1, v2, p4}, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->a(Lcom/nianticproject/ingress/common/scanner/visuals/da;F)V

    .line 354
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setPosition(FF)V

    .line 356
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->translate(FF)V

    .line 414
    :goto_0
    const v0, 0x3db645a2

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    mul-float/2addr v0, v1

    cmpl-float v0, p4, v0

    if-lez v0, :cond_7

    .line 416
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v0, p3}, Lcom/nianticproject/ingress/common/ui/widget/f;->setX(F)V

    .line 417
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->getHeight()F

    move-result v1

    sub-float v1, p4, v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->setY(F)V

    .line 423
    :goto_1
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getHeight()F

    move-result v0

    .line 360
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getWidth()F

    move-result v1

    .line 361
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v3, -0x3d4c

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->rotate(F)V

    .line 363
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->o:Lcom/nianticproject/ingress/common/scanner/visuals/cy;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->c()Lcom/badlogic/gdx/utils/FloatArray;

    move-result-object v2

    .line 364
    invoke-direct {p0, v2, p4, p7, p8}, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->a(Lcom/badlogic/gdx/utils/FloatArray;FFF)F

    move-result p4

    .line 365
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v2, p4}, Lcom/nianticproject/ingress/common/ui/widget/f;->setY(F)V

    .line 366
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->o:Lcom/nianticproject/ingress/common/scanner/visuals/cy;

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/visuals/da;->b:Lcom/nianticproject/ingress/common/scanner/visuals/da;

    invoke-virtual {v2, v3, p4}, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->a(Lcom/nianticproject/ingress/common/scanner/visuals/da;F)V

    .line 368
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v3

    sub-float v0, v3, v0

    invoke-virtual {v2, v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setPosition(FF)V

    .line 370
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->translate(FF)V

    goto :goto_0

    .line 371
    :cond_1
    const v0, 0x3d75c28f

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    mul-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_2

    const v0, 0x3f666666

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    mul-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_6

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->o:Lcom/nianticproject/ingress/common/scanner/visuals/cy;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->b()Lcom/badlogic/gdx/utils/FloatArray;

    move-result-object v0

    invoke-direct {p0, v0, p4, p7, p8}, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->a(Lcom/badlogic/gdx/utils/FloatArray;FFF)F

    move-result v0

    .line 377
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->o:Lcom/nianticproject/ingress/common/scanner/visuals/cy;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->c()Lcom/badlogic/gdx/utils/FloatArray;

    move-result-object v1

    invoke-direct {p0, v1, p4, p7, p8}, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->a(Lcom/badlogic/gdx/utils/FloatArray;FFF)F

    move-result v1

    .line 380
    cmpl-float v4, v0, p4

    if-nez v4, :cond_3

    cmpl-float v4, v1, p4

    if-nez v4, :cond_3

    .line 383
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->o:Lcom/nianticproject/ingress/common/scanner/visuals/cy;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/da;->c:Lcom/nianticproject/ingress/common/scanner/visuals/da;

    invoke-virtual {v0, v1, p4}, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->a(Lcom/nianticproject/ingress/common/scanner/visuals/da;F)V

    .line 397
    :goto_2
    const v0, 0x3d75c28f

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    mul-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_5

    .line 398
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v1, 0x4334

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->rotate(F)V

    .line 399
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v1, 0x3d75c28f

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {v0, p3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setPosition(FF)V

    .line 401
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->translate(FF)V

    goto/16 :goto_0

    .line 385
    :cond_3
    sub-float v4, v0, p4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v5, v1, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 389
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->o:Lcom/nianticproject/ingress/common/scanner/visuals/cy;

    sget-object v4, Lcom/nianticproject/ingress/common/scanner/visuals/da;->a:Lcom/nianticproject/ingress/common/scanner/visuals/da;

    invoke-virtual {v1, v4, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->a(Lcom/nianticproject/ingress/common/scanner/visuals/da;F)V

    move p4, v0

    move p3, p5

    goto :goto_2

    .line 394
    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->o:Lcom/nianticproject/ingress/common/scanner/visuals/cy;

    sget-object v4, Lcom/nianticproject/ingress/common/scanner/visuals/da;->b:Lcom/nianticproject/ingress/common/scanner/visuals/da;

    invoke-virtual {v0, v4, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->a(Lcom/nianticproject/ingress/common/scanner/visuals/da;F)V

    move p4, v1

    move p3, p6

    goto :goto_2

    .line 403
    :cond_5
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v1, 0x3f666666

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->d:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v1, v3

    invoke-virtual {v0, p3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setPosition(FF)V

    goto/16 :goto_0

    .line 406
    :cond_6
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setVisible(Z)V

    .line 409
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->o:Lcom/nianticproject/ingress/common/scanner/visuals/cy;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/da;->c:Lcom/nianticproject/ingress/common/scanner/visuals/da;

    invoke-virtual {v0, v1, p4}, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->a(Lcom/nianticproject/ingress/common/scanner/visuals/da;F)V

    goto/16 :goto_0

    .line 420
    :cond_7
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v0, p3}, Lcom/nianticproject/ingress/common/ui/widget/f;->setX(F)V

    .line 421
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->getHeight()F

    move-result v1

    add-float/2addr v1, p4

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->setY(F)V

    goto/16 :goto_1
.end method

.method protected final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 496
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 497
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 498
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/f;->pack()V

    .line 500
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 501
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 502
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/f;->pack()V

    .line 503
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 260
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    .line 262
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    .line 265
    if-le v5, v4, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sub-int v1, v5, v4

    div-int/lit8 v2, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    .line 269
    :goto_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 270
    return-void

    .line 265
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sub-int v0, v4, v5

    div-int/lit8 v4, v0, 0x2

    move-object v2, p1

    move v6, v5

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected final a(Lcom/badlogic/gdx/math/Vector2;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 483
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/high16 v7, 0x40a0

    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 191
    invoke-super {p0, p1, p2}, Lcom/nianticproject/ingress/common/scanner/visuals/cs;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 193
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 194
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setAlign(I)V

    .line 195
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->fill:Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setScaling(Lcom/badlogic/gdx/utils/Scaling;)V

    .line 197
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const-string/jumbo v1, "hud-arrow"

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 198
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setAlign(I)V

    .line 199
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->fit:Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setScaling(Lcom/badlogic/gdx/utils/Scaling;)V

    .line 200
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    const v2, 0x3cc49ba6

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setHeight(F)V

    .line 202
    invoke-static {p2}, Lcom/nianticproject/ingress/common/inventory/ui/v;->a(Lcom/badlogic/gdx/scenes/scene2d/Stage;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f733333

    mul-float/2addr v0, v1

    .line 204
    new-instance v1, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;

    invoke-direct {v1, p1}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->n:Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;

    .line 205
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->n:Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;

    invoke-virtual {v1, v5}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->a(Z)V

    .line 207
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, " "

    const-string/jumbo v3, "default-font"

    const-string/jumbo v4, "yellow"

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 208
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, "L1"

    const-string/jumbo v3, "default-font"

    const-string/jumbo v4, "white"

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 209
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string/jumbo v2, " PORTAL"

    const-string/jumbo v3, "x-small-font"

    const-string/jumbo v4, "white"

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    .line 210
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    .line 211
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->clear()V

    .line 213
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 214
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 215
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/a/a/c;->a(Ljava/lang/Integer;)Lcom/a/a/c;

    .line 216
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/a/a/c;->a(Ljava/lang/Integer;)Lcom/a/a/c;

    .line 218
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 219
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 220
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/a/a/c;->a(Ljava/lang/Integer;)Lcom/a/a/c;

    .line 222
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v2, v1}, Lcom/nianticproject/ingress/common/ui/widget/f;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->a(Ljava/lang/Integer;)Lcom/a/a/c;

    .line 223
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    new-array v2, v8, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->n:Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/f;->stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/a/a/c;->g(F)Lcom/a/a/c;

    .line 225
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->g:Ljava/util/Map;

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    const-string/jumbo v2, "portal-vector-aliens"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->g:Ljava/util/Map;

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    const-string/jumbo v2, "portal-vector-resistance"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->g:Ljava/util/Map;

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    const-string/jumbo v2, "portal-vector-neutral"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->h:Ljava/util/Map;

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    const-string/jumbo v2, "aliens"

    const-class v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->h:Ljava/util/Map;

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    const-string/jumbo v2, "resistance"

    const-class v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->h:Ljava/util/Map;

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    const-string/jumbo v2, "neutral"

    const-class v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    const-string/jumbo v0, "portal-vector-target"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 233
    return-void
.end method

.method final a(Lcom/nianticproject/ingress/common/scanner/visuals/cy;)V
    .locals 0
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->o:Lcom/nianticproject/ingress/common/scanner/visuals/cy;

    .line 513
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/ai;)V
    .locals 2
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    .line 254
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/f;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 255
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 256
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 257
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 244
    return-void
.end method

.method protected final b()F
    .locals 1

    .prologue
    .line 456
    const v0, 0x3d54fdf4

    return v0
.end method

.method public final b(I)V
    .locals 3
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "L"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    .line 249
    return-void
.end method

.method protected final c()F
    .locals 1

    .prologue
    .line 461
    const v0, 0x3d54fdf4

    return v0
.end method

.method protected final d()F
    .locals 1

    .prologue
    .line 466
    const v0, 0x3e041893

    return v0
.end method

.method protected final e()F
    .locals 1

    .prologue
    .line 471
    const v0, 0x3db645a2

    return v0
.end method

.method protected final g()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->e:Lcom/nianticproject/ingress/common/ui/widget/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->f:Lcom/nianticproject/ingress/common/ui/widget/f;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {v0, v1, v2}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method

.method protected final h()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->q:Lcom/nianticproject/ingress/common/scanner/ed;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->a:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/ed;->e()Lcom/google/a/d/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ed;->a(Lcom/google/a/d/u;)V

    .line 488
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->r:Lcom/nianticproject/ingress/common/scanner/ez;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ez;->b(Z)V

    .line 489
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->q:Lcom/nianticproject/ingress/common/scanner/ed;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->p:Lcom/nianticproject/ingress/common/scanner/ef;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ed;->a(Lcom/nianticproject/ingress/common/scanner/ef;)V

    .line 491
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->f()V

    .line 492
    return-void
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->n:Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->setVisible(Z)V

    .line 278
    return-void
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->n:Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ProgressIndicator;->setVisible(Z)V

    .line 282
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cw;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 283
    return-void
.end method
