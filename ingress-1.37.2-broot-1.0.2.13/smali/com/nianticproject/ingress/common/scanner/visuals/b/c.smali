.class public abstract Lcom/nianticproject/ingress/common/scanner/visuals/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private a:Lcom/nianticproject/ingress/common/j/an;

.field private b:Lcom/nianticproject/ingress/common/j/am;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private a()[S
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->h()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    new-array v4, v0, [S

    .line 114
    new-array v5, v8, [S

    fill-array-data v5, :array_0

    move v0, v1

    move v2, v1

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->h()I

    move-result v3

    mul-int/lit8 v3, v3, 0x6

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 119
    :goto_1
    if-ge v3, v8, :cond_0

    .line 120
    add-int v6, v0, v3

    aget-short v7, v5, v3

    add-int/2addr v7, v2

    int-to-short v7, v7

    aput-short v7, v4, v6

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    :cond_0
    add-int/lit8 v2, v2, 0x4

    .line 118
    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    .line 124
    :cond_1
    return-object v4

    .line 114
    nop

    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x1t 0x0t
        0x3t 0x0t
        0x2t 0x0t
    .end array-data
.end method

.method private b()[F
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->h()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x9

    new-array v5, v0, [F

    .line 162
    new-instance v6, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v6}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    .line 163
    new-instance v7, Lcom/nianticproject/ingress/common/scanner/visuals/b/d;

    invoke-direct {v7}, Lcom/nianticproject/ingress/common/scanner/visuals/b/d;-><init>()V

    move v0, v1

    move v2, v1

    .line 165
    :goto_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->h()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 166
    invoke-virtual {p0, v6}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->a(Lcom/badlogic/gdx/math/Vector3;)V

    .line 167
    invoke-virtual {p0, v7}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->a(Lcom/nianticproject/ingress/common/scanner/visuals/b/d;)V

    move v3, v1

    .line 168
    :goto_1
    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v2, 0x0

    iget v8, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v8, v5, v4

    add-int/lit8 v4, v2, 0x1

    iget v8, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v8, v5, v4

    add-int/lit8 v4, v2, 0x2

    iget v8, v6, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v8, v5, v4

    add-int/lit8 v4, v2, 0x3

    sget-object v8, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->a:[F

    aget v8, v8, v3

    aput v8, v5, v4

    add-int/lit8 v4, v2, 0x4

    sget-object v8, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->b:[F

    aget v8, v8, v3

    aput v8, v5, v4

    add-int/lit8 v4, v2, 0x5

    iget v8, v7, Lcom/nianticproject/ingress/common/scanner/visuals/b/d;->b:F

    aput v8, v5, v4

    add-int/lit8 v4, v2, 0x6

    iget v8, v7, Lcom/nianticproject/ingress/common/scanner/visuals/b/d;->a:F

    aput v8, v5, v4

    add-int/lit8 v4, v2, 0x7

    iget v8, v7, Lcom/nianticproject/ingress/common/scanner/visuals/b/d;->c:F

    aput v8, v5, v4

    add-int/lit8 v4, v2, 0x8

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->a(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v5, v4

    add-int/lit8 v4, v2, 0x9

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 165
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    return-object v5
.end method


# virtual methods
.method abstract a(I)I
.end method

.method abstract a(Lcom/badlogic/gdx/math/Vector3;)V
.end method

.method abstract a(Lcom/nianticproject/ingress/common/scanner/visuals/b/d;)V
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->a:Lcom/nianticproject/ingress/common/j/an;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/an;->dispose()V

    .line 177
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->b:Lcom/nianticproject/ingress/common/j/am;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/am;->dispose()V

    .line 178
    return-void
.end method

.method final f()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 33
    new-instance v0, Lcom/nianticproject/ingress/common/j/an;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->b()[F

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v4, "a_position"

    invoke-direct {v3, v8, v5, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v2, v8

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v4, "a_texCoord0"

    invoke-direct {v3, v5, v9, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v2, v6

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v4, "a_scale"

    invoke-direct {v3, v7, v6, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v2, v9

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v4, "a_speed"

    invoke-direct {v3, v7, v6, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v4, "a_tOffset"

    invoke-direct {v3, v7, v6, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v2, v7

    const/4 v3, 0x5

    new-instance v4, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v5, "a_index"

    invoke-direct {v4, v7, v6, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/j/an;-><init>([F[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->a:Lcom/nianticproject/ingress/common/j/an;

    .line 41
    new-instance v0, Lcom/nianticproject/ingress/common/j/am;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->a()[S

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/j/am;-><init>([S)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->b:Lcom/nianticproject/ingress/common/j/am;

    .line 42
    return-void
.end method

.method abstract g()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
.end method

.method abstract h()I
.end method

.method abstract i()Z
.end method

.method public final j()Lcom/nianticproject/ingress/common/j/an;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->a:Lcom/nianticproject/ingress/common/j/an;

    return-object v0
.end method

.method public final k()Lcom/nianticproject/ingress/common/j/am;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->b:Lcom/nianticproject/ingress/common/j/am;

    return-object v0
.end method
