.class public Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/hud/b;


# static fields
.field private static final a:F

.field private static final b:F

.field private static final c:F


# instance fields
.field private final d:Lcom/badlogic/gdx/graphics/Color;

.field private final e:Lcom/badlogic/gdx/graphics/Color;

.field private final f:Lcom/badlogic/gdx/math/Rectangle;

.field private final g:Lcom/nianticproject/ingress/common/j/h;

.field private final h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

.field private i:Z

.field private j:Z

.field private k:F

.field private l:F

.field private m:Lcom/c/a/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-wide v0, 0x4056800000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->a:F

    .line 56
    const-wide/high16 v0, 0x403e

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->b:F

    .line 57
    const-wide v0, 0x4046800000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->c:F

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/j/h;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    new-instance v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;-><init>(Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->d:Lcom/badlogic/gdx/graphics/Color;

    .line 60
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->e:Lcom/badlogic/gdx/graphics/Color;

    .line 61
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->f:Lcom/badlogic/gdx/math/Rectangle;

    .line 66
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->i:Z

    .line 67
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->j:Z

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->l:F

    .line 82
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/h;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->g:Lcom/nianticproject/ingress/common/j/h;

    .line 83
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    .line 84
    return-void
.end method

.method static synthetic c()F
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->a:F

    return v0
.end method

.method static synthetic d()F
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->b:F

    return v0
.end method

.method static synthetic e()F
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->c:F

    return v0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->i:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->k:F

    const v1, 0x3a83126f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->j:Z

    .line 100
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->i:Z

    .line 101
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->j:Z

    .line 108
    return-void
.end method

.method public final a(F)Z
    .locals 3
    .parameter

    .prologue
    .line 125
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->l:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->l:F

    .line 127
    iget v2, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->k:F

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->j:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->j:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v1, v1, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->selectionSpeed:F

    :goto_1
    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->k:F

    .line 132
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->f()Z

    move-result v0

    return v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v1, v1, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->deselectionSpeed:F

    goto :goto_1
.end method

.method public final a(Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 23
    .parameter

    .prologue
    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->f:Lcom/badlogic/gdx/math/Rectangle;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Rectangle;->set(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v2, v2, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->markerSlices:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->l:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v3, v3, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->markerRotationRad:F

    mul-float/2addr v2, v3

    float-to-double v14, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->k:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v3, v3, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->defaultMarkerRadius:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v4, v4, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->selectedMarkerRadius:F

    sub-float/2addr v4, v3

    mul-float/2addr v4, v2

    add-float v16, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v3, v3, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->defaultMarkerWidth:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v4, v4, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->selectedMarkerWidth:F

    sub-float/2addr v4, v3

    mul-float/2addr v4, v2

    add-float v17, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->d:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget-object v4, v4, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->defaultColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget-object v5, v5, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->selectedColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v3, v4, v5, v2}, Lcom/nianticproject/ingress/common/w/i;->a(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->m:Lcom/c/a/a/a/a;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->d:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->m:Lcom/c/a/a/a/a;

    invoke-virtual {v4}, Lcom/c/a/a/a/a;->a()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->f:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->f:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v18, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->f:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->f:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v19, v2, v3

    const v2, 0x40c90fdb

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v3, v3, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->markerSlices:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float v20, v2, v3

    const/4 v2, 0x0

    move v13, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v2, v2, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->markerSlices:I

    if-ge v13, v2, :cond_1

    mul-int/lit8 v2, v13, 0x2

    int-to-float v2, v2

    mul-float v2, v2, v20

    float-to-double v2, v2

    add-double/2addr v2, v14

    double-to-float v2, v2

    add-float v3, v2, v20

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v5

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v2

    invoke-direct {v4, v5, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v5, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    new-instance v6, Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v2

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v3

    invoke-direct {v6, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    new-instance v11, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v11, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    add-float v2, v16, v17

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    add-float v2, v16, v17

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->g:Lcom/nianticproject/ingress/common/j/h;

    sget-object v3, Lcom/nianticproject/ingress/common/j/l;->b:Lcom/nianticproject/ingress/common/j/l;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->d:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual/range {v2 .. v7}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/nianticproject/ingress/common/j/l;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->g:Lcom/nianticproject/ingress/common/j/h;

    sget-object v8, Lcom/nianticproject/ingress/common/j/l;->b:Lcom/nianticproject/ingress/common/j/l;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->d:Lcom/badlogic/gdx/graphics/Color;

    move-object v9, v4

    move-object v10, v6

    invoke-virtual/range {v7 .. v12}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/nianticproject/ingress/common/j/l;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto/16 :goto_0

    .line 143
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->k:F

    float-to-double v2, v2

    const-wide v4, 0x3f50624dd2f1a9fcL

    cmpg-double v2, v2, v4

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v2, v2, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->caliperCount:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_3

    .line 145
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->f()Z

    move-result v2

    return v2

    .line 143
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->f:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->f:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v16, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->f:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->f:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v17, v2, v3

    const/high16 v2, 0x3f00

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->f:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->f:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v3, v3, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->defaultCaliperRadius:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v4, v4, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->selectedCaliperRadius:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->k:F

    sub-float/2addr v4, v3

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v18, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->e:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->defaultColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget-object v4, v4, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->selectedColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->k:F

    invoke-static {v2, v3, v4, v5}, Lcom/nianticproject/ingress/common/w/i;->a(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->e:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->k:F

    iput v3, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->m:Lcom/c/a/a/a/a;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->e:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->m:Lcom/c/a/a/a/a;

    invoke-virtual {v4}, Lcom/c/a/a/a/a;->a()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    :cond_4
    const v2, 0x40c90fdb

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v3, v3, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->caliperCount:I

    int-to-float v3, v3

    div-float v19, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v2, v2, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->wedgeOffsetRad:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->k:F

    mul-float v3, v3, v19

    add-float v20, v2, v3

    const/4 v2, 0x0

    move v15, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v2, v2, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->caliperCount:I

    if-ge v15, v2, :cond_2

    int-to-float v2, v15

    mul-float v2, v2, v19

    add-float v2, v2, v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v3, v3, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->selectedMarkerRadius:F

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    add-float v3, v3, v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v4, v4, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->wedgeExtentRad:F

    const/high16 v5, 0x3f00

    mul-float v8, v4, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->e:Lcom/badlogic/gdx/graphics/Color;

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    sub-float v5, v2, v8

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v5

    sub-float v6, v2, v8

    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v5, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    new-instance v6, Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v9

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v10

    invoke-direct {v6, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    new-instance v12, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v12, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    new-instance v21, Lcom/badlogic/gdx/math/Vector2;

    add-float v9, v2, v8

    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v9

    add-float/2addr v2, v8

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v2

    move-object/from16 v0, v21

    invoke-direct {v0, v9, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    new-instance v22, Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    const v2, 0x3f666666

    mul-float/2addr v2, v3

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    const v2, 0x3f666666

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v8, v8, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->selectedMarkerWidth:F

    add-float/2addr v2, v8

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v2, v2, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->selectedMarkerWidth:F

    add-float/2addr v2, v3

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    const v2, 0x3f666666

    mul-float/2addr v2, v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    const v2, 0x3f666666

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    iget v3, v3, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;->selectedMarkerWidth:F

    add-float/2addr v2, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->g:Lcom/nianticproject/ingress/common/j/h;

    sget-object v3, Lcom/nianticproject/ingress/common/j/l;->c:Lcom/nianticproject/ingress/common/j/l;

    invoke-virtual/range {v2 .. v7}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/nianticproject/ingress/common/j/l;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->g:Lcom/nianticproject/ingress/common/j/h;

    sget-object v9, Lcom/nianticproject/ingress/common/j/l;->c:Lcom/nianticproject/ingress/common/j/l;

    move-object v10, v6

    move-object v11, v5

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/nianticproject/ingress/common/j/l;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->g:Lcom/nianticproject/ingress/common/j/h;

    sget-object v10, Lcom/nianticproject/ingress/common/j/l;->c:Lcom/nianticproject/ingress/common/j/l;

    move-object v11, v6

    move-object/from16 v13, v21

    move-object v14, v7

    invoke-virtual/range {v9 .. v14}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/nianticproject/ingress/common/j/l;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->g:Lcom/nianticproject/ingress/common/j/h;

    sget-object v10, Lcom/nianticproject/ingress/common/j/l;->c:Lcom/nianticproject/ingress/common/j/l;

    move-object/from16 v11, v21

    move-object/from16 v13, v22

    move-object v14, v7

    invoke-virtual/range {v9 .. v14}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/nianticproject/ingress/common/j/l;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto/16 :goto_1
.end method

.method public final b()Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->h:Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;->i:Z

    .line 151
    return-void
.end method
