.class public Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "SourceFile"


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Lcom/nianticproject/ingress/common/ui/widget/bb;

.field private L:Lcom/nianticproject/ingress/common/ui/widget/bc;

.field private M:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private N:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation
.end field

.field private final O:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation
.end field

.field private final P:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

.field private final a:Lcom/badlogic/gdx/math/Rectangle;

.field private final b:Lcom/badlogic/gdx/math/Rectangle;

.field private final c:Lcom/badlogic/gdx/math/Rectangle;

.field private final d:Lcom/badlogic/gdx/math/Rectangle;

.field private e:F

.field private f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

.field private g:I

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private m:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private n:Z

.field private o:F

.field private p:F

.field private q:Z

.field private r:Z

.field private final s:I

.field private final t:I

.field private u:Z

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private final z:F


# direct methods
.method public constructor <init>(IILcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;Lcom/nianticproject/ingress/common/ui/widget/bb;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;-><init>(IILcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;Lcom/nianticproject/ingress/common/ui/widget/bb;B)V

    .line 341
    return-void
.end method

.method public constructor <init>(IILcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;Lcom/nianticproject/ingress/common/ui/widget/bb;B)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 345
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>(Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a:Lcom/badlogic/gdx/math/Rectangle;

    .line 162
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->b:Lcom/badlogic/gdx/math/Rectangle;

    .line 163
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->c:Lcom/badlogic/gdx/math/Rectangle;

    .line 164
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->d:Lcom/badlogic/gdx/math/Rectangle;

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->e:F

    .line 176
    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->l:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 177
    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->m:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 191
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->x:F

    .line 202
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->E:Z

    .line 203
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->F:Z

    .line 213
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->N:Ljava/util/Set;

    .line 236
    new-instance v0, Lcom/nianticproject/ingress/common/ui/widget/ba;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/widget/ba;-><init>(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->P:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    .line 346
    iput-object p4, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->K:Lcom/nianticproject/ingress/common/ui/widget/bb;

    .line 347
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->s:I

    .line 348
    iput p2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->t:I

    .line 349
    const/high16 v0, 0x3ea0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->z:F

    .line 350
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e2aaaab

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->B:F

    const/high16 v1, 0x3d80

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->C:F

    const v1, 0x3eb55555

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->D:F

    .line 352
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget v0, p3, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->widgetsPerSide:I

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->g:I

    iget v0, p3, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->widgetOverdraw:F

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->h:F

    iget v0, p3, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->widgetScaling:F

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->i:F

    iget v0, p3, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->widgetAlpha:F

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->j:F

    iget v0, p3, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->curveFalloff:F

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->k:F

    iget-object v0, p3, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->leftButton:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->rightButton:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p3, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->leftButton:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->l:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p3, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->rightButton:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->m:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :cond_0
    iget v0, p3, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->flingTimeS:F

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->o:F

    iget v0, p3, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->scrollSpeedScalar:F

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->p:F

    iget-boolean v0, p3, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->centerOnSelection:Z

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->n:Z

    iget-boolean v0, p3, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->keepActorsInside:Z

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->q:Z

    iget-boolean v0, p3, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->useScissor:Z

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->r:Z

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->invalidateHierarchy()V

    .line 353
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->g:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->O:Lcom/badlogic/gdx/utils/Array;

    .line 355
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->P:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 356
    return-void
.end method

.method private a()F
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->w:F

    neg-float v0, v0

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->o:F

    div-float/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;)F
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->p:F

    return v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;I)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->b(I)F

    move-result v0

    return v0
.end method

.method private a(IIF)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x40a0

    const/high16 v8, 0x4000

    const/high16 v2, 0x3f80

    .line 838
    invoke-virtual {p0, p2}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a(I)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    .line 839
    if-nez v1, :cond_0

    .line 875
    :goto_0
    return-void

    .line 843
    :cond_0
    sub-int v3, p2, p1

    .line 844
    if-gez v3, :cond_4

    if-nez v3, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v0

    .line 845
    :goto_1
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, p3

    add-float/2addr v0, v4

    iget v4, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->g:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 846
    float-to-double v4, v0

    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->k:F

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    .line 848
    iget v4, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->s:I

    int-to-float v4, v4

    iget v5, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->i:F

    sub-float/2addr v5, v2

    mul-float/2addr v5, v0

    add-float/2addr v5, v2

    mul-float/2addr v4, v5

    .line 849
    iget v5, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->t:I

    int-to-float v5, v5

    iget v6, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->i:F

    sub-float/2addr v6, v2

    mul-float/2addr v6, v0

    add-float/2addr v6, v2

    mul-float/2addr v5, v6

    .line 850
    iget v6, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->j:F

    sub-float/2addr v6, v2

    mul-float/2addr v0, v6

    add-float/2addr v0, v2

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v2

    .line 852
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->getWidth()F

    move-result v0

    div-float/2addr v0, v8

    iget v6, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->s:I

    int-to-float v6, v6

    iget v7, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->h:F

    mul-float/2addr v6, v7

    int-to-float v3, v3

    mul-float/2addr v3, v6

    add-float/2addr v0, v3

    .line 853
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->getHeight()F

    move-result v3

    div-float/2addr v3, v8

    iget-object v6, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v3, v6

    .line 854
    iget v6, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->s:I

    int-to-float v6, v6

    iget v7, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->h:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, p3

    sub-float/2addr v0, v6

    div-float v6, v4, v8

    sub-float/2addr v0, v6

    .line 855
    div-float v6, v5, v8

    sub-float/2addr v3, v6

    .line 857
    iget-boolean v6, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->q:Z

    if-eqz v6, :cond_1

    .line 859
    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 861
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->getWidth()F

    move-result v6

    sub-float/2addr v6, v4

    sub-float/2addr v6, v9

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 864
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    .line 865
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    iput v2, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 866
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setX(F)V

    .line 867
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setY(F)V

    .line 868
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    .line 869
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    .line 870
    instance-of v0, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 871
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->invalidate()V

    .line 874
    :cond_2
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 844
    goto/16 :goto_1

    :cond_4
    const/high16 v0, -0x4080

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->c(F)V

    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;FF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Rectangle;->getX()F

    move-result v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Rectangle;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a(F)V

    :cond_0
    return-void
.end method

.method private b(F)F
    .locals 3
    .parameter

    .prologue
    .line 228
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->A:F

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->w:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f00

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a()F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private b(I)F
    .locals 3
    .parameter

    .prologue
    .line 764
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->K:Lcom/nianticproject/ingress/common/ui/widget/bb;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->K:Lcom/nianticproject/ingress/common/ui/widget/bb;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/widget/bb;->b()I

    move-result v0

    .line 766
    if-ltz p1, :cond_0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 767
    :cond_0
    const/4 v0, 0x0

    .line 771
    :goto_0
    return v0

    .line 768
    :cond_1
    if-lt p1, v0, :cond_2

    .line 769
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->x:F

    goto :goto_0

    .line 771
    :cond_2
    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->x:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->y:F

    return p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->P:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {v0, v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;)F
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->z:F

    return v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->A:F

    return p1
.end method

.method private c(F)V
    .locals 5
    .parameter

    .prologue
    .line 411
    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    .line 413
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->F:Z

    if-eqz v0, :cond_2

    .line 414
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->E:Z

    if-eqz v0, :cond_1

    .line 415
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    sub-float/2addr v0, p1

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->B:F

    neg-float v2, v2

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->x:F

    iget v4, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->B:F

    add-float/2addr v3, v4

    invoke-static {v0, v2, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    .line 423
    :goto_0
    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->h()V

    .line 425
    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    .line 427
    :cond_0
    return-void

    .line 417
    :cond_1
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    sub-float/2addr v0, p1

    const/4 v2, 0x0

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->x:F

    invoke-static {v0, v2, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    goto :goto_0

    .line 420
    :cond_2
    sub-float v0, v1, p1

    goto :goto_0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;)F
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->o:F

    return v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->w:F

    return p1
.end method

.method private d(F)I
    .locals 2
    .parameter

    .prologue
    .line 751
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->K:Lcom/nianticproject/ingress/common/ui/widget/bb;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->K:Lcom/nianticproject/ingress/common/ui/widget/bb;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/widget/bb;->b()I

    move-result v0

    .line 753
    if-nez v0, :cond_0

    .line 754
    const/4 v0, -0x1

    .line 756
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;)F
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    return v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->b(F)F

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;)F
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->B:F

    return v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;F)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->d(F)I

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;)F
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->x:F

    return v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;F)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    const/high16 v0, 0x4000

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->A:F

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->o:F

    div-float/2addr v0, v1

    return v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    return p1
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->l:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 430
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->G:Z

    .line 431
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->H:Z

    .line 432
    return-void
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    return v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->j()I

    move-result v0

    return v0
.end method

.method private i()V
    .locals 5

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->g()F

    move-result v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/y;->b(F)F

    move-result v0

    .line 659
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->b:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->b:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    iput v0, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 660
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->b:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 661
    return-void
.end method

.method private j()I
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->g()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->d(F)I

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;)Lcom/nianticproject/ingress/common/ui/widget/bb;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->K:Lcom/nianticproject/ingress/common/ui/widget/bb;

    return-object v0
.end method

.method static synthetic k(Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->J:Z

    return v0
.end method


# virtual methods
.method public final a(I)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .parameter

    .prologue
    .line 787
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->K:Lcom/nianticproject/ingress/common/ui/widget/bb;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->K:Lcom/nianticproject/ingress/common/ui/widget/bb;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/widget/bb;->b()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->K:Lcom/nianticproject/ingress/common/ui/widget/bb;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->K:Lcom/nianticproject/ingress/common/ui/widget/bb;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/ui/widget/bb;->a(I)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 793
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 798
    :cond_0
    :goto_1
    return-object v0

    .line 787
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 798
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(F)V
    .locals 2
    .parameter

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->needsLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->layout()V

    .line 887
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->x:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 888
    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    int-to-float v0, v0

    sub-float v0, v1, v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->c(F)V

    .line 889
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .parameter

    .prologue
    .line 811
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->K:Lcom/nianticproject/ingress/common/ui/widget/bb;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->K:Lcom/nianticproject/ingress/common/ui/widget/bb;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/ui/widget/bb;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;)I

    move-result v0

    .line 813
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 814
    int-to-float v0, v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->K:Lcom/nianticproject/ingress/common/ui/widget/bb;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/ui/widget/bb;->b()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 815
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a(F)V

    .line 817
    :cond_0
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/widget/bb;)V
    .locals 1
    .parameter

    .prologue
    .line 385
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->K:Lcom/nianticproject/ingress/common/ui/widget/bb;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 386
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->K:Lcom/nianticproject/ingress/common/ui/widget/bb;

    .line 387
    return-void

    .line 385
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/widget/bc;)V
    .locals 1
    .parameter

    .prologue
    .line 394
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->L:Lcom/nianticproject/ingress/common/ui/widget/bc;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 397
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->L:Lcom/nianticproject/ingress/common/ui/widget/bc;

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->M:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 399
    return-void

    .line 394
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public act(F)V
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 441
    const-string/jumbo v0, "WidgetCarousel.act"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 443
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->act(F)V

    .line 445
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->P:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->isPanning()Z

    move-result v6

    .line 446
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->y:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    move v0, v3

    .line 447
    :goto_0
    if-nez v6, :cond_0

    if-eqz v0, :cond_9

    :cond_0
    move v5, v3

    .line 450
    :goto_1
    if-eqz v0, :cond_15

    .line 451
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->y:F

    sub-float/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->y:F

    .line 452
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->o:F

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->y:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->w:F

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a()F

    move-result v7

    mul-float/2addr v0, v7

    add-float/2addr v0, v1

    .line 453
    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->o:F

    iget v7, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->y:F

    sub-float/2addr v1, v7

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->b(F)F

    move-result v1

    iput v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    .line 454
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->h()V

    .line 457
    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    iget v7, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->B:F

    neg-float v7, v7

    cmpg-float v1, v1, v7

    if-lez v1, :cond_1

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    iget v7, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->x:F

    iget v8, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->B:F

    add-float/2addr v7, v8

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_2

    .line 458
    :cond_1
    iput v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->y:F

    iput v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->w:F

    :cond_2
    move v1, v0

    .line 463
    :goto_2
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->E:Z

    if-eqz v0, :cond_14

    if-nez v6, :cond_14

    .line 464
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_a

    .line 466
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    neg-float v0, v0

    iget v7, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->B:F

    div-float/2addr v0, v7

    .line 467
    iget v7, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    iget v8, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->C:F

    iget v9, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->D:F

    mul-float/2addr v0, v9

    add-float/2addr v0, v8

    mul-float/2addr v0, p1

    add-float/2addr v0, v7

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    .line 468
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 469
    iput v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    .line 471
    :cond_3
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->h()V

    move v0, v3

    .line 484
    :goto_3
    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->n:Z

    if-eqz v0, :cond_4

    if-nez v6, :cond_4

    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->y:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    .line 485
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->j()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->b(I)F

    move-result v0

    .line 486
    iget v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    sub-float/2addr v0, v2

    .line 487
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v6, 0x38d1b717

    cmpl-float v2, v2, v6

    if-lez v2, :cond_4

    .line 489
    const/high16 v2, 0x3f00

    mul-float/2addr v0, v2

    .line 490
    iget v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    .line 491
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->h()V

    .line 496
    :cond_4
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->G:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->u:Z

    if-eqz v0, :cond_5

    .line 497
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->i()V

    .line 500
    :cond_5
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->L:Lcom/nianticproject/ingress/common/ui/widget/bc;

    if-eqz v0, :cond_13

    .line 503
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->H:Z

    if-eqz v0, :cond_f

    .line 504
    iput-boolean v4, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->H:Z

    .line 506
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->j()I

    move-result v2

    .line 507
    invoke-virtual {p0, v2}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a(I)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v6

    .line 509
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v7

    .line 510
    const/4 v0, -0x1

    if-eq v2, v0, :cond_c

    .line 511
    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 512
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->g:I

    :goto_4
    if-lez v0, :cond_c

    .line 513
    sub-int v8, v2, v0

    invoke-virtual {p0, v8}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a(I)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v8

    .line 514
    if-eqz v8, :cond_6

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_6
    add-int v8, v2, v0

    invoke-virtual {p0, v8}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a(I)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v8

    .line 516
    if-eqz v8, :cond_7

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_8
    move v0, v4

    .line 446
    goto/16 :goto_0

    :cond_9
    move v5, v4

    .line 447
    goto/16 :goto_1

    .line 472
    :cond_a
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    iget v7, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->x:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_14

    .line 474
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->x:F

    iget v7, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    sub-float/2addr v0, v7

    neg-float v0, v0

    iget v7, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->B:F

    div-float/2addr v0, v7

    .line 475
    iget v7, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    iget v8, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->C:F

    iget v9, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->D:F

    mul-float/2addr v0, v9

    add-float/2addr v0, v8

    mul-float/2addr v0, p1

    sub-float v0, v7, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    .line 476
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    iget v7, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->x:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_b

    .line 477
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->x:F

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    .line 479
    :cond_b
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->h()V

    move v0, v3

    goto/16 :goto_3

    .line 521
    :cond_c
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->N:Ljava/util/Set;

    invoke-static {v0, v7}, Lcom/google/a/c/jc;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/a/c/ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ji;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 522
    iget-object v8, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->L:Lcom/nianticproject/ingress/common/ui/widget/bc;

    invoke-interface {v8, v0, v4}, Lcom/nianticproject/ingress/common/ui/widget/bc;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V

    .line 525
    iget-object v8, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->O:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v0, v3}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    goto :goto_5

    .line 527
    :cond_d
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->N:Ljava/util/Set;

    invoke-static {v7, v0}, Lcom/google/a/c/jc;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/a/c/ji;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ji;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 528
    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->L:Lcom/nianticproject/ingress/common/ui/widget/bc;

    invoke-interface {v4, v0, v3}, Lcom/nianticproject/ingress/common/ui/widget/bc;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V

    .line 529
    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->O:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_6

    .line 531
    :cond_e
    iput-object v7, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->N:Ljava/util/Set;

    .line 533
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->M:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq v6, v0, :cond_f

    iput-object v6, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->M:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->L:Lcom/nianticproject/ingress/common/ui/widget/bc;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->M:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->L:Lcom/nianticproject/ingress/common/ui/widget/bc;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->M:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/common/ui/widget/bc;->b(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->I:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v2, 0x1e

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Input;->vibrate(I)V

    .line 536
    :cond_f
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43f0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_11

    .line 537
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->O:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 538
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->L:Lcom/nianticproject/ingress/common/ui/widget/bc;

    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/common/ui/widget/bc;->c(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_7

    .line 540
    :cond_10
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->O:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 545
    :cond_11
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->J:Z

    if-eqz v0, :cond_12

    if-nez v5, :cond_12

    .line 546
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->L:Lcom/nianticproject/ingress/common/ui/widget/bc;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/widget/bc;->a()V

    .line 548
    :cond_12
    iput-boolean v5, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->J:Z

    .line 551
    :cond_13
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 552
    return-void

    :cond_14
    move v0, v4

    goto/16 :goto_3

    :cond_15
    move v1, v2

    goto/16 :goto_2
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 820
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->K:Lcom/nianticproject/ingress/common/ui/widget/bb;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->clear()V

    .line 824
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->j()I

    move-result v1

    .line 825
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->g()F

    move-result v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->K:Lcom/nianticproject/ingress/common/ui/widget/bb;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/ui/widget/bb;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v0, v2

    int-to-float v2, v1

    sub-float v2, v0, v2

    .line 828
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->g:I

    :goto_0
    if-lez v0, :cond_0

    .line 829
    sub-int v3, v1, v0

    invoke-direct {p0, v1, v3, v2}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a(IIF)V

    .line 830
    add-int v3, v1, v0

    invoke-direct {p0, v1, v3, v2}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a(IIF)V

    .line 828
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 832
    :cond_0
    invoke-direct {p0, v1, v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a(IIF)V

    .line 834
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->G:Z

    .line 835
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->I:Z

    .line 570
    return-void
.end method

.method public final d()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->j()I

    move-result v0

    .line 578
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a(I)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const v10, 0x3dcccccd

    const/4 v2, 0x0

    const/high16 v9, 0x4000

    .line 665
    const-string/jumbo v0, "WidgetCarousel.draw"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 669
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    .line 672
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_0

    .line 673
    iget v0, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v8, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p2

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 674
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->getHeight()F

    move-result v5

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 677
    :cond_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->G:Z

    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->b()V

    .line 681
    :cond_1
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->r:Z

    if-eqz v0, :cond_6

    .line 683
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->e:F

    .line 684
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->c:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->getWidth()F

    move-result v2

    mul-float v3, v9, v0

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->getHeight()F

    move-result v3

    mul-float v4, v9, v0

    sub-float/2addr v3, v4

    invoke-virtual {v1, v0, v0, v2, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 685
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->d:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->calculateScissors(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 687
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->d:Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 688
    invoke-virtual {p0, p1, p2}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 689
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()V

    .line 696
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->l:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->m:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_4

    .line 697
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->s:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    move v0, v6

    :goto_1
    if-nez v0, :cond_3

    .line 698
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->l:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 701
    :cond_3
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->x:F

    iget v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->s:I

    int-to-float v2, v2

    mul-float/2addr v2, v10

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    move v0, v6

    :goto_2
    if-nez v0, :cond_4

    .line 702
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->m:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 710
    :cond_4
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->u:Z

    if-eqz v0, :cond_5

    .line 711
    iget v0, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v8, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 712
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->hScroll:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->b:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v9

    sub-float v3, v1, v3

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 719
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->hScrollKnob:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->b:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->b:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->b:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->b:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    .line 727
    :cond_5
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 728
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 729
    return-void

    .line 692
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto/16 :goto_0

    :cond_7
    move v0, v7

    .line 697
    goto :goto_1

    :cond_8
    move v0, v7

    .line 701
    goto :goto_2
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 586
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->N:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 587
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->L:Lcom/nianticproject/ingress/common/ui/widget/bc;

    if-eqz v2, :cond_0

    .line 588
    if-eqz v0, :cond_0

    .line 589
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->L:Lcom/nianticproject/ingress/common/ui/widget/bc;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/nianticproject/ingress/common/ui/widget/bc;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V

    goto :goto_0

    .line 594
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->N:Ljava/util/Set;

    .line 597
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->invalidate()V

    .line 599
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->K:Lcom/nianticproject/ingress/common/ui/widget/bb;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const/4 v0, 0x1

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->s:I

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->K:Lcom/nianticproject/ingress/common/ui/widget/bb;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/ui/widget/bb;->b()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->x:F

    .line 602
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    .line 603
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->h()V

    .line 604
    return-void
.end method

.method public final f()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->j()I

    move-result v0

    .line 807
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a(I)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public final g()F
    .locals 2

    .prologue
    .line 878
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->v:F

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->x:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getPrefHeight()F
    .locals 2

    .prologue
    .line 968
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->t:I

    int-to-float v0, v0

    .line 969
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v1, :cond_0

    .line 970
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v1

    add-float/2addr v0, v1

    .line 972
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    .line 973
    return v0
.end method

.method public getPrefWidth()F
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 936
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 939
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    .line 940
    instance-of v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 945
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 948
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadLeft()Lcom/a/a/e;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 949
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadLeft()Lcom/a/a/e;

    move-result-object v2

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/a/a/e;->a(Lcom/a/a/c;)F

    move-result v2

    .line 951
    :goto_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadRight()Lcom/a/a/e;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 952
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadRight()Lcom/a/a/e;

    move-result-object v3

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/a/a/e;->a(Lcom/a/a/c;)F

    move-result v3

    .line 955
    :cond_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getWidth()F

    move-result v0

    sub-float/2addr v0, v2

    sub-float/2addr v0, v3

    .line 958
    :cond_1
    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->s:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->s:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->h:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->g:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->i:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 960
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v2, :cond_2

    .line 961
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalWidth()F

    move-result v2

    add-float/2addr v1, v2

    .line 963
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 920
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->getWidth()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->getHeight()F

    move-result v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 921
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->hit(FF)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 923
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layout()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f00

    const/4 v1, 0x0

    .line 608
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v5, v0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->background:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 609
    if-nez v5, :cond_5

    move v4, v1

    .line 610
    :goto_0
    if-nez v5, :cond_6

    move v3, v1

    .line 611
    :goto_1
    if-nez v5, :cond_7

    move v2, v1

    .line 612
    :goto_2
    if-nez v5, :cond_8

    move v0, v1

    .line 615
    :goto_3
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->getWidth()F

    move-result v5

    sub-float/2addr v5, v4

    sub-float/2addr v5, v3

    .line 616
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->getHeight()F

    move-result v3

    sub-float v2, v3, v2

    sub-float v3, v2, v0

    .line 619
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->hScroll:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->hScrollKnob:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    :goto_4
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->u:Z

    .line 620
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->u:Z

    if-eqz v2, :cond_b

    .line 621
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->hScrollKnob:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v2

    sub-float v2, v3, v2

    .line 625
    :goto_5
    iget-object v6, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->c:Lcom/badlogic/gdx/math/Rectangle;

    iget-boolean v3, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->u:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->hScrollKnob:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v3

    :goto_6
    add-float/2addr v3, v0

    invoke-virtual {v6, v4, v3, v5, v2}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 630
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->u:Z

    if-eqz v2, :cond_3

    .line 631
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->hScrollKnob:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v3

    invoke-virtual {v2, v4, v0, v5, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)V

    .line 632
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->hScrollBarHeightDp:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->a:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->hScrollBarHeightDp:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->b:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->hScrollKnob:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalWidth()F

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 636
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->hScrollKnobWidthDp:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->b:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->hScrollKnobWidthDp:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->b:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->hScrollKnob:Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTotalHeight()F

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 640
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->hScrollKnobHeightDp:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 641
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->b:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->f:Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel$WidgetCarouselStyle;->hScrollKnobHeightDp:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v2

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 643
    :cond_2
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->i()V

    .line 647
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->l:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->m:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_4

    .line 648
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->getHeight()F

    move-result v0

    mul-float/2addr v0, v7

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->l:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v2

    mul-float/2addr v2, v7

    sub-float/2addr v0, v2

    .line 649
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->l:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    .line 650
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->m:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->m:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    .line 653
    :cond_4
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/WidgetCarousel;->h()V

    .line 654
    return-void

    .line 609
    :cond_5
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v0

    move v4, v0

    goto/16 :goto_0

    .line 610
    :cond_6
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v0

    move v3, v0

    goto/16 :goto_1

    .line 611
    :cond_7
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v0

    move v2, v0

    goto/16 :goto_2

    .line 612
    :cond_8
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v0

    goto/16 :goto_3

    .line 619
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_a
    move v3, v1

    .line 625
    goto/16 :goto_6

    :cond_b
    move v2, v3

    goto/16 :goto_5
.end method
