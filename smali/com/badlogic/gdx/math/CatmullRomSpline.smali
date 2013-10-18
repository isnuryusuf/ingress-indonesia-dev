.class public Lcom/badlogic/gdx/math/CatmullRomSpline;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2daa144d239805bbL


# instance fields
.field T1:Lcom/badlogic/gdx/math/Vector3;

.field T2:Lcom/badlogic/gdx/math/Vector3;

.field private controlPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->T1:Lcom/badlogic/gdx/math/Vector3;

    .line 31
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->T2:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public getControlPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    return-object v0
.end method

.method public getPath(I)Ljava/util/List;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    move-object v0, v2

    .line 86
    :goto_0
    return-object v0

    .line 55
    :cond_0
    new-instance v6, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v6}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    .line 56
    new-instance v7, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v7}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    .line 58
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-gt v1, v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const/high16 v0, 0x3f80

    add-int/lit8 v3, p1, 0x1

    int-to-float v3, v3

    div-float v5, v0, v3

    .line 63
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v3, 0x3f00

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v3, 0x3f00

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 66
    const/4 v0, 0x0

    move v3, v0

    move v4, v5

    :goto_2
    if-ge v3, p1, :cond_1

    .line 67
    const/high16 v0, 0x4000

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    const/high16 v8, 0x4040

    mul-float/2addr v8, v4

    mul-float/2addr v8, v4

    sub-float/2addr v0, v8

    const/high16 v8, 0x3f80

    add-float/2addr v8, v0

    .line 69
    const/high16 v0, -0x4000

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    const/high16 v9, 0x4040

    mul-float/2addr v9, v4

    mul-float/2addr v9, v4

    add-float/2addr v9, v0

    .line 71
    mul-float v0, v4, v4

    mul-float/2addr v0, v4

    const/high16 v10, 0x4000

    mul-float/2addr v10, v4

    mul-float/2addr v10, v4

    sub-float/2addr v0, v10

    add-float v10, v0, v4

    .line 73
    mul-float v0, v4, v4

    mul-float/2addr v0, v4

    mul-float v11, v4, v4

    sub-float v11, v0, v11

    .line 75
    new-instance v12, Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v12, v0}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    invoke-virtual {v12, v8}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v12, v1, 0x1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 77
    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 78
    invoke-virtual {v7}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 79
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-float/2addr v4, v5

    .line 66
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 58
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    iget-object v1, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v0, v2

    .line 86
    goto/16 :goto_0
.end method

.method public getPath([Lcom/badlogic/gdx/math/Vector3;I)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 124
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x1

    move v11, v0

    move v0, v1

    move v1, v11

    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    if-gt v1, v2, :cond_2

    .line 99
    add-int/lit8 v2, v0, 0x1

    aget-object v3, p1, v0

    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 100
    const/high16 v0, 0x3f80

    add-int/lit8 v3, p2, 0x1

    int-to-float v3, v3

    div-float v5, v0, v3

    .line 103
    iget-object v3, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->T1:Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v3, 0x3f00

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 104
    iget-object v3, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->T2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v4, v1, 0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v3, 0x3f00

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 106
    const/4 v0, 0x0

    move v3, v0

    move v4, v5

    :goto_2
    if-ge v3, p2, :cond_1

    .line 107
    const/high16 v0, 0x4000

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    const/high16 v6, 0x4040

    mul-float/2addr v6, v4

    mul-float/2addr v6, v4

    sub-float/2addr v0, v6

    const/high16 v6, 0x3f80

    add-float v7, v0, v6

    .line 109
    const/high16 v0, -0x4000

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    const/high16 v6, 0x4040

    mul-float/2addr v6, v4

    mul-float/2addr v6, v4

    add-float v8, v0, v6

    .line 111
    mul-float v0, v4, v4

    mul-float/2addr v0, v4

    const/high16 v6, 0x4000

    mul-float/2addr v6, v4

    mul-float/2addr v6, v4

    sub-float/2addr v0, v6

    add-float v9, v0, v4

    .line 113
    mul-float v0, v4, v4

    mul-float/2addr v0, v4

    mul-float v6, v4, v4

    sub-float v10, v0, v6

    .line 115
    add-int/lit8 v6, v2, 0x1

    aget-object v2, p1, v2

    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->T1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->T2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 119
    add-float v2, v4, v5

    .line 106
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v2

    move v2, v6

    goto :goto_2

    .line 98
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto/16 :goto_1

    .line 123
    :cond_2
    aget-object v1, p1, v0

    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    iget-object v2, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    goto/16 :goto_0
.end method

.method public getTangentNormals(ILcom/badlogic/gdx/math/Vector3;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/badlogic/gdx/math/Vector3;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->getTangents(I)Ljava/util/List;

    move-result-object v0

    .line 224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    .line 227
    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3, v0}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    invoke-virtual {v3, p2}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_0
    return-object v1
.end method

.method public getTangentNormals(ILjava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->getTangents(I)Ljava/util/List;

    move-result-object v1

    .line 234
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 236
    const/4 v0, 0x0

    .line 237
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    .line 238
    new-instance v5, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v5, v0}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    .line 240
    :cond_0
    return-object v3
.end method

.method public getTangentNormals2D(I)Ljava/util/List;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    move-object v0, v2

    .line 214
    :goto_0
    return-object v0

    .line 179
    :cond_0
    new-instance v6, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v6}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    .line 180
    new-instance v7, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v7}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    .line 182
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-gt v1, v0, :cond_2

    .line 183
    const/high16 v0, 0x3f80

    add-int/lit8 v3, p1, 0x1

    int-to-float v3, v3

    div-float v5, v0, v3

    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v3, 0x3f00

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v3, 0x3f00

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 189
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 190
    iget v3, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 191
    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v4, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 192
    neg-float v3, v3

    iput v3, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 193
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    const/4 v0, 0x0

    move v3, v0

    move v4, v5

    :goto_2
    if-ge v3, p1, :cond_1

    .line 196
    const/high16 v0, 0x40c0

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    const/high16 v8, 0x40c0

    mul-float/2addr v8, v4

    sub-float v8, v0, v8

    .line 197
    const/high16 v0, -0x3f40

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    const/high16 v9, 0x40c0

    mul-float/2addr v9, v4

    add-float/2addr v9, v0

    .line 198
    const/high16 v0, 0x4040

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    const/high16 v10, 0x4080

    mul-float/2addr v10, v4

    sub-float/2addr v0, v10

    const/high16 v10, 0x3f80

    add-float/2addr v10, v0

    .line 199
    const/high16 v0, 0x4040

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    const/high16 v11, 0x4000

    mul-float/2addr v11, v4

    sub-float v11, v0, v11

    .line 201
    new-instance v12, Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v12, v0}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    invoke-virtual {v12, v8}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v12, v1, 0x1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 203
    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 204
    invoke-virtual {v7}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 205
    invoke-virtual {v8}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 206
    iget v0, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 207
    iget v9, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v9, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 208
    neg-float v0, v0

    iput v0, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 209
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    add-float/2addr v4, v5

    .line 195
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 182
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_2
    move-object v0, v2

    .line 214
    goto/16 :goto_0
.end method

.method public getTangents(I)Ljava/util/List;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    move-object v0, v2

    .line 166
    :goto_0
    return-object v0

    .line 135
    :cond_0
    new-instance v6, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v6}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    .line 136
    new-instance v7, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v7}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    .line 138
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-gt v1, v0, :cond_2

    .line 139
    const/high16 v0, 0x3f80

    add-int/lit8 v3, p1, 0x1

    int-to-float v3, v3

    div-float v5, v0, v3

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v3, 0x3f00

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v3, v1, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v3, 0x3f00

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 145
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v6}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const/4 v0, 0x0

    move v3, v0

    move v4, v5

    :goto_2
    if-ge v3, p1, :cond_1

    .line 148
    const/high16 v0, 0x40c0

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    const/high16 v8, 0x40c0

    mul-float/2addr v8, v4

    sub-float v8, v0, v8

    .line 149
    const/high16 v0, -0x3f40

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    const/high16 v9, 0x40c0

    mul-float/2addr v9, v4

    add-float/2addr v9, v0

    .line 150
    const/high16 v0, 0x4040

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    const/high16 v10, 0x4080

    mul-float/2addr v10, v4

    sub-float/2addr v0, v10

    const/high16 v10, 0x3f80

    add-float/2addr v10, v0

    .line 151
    const/high16 v0, 0x4040

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    const/high16 v11, 0x4000

    mul-float/2addr v11, v4

    sub-float v11, v0, v11

    .line 153
    new-instance v12, Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v12, v0}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    invoke-virtual {v12, v8}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    add-int/lit8 v12, v1, 0x1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 155
    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 156
    invoke-virtual {v7}, Lcom/badlogic/gdx/math/Vector3;->tmp()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 157
    invoke-virtual {v8}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    add-float/2addr v4, v5

    .line 147
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 138
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    iget-object v1, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    iget-object v3, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->cpy()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v0, v2

    .line 166
    goto/16 :goto_0
.end method
