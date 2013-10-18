.class public final Lcom/nianticproject/ingress/common/scanner/visuals/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Lcom/badlogic/gdx/math/Vector2;

.field private b:[Lcom/badlogic/gdx/math/Vector2;

.field private final c:F

.field private final d:F

.field private final e:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->c:F

    .line 32
    iput p2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->d:F

    .line 33
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->c:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->d:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->e:F

    .line 34
    return-void
.end method

.method private a(Lcom/nianticproject/ingress/common/j/h;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;FFFFFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->a:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v0, v0, v2

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    sub-float v1, p5, p7

    invoke-virtual {v0, p4, v1}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 93
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->a:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v0, v0, v4

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->a:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v0, v0, v5

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    sub-float v1, p4, p6

    invoke-virtual {v0, v1, p5}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 96
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->b:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v0, v0, v2

    neg-float v1, p8

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 97
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->b:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v0, v0, v4

    neg-float v1, p8

    neg-float v2, p9

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 98
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->b:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v0, v0, v5

    neg-float v1, p9

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 100
    sget-object v0, Lcom/nianticproject/ingress/common/j/l;->a:Lcom/nianticproject/ingress/common/j/l;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->a:[Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->b:[Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, v0, v1, v2, p3}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/nianticproject/ingress/common/j/l;[Lcom/badlogic/gdx/math/Vector2;[Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 101
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/j/h;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;FF)V
    .locals 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    if-eqz p2, :cond_1

    .line 52
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->a:[Lcom/badlogic/gdx/math/Vector2;

    if-nez v1, :cond_0

    .line 53
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->a:[Lcom/badlogic/gdx/math/Vector2;

    .line 54
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/badlogic/gdx/math/Vector2;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->b:[Lcom/badlogic/gdx/math/Vector2;

    .line 56
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 57
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->a:[Lcom/badlogic/gdx/math/Vector2;

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v3, v2, v1

    .line 58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->b:[Lcom/badlogic/gdx/math/Vector2;

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v3, v2, v1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->e:F

    div-float v5, p4, v1

    .line 66
    const v1, 0x3e99999a

    mul-float/2addr v1, v5

    const v2, 0x3c23d70a

    add-float v7, v1, v2

    .line 68
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->e:F

    mul-float v8, v7, v1

    .line 69
    const/high16 v1, 0x3f00

    mul-float v1, v1, p5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->c:F

    div-float v9, v1, v2

    .line 70
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/g;->e:F

    mul-float v10, v9, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p4

    .line 73
    invoke-direct/range {v1 .. v10}, Lcom/nianticproject/ingress/common/scanner/visuals/g;->a(Lcom/nianticproject/ingress/common/j/h;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;FFFFFF)V

    .line 75
    neg-float v15, v5

    neg-float v0, v7

    move/from16 v17, v0

    neg-float v0, v9

    move/from16 v19, v0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v16, p4

    move/from16 v18, v8

    move/from16 v20, v10

    invoke-direct/range {v11 .. v20}, Lcom/nianticproject/ingress/common/scanner/visuals/g;->a(Lcom/nianticproject/ingress/common/j/h;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;FFFFFF)V

    .line 77
    move/from16 v0, p4

    neg-float v0, v0

    move/from16 v16, v0

    neg-float v0, v8

    move/from16 v18, v0

    neg-float v0, v10

    move/from16 v20, v0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move v15, v5

    move/from16 v17, v7

    move/from16 v19, v9

    invoke-direct/range {v11 .. v20}, Lcom/nianticproject/ingress/common/scanner/visuals/g;->a(Lcom/nianticproject/ingress/common/j/h;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;FFFFFF)V

    .line 79
    neg-float v5, v5

    move/from16 v0, p4

    neg-float v6, v0

    neg-float v7, v7

    neg-float v8, v8

    neg-float v9, v9

    neg-float v10, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v10}, Lcom/nianticproject/ingress/common/scanner/visuals/g;->a(Lcom/nianticproject/ingress/common/j/h;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;FFFFFF)V

    .line 82
    :cond_1
    return-void
.end method
