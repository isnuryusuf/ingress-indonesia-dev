.class public final Lcom/nianticproject/ingress/common/ui/widget/as;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "SourceFile"


# static fields
.field private static final b:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public a:D

.field private c:Lcom/nianticproject/ingress/common/ui/widget/at;

.field private final d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private final e:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field private final f:Z

.field private final g:Lcom/nianticproject/ingress/common/h/l;

.field private final h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field private i:F

.field private final j:[Lcom/nianticproject/ingress/common/ui/widget/av;

.field private final k:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

.field private final l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private final m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field private final n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field private final o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

.field private final p:Lcom/nianticproject/ingress/common/scanner/k;

.field private q:Lcom/nianticproject/ingress/common/ui/widget/av;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f0ccccd

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/widget/as;->b:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/widget/at;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;ZLcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/j/as;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v7, 0x3fe921fb54442d18L

    const/high16 v3, 0x3f80

    .line 303
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 75
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->i:F

    .line 77
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/nianticproject/ingress/common/ui/widget/av;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->j:[Lcom/nianticproject/ingress/common/ui/widget/av;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->q:Lcom/nianticproject/ingress/common/ui/widget/av;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->r:Z

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->a:D

    .line 304
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->c:Lcom/nianticproject/ingress/common/ui/widget/at;

    .line 305
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 306
    iput-object p3, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->e:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 307
    iput-boolean p4, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->f:Z

    .line 308
    iput-object p5, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->g:Lcom/nianticproject/ingress/common/h/l;

    .line 309
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->k()Lcom/nianticproject/ingress/common/scanner/k;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->p:Lcom/nianticproject/ingress/common/scanner/k;

    .line 310
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/s;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->p:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/k;->n()Lcom/nianticproject/ingress/common/j/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/s;-><init>(Lcom/nianticproject/ingress/common/j/h;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

    .line 311
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->CLEAR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/s;->a(Lcom/badlogic/gdx/graphics/Color;)V

    .line 312
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

    const-string/jumbo v1, "ochre-line"

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/s;->b(Lcom/badlogic/gdx/graphics/Color;)V

    .line 313
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

    const v1, 0x3cf5c28f

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/s;->b(F)V

    .line 314
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

    invoke-virtual {v0, p6}, Lcom/nianticproject/ingress/common/scanner/visuals/s;->a(Lcom/nianticproject/ingress/common/j/f;)V

    .line 315
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    const-string/jumbo v0, "owner-tag"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p2, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 316
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f333333

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p2, v1}, Lcom/nianticproject/ingress/common/b/c;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 318
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v2, Lcom/nianticproject/ingress/common/gameentity/g;->b:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    const-string/jumbo v3, "hex-button-up"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v3, Lcom/nianticproject/ingress/common/gameentity/g;->b:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    const-string/jumbo v4, "hex-button-down"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v4, Lcom/nianticproject/ingress/common/gameentity/g;->b:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    const-string/jumbo v5, "hex-button-checked"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .line 327
    const-string/jumbo v0, "tiny"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 328
    const-string/jumbo v0, "large"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 330
    invoke-static {}, Lcom/nianticproject/ingress/shared/r;->values()[Lcom/nianticproject/ingress/shared/r;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 331
    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->j:[Lcom/nianticproject/ingress/common/ui/widget/av;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v5

    new-instance v6, Lcom/nianticproject/ingress/common/ui/widget/av;

    invoke-direct {v6, p0, v3}, Lcom/nianticproject/ingress/common/ui/widget/av;-><init>(Lcom/nianticproject/ingress/common/ui/widget/as;Lcom/nianticproject/ingress/shared/r;)V

    aput-object v6, v4, v5

    .line 332
    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->j:[Lcom/nianticproject/ingress/common/ui/widget/av;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v3

    aget-object v3, v4, v3

    iget-object v3, v3, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/common/ui/widget/as;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const-string/jumbo v1, "reddot"

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    .line 336
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 337
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/as;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 339
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->k()Lcom/nianticproject/ingress/common/scanner/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->w()F

    move-result v0

    .line 340
    float-to-double v0, v0

    div-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    mul-double/2addr v0, v7

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->a:D

    .line 341
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/widget/as;Lcom/nianticproject/ingress/common/ui/widget/av;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/ui/widget/as;->a(Lcom/nianticproject/ingress/common/ui/widget/av;)V

    return-void
.end method

.method private a(Lcom/nianticproject/ingress/common/ui/widget/av;)V
    .locals 2
    .parameter

    .prologue
    .line 468
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->q:Lcom/nianticproject/ingress/common/ui/widget/av;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->q:Lcom/nianticproject/ingress/common/ui/widget/av;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/d;->setChecked(Z)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->q:Lcom/nianticproject/ingress/common/ui/widget/av;

    if-eq v0, p1, :cond_1

    .line 473
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/d;->setChecked(Z)V

    .line 477
    :cond_1
    iget-object v0, p1, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/d;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->q:Lcom/nianticproject/ingress/common/ui/widget/av;

    .line 479
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/as;->d()V

    .line 480
    return-void

    .line 477
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method static synthetic b()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/nianticproject/ingress/common/ui/widget/as;->b:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    return-object v0
.end method

.method private b(Lcom/nianticproject/ingress/shared/r;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 2
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->j:[Lcom/nianticproject/ingress/common/ui/widget/av;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/av;->b:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    return-object v0
.end method

.method private c()V
    .locals 8

    .prologue
    .line 349
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->i:F

    .line 350
    invoke-static {}, Lcom/nianticproject/ingress/shared/r;->values()[Lcom/nianticproject/ingress/shared/r;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 351
    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->j:[Lcom/nianticproject/ingress/common/ui/widget/av;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v3

    aget-object v3, v4, v3

    iget-object v4, v3, Lcom/nianticproject/ingress/common/ui/widget/av;->k:Lcom/nianticproject/ingress/common/ui/widget/ah;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/nianticproject/ingress/common/ui/widget/av;->k:Lcom/nianticproject/ingress/common/ui/widget/ah;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/ui/widget/ah;->clearActions()V

    iget-object v3, v3, Lcom/nianticproject/ingress/common/ui/widget/av;->k:Lcom/nianticproject/ingress/common/ui/widget/ah;

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v4

    const v5, 0x3f666666

    const v6, 0x3e99999a

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nianticproject/ingress/common/ui/widget/ah;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 350
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    return-object v0
.end method

.method private d()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f00

    const/4 v1, 0x0

    .line 426
    .line 429
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->q:Lcom/nianticproject/ingress/common/ui/widget/av;

    if-eqz v0, :cond_3

    .line 430
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->q:Lcom/nianticproject/ingress/common/ui/widget/av;

    iget-object v3, v0, Lcom/nianticproject/ingress/common/ui/widget/av;->a:Lcom/nianticproject/ingress/shared/r;

    .line 431
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->q:Lcom/nianticproject/ingress/common/ui/widget/av;

    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/widget/av;->b:Lcom/nianticproject/ingress/gameentity/f;

    .line 432
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->q:Lcom/nianticproject/ingress/common/ui/widget/av;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    .line 435
    :goto_0
    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->c:Lcom/nianticproject/ingress/common/ui/widget/at;

    if-eqz v4, :cond_0

    .line 436
    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->c:Lcom/nianticproject/ingress/common/ui/widget/at;

    invoke-interface {v4, v3, v2}, Lcom/nianticproject/ingress/common/ui/widget/at;->a(Lcom/nianticproject/ingress/shared/r;Lcom/nianticproject/ingress/gameentity/f;)V

    .line 439
    :cond_0
    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

    if-eqz v3, :cond_1

    .line 440
    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

    invoke-virtual {v3, v0, v5, v5}, Lcom/nianticproject/ingress/common/scanner/visuals/s;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)V

    .line 441
    if-nez v2, :cond_2

    .line 443
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/s;->a(Lcom/nianticproject/ingress/common/scanner/ej;)V

    .line 445
    :cond_1
    return-void

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->p:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/ui/widget/as;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/as;->c()V

    return-void
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/nianticproject/ingress/common/ui/widget/av;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->q:Lcom/nianticproject/ingress/common/ui/widget/av;

    return-object v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/ui/widget/as;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/as;->d()V

    return-void
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/ui/widget/as;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->f:Z

    return v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    return-object v0
.end method

.method static synthetic j(Lcom/nianticproject/ingress/common/ui/widget/as;)Lcom/nianticproject/ingress/common/h/l;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->g:Lcom/nianticproject/ingress/common/h/l;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/shared/r;Lcom/nianticproject/ingress/common/ui/widget/au;)Lcom/nianticproject/ingress/shared/r;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->q:Lcom/nianticproject/ingress/common/ui/widget/av;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->q:Lcom/nianticproject/ingress/common/ui/widget/av;

    iget-object v3, v0, Lcom/nianticproject/ingress/common/ui/widget/av;->a:Lcom/nianticproject/ingress/shared/r;

    .line 400
    :goto_0
    if-eqz v3, :cond_0

    if-ne v3, p1, :cond_0

    .line 402
    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x8

    .line 403
    invoke-static {v0}, Lcom/nianticproject/ingress/shared/r;->a(I)Lcom/nianticproject/ingress/shared/r;

    move-result-object v3

    .line 406
    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v0

    .line 408
    :goto_1
    const/4 v1, 0x1

    move v4, v1

    :goto_2
    const/16 v1, 0x8

    if-ge v4, v1, :cond_4

    .line 409
    add-int/lit8 v1, v0, 0x8

    sub-int/2addr v1, v4

    rem-int/lit8 v1, v1, 0x8

    .line 410
    invoke-static {v1}, Lcom/nianticproject/ingress/shared/r;->a(I)Lcom/nianticproject/ingress/shared/r;

    move-result-object v5

    .line 411
    if-eq v5, p1, :cond_5

    .line 412
    if-eqz v3, :cond_3

    invoke-direct {p0, v3}, Lcom/nianticproject/ingress/common/ui/widget/as;->b(Lcom/nianticproject/ingress/shared/r;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    .line 415
    :goto_3
    invoke-direct {p0, v5}, Lcom/nianticproject/ingress/common/ui/widget/as;->b(Lcom/nianticproject/ingress/shared/r;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v6

    .line 416
    invoke-interface {p2, v3, v1, v5, v6}, Lcom/nianticproject/ingress/common/ui/widget/au;->a(Lcom/nianticproject/ingress/shared/r;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/r;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/r;

    move-result-object v1

    .line 408
    :goto_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v1

    goto :goto_2

    :cond_1
    move-object v3, v2

    .line 399
    goto :goto_0

    .line 406
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 412
    goto :goto_3

    .line 419
    :cond_4
    return-object v3

    :cond_5
    move-object v1, v3

    goto :goto_4
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->c:Lcom/nianticproject/ingress/common/ui/widget/at;

    .line 345
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/gameentity/g;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 494
    :try_start_0
    const-string/jumbo v0, "ScannerResonatorPicker.setGameState"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 496
    invoke-static {}, Lcom/nianticproject/ingress/shared/r;->values()[Lcom/nianticproject/ingress/shared/r;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 497
    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->j:[Lcom/nianticproject/ingress/common/ui/widget/av;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v3

    aget-object v3, v4, v3

    iget-object v4, v3, Lcom/nianticproject/ingress/common/ui/widget/av;->a:Lcom/nianticproject/ingress/shared/r;

    invoke-interface {p1, v4}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getResonatorAtOctant(Lcom/nianticproject/ingress/shared/r;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nianticproject/ingress/common/ui/widget/av;->a(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 496
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    :cond_0
    invoke-interface {p2, v4}, Lcom/nianticproject/ingress/gameentity/g;->getGameEntity(Ljava/lang/String;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nianticproject/ingress/common/ui/widget/av;->a(Lcom/nianticproject/ingress/gameentity/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 500
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 501
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/r;)V
    .locals 2
    .parameter

    .prologue
    .line 381
    if-eqz p1, :cond_1

    .line 383
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->j:[Lcom/nianticproject/ingress/common/ui/widget/av;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->q:Lcom/nianticproject/ingress/common/ui/widget/av;

    if-eq v0, v1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->j:[Lcom/nianticproject/ingress/common/ui/widget/av;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/as;->a(Lcom/nianticproject/ingress/common/ui/widget/av;)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->q:Lcom/nianticproject/ingress/common/ui/widget/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->q:Lcom/nianticproject/ingress/common/ui/widget/av;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/d;->setChecked(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->q:Lcom/nianticproject/ingress/common/ui/widget/av;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/as;->d()V

    goto :goto_0
.end method

.method public final act(F)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 511
    const-string/jumbo v0, "ScannerResonatorPicker.act"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 512
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->act(F)V

    .line 513
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 514
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->i:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->i:F

    .line 515
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->i:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 516
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/widget/as;->c()V

    .line 519
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 520
    return-void
.end method

.method protected final drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/high16 v12, 0x3f00

    .line 524
    const-string/jumbo v1, "ScannerResonatorPicker.drawChildren"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 525
    const/high16 v1, 0x3f80

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->o:Lcom/nianticproject/ingress/common/scanner/visuals/s;

    const v2, 0x3cf5c28f

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/s;->a(F)Z

    .line 528
    :cond_0
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->r:Z

    if-eqz v1, :cond_4

    .line 529
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->r:Z

    .line 530
    invoke-static {}, Lcom/nianticproject/ingress/shared/r;->values()[Lcom/nianticproject/ingress/shared/r;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 531
    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->j:[Lcom/nianticproject/ingress/common/ui/widget/av;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v0

    aget-object v4, v4, v0

    iget-object v0, v4, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/d;->pack()V

    iget-object v0, v4, Lcom/nianticproject/ingress/common/ui/widget/av;->a:Lcom/nianticproject/ingress/shared/r;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/r;->b()D

    move-result-wide v5

    iget-object v0, v4, Lcom/nianticproject/ingress/common/ui/widget/av;->l:Lcom/nianticproject/ingress/common/ui/widget/as;

    iget-wide v7, v0, Lcom/nianticproject/ingress/common/ui/widget/as;->a:D

    add-double/2addr v5, v7

    iget-object v0, v4, Lcom/nianticproject/ingress/common/ui/widget/av;->l:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/as;->getWidth()F

    move-result v0

    mul-float v7, v12, v0

    iget-object v0, v4, Lcom/nianticproject/ingress/common/ui/widget/av;->l:Lcom/nianticproject/ingress/common/ui/widget/as;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/as;->getHeight()F

    move-result v0

    mul-float v8, v12, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    const v0, 0x3ec28f5c

    mul-float/2addr v0, v9

    iget-object v10, v4, Lcom/nianticproject/ingress/common/ui/widget/av;->l:Lcom/nianticproject/ingress/common/ui/widget/as;

    iget-object v10, v10, Lcom/nianticproject/ingress/common/ui/widget/as;->e:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v10

    mul-float/2addr v0, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x3f7d70a4

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    const v9, 0x3f4f5c29

    mul-float/2addr v0, v9

    :cond_1
    iget-object v9, v4, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    invoke-virtual {v9}, Lcom/nianticproject/ingress/common/ui/widget/d;->getPrefWidth()F

    move-result v9

    iget-object v10, v4, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    invoke-virtual {v10}, Lcom/nianticproject/ingress/common/ui/widget/d;->getPrefHeight()F

    move-result v10

    const v11, 0x3e5d2f1b

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v11

    iget-object v6, v4, Lcom/nianticproject/ingress/common/ui/widget/av;->l:Lcom/nianticproject/ingress/common/ui/widget/as;

    iget-object v6, v6, Lcom/nianticproject/ingress/common/ui/widget/as;->e:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v0, v7

    mul-float v6, v12, v9

    sub-float/2addr v0, v6

    add-float/2addr v5, v8

    mul-float v6, v12, v10

    sub-float/2addr v5, v6

    iget-object v6, v4, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v6, v0, v5}, Lcom/nianticproject/ingress/common/ui/widget/d;->setPosition(FF)V

    iget-object v0, v4, Lcom/nianticproject/ingress/common/ui/widget/av;->k:Lcom/nianticproject/ingress/common/ui/widget/ah;

    if-eqz v0, :cond_2

    const v0, 0x3f666666

    mul-float/2addr v0, v9

    iget-object v5, v4, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    invoke-virtual {v5}, Lcom/nianticproject/ingress/common/ui/widget/d;->getX()F

    move-result v5

    sub-float v6, v9, v0

    mul-float/2addr v6, v12

    add-float/2addr v5, v6

    iget-object v6, v4, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    invoke-virtual {v6}, Lcom/nianticproject/ingress/common/ui/widget/d;->getY()F

    move-result v6

    add-float/2addr v6, v10

    const/high16 v7, 0x40a0

    invoke-static {v7}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, v4, Lcom/nianticproject/ingress/common/ui/widget/av;->k:Lcom/nianticproject/ingress/common/ui/widget/ah;

    invoke-virtual {v7, v0}, Lcom/nianticproject/ingress/common/ui/widget/ah;->setWidth(F)V

    iget-object v0, v4, Lcom/nianticproject/ingress/common/ui/widget/av;->k:Lcom/nianticproject/ingress/common/ui/widget/ah;

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Lcom/nianticproject/ingress/common/ui/widget/ah;->setPosition(FF)V

    .line 530
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 533
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->j:[Lcom/nianticproject/ingress/common/ui/widget/av;

    sget-object v1, Lcom/nianticproject/ingress/shared/r;->c:Lcom/nianticproject/ingress/shared/r;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    .line 534
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/d;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/d;->getWidth()F

    move-result v2

    mul-float/2addr v2, v12

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getWidth()F

    move-result v2

    mul-float/2addr v2, v12

    sub-float/2addr v1, v2

    .line 535
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/d;->getY()F

    move-result v2

    const v3, 0x3f51eb85

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/d;->getHeight()F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->getHeight()F

    move-result v2

    mul-float/2addr v2, v12

    sub-float/2addr v0, v2

    .line 536
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setPosition(FF)V

    .line 538
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 539
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 540
    return-void
.end method

.method public final getPrefHeight()F
    .locals 3

    .prologue
    .line 550
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->e:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    const v1, 0x3edd2f1b

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->j:[Lcom/nianticproject/ingress/common/ui/widget/av;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/d;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public final getPrefWidth()F
    .locals 3

    .prologue
    .line 544
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->e:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v0

    const v1, 0x3f428f5c

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->j:[Lcom/nianticproject/ingress/common/ui/widget/av;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/nianticproject/ingress/common/ui/widget/av;->c:Lcom/nianticproject/ingress/common/ui/widget/d;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/d;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public final layout()V
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/widget/as;->r:Z

    .line 507
    return-void
.end method
