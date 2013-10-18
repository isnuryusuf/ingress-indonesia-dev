.class public final Lcom/nianticproject/ingress/common/j/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/j/ai;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/badlogic/gdx/math/Matrix4;


# instance fields
.field private final d:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

.field private final e:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

.field private final f:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

.field private final g:Lcom/nianticproject/ingress/common/j/ad;

.field private final h:I

.field private final i:I

.field private final j:[F

.field private final k:[S

.field private final l:[S

.field private final m:Lcom/badlogic/gdx/math/Vector3;

.field private final n:Lcom/badlogic/gdx/math/Vector3;

.field private final o:Lcom/badlogic/gdx/math/Vector3;

.field private final p:F

.field private final q:Lcom/badlogic/gdx/math/Vector3;

.field private final r:Lcom/badlogic/gdx/math/Vector3;

.field private final s:Lcom/badlogic/gdx/math/Vector3;

.field private final t:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/j/ai;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/j/ai;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 43
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/j/ai;->b:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/j/ai;->c:Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public constructor <init>([FLcom/badlogic/gdx/graphics/VertexAttributes;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/j/ai;-><init>([F[S[SLcom/badlogic/gdx/graphics/VertexAttributes;Lcom/nianticproject/ingress/common/j/ad;)V

    .line 77
    return-void
.end method

.method public constructor <init>([F[S[SLcom/badlogic/gdx/graphics/VertexAttributes;Lcom/nianticproject/ingress/common/j/ad;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v6, 0x3f00

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->q:Lcom/badlogic/gdx/math/Vector3;

    .line 66
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->r:Lcom/badlogic/gdx/math/Vector3;

    .line 67
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->s:Lcom/badlogic/gdx/math/Vector3;

    .line 68
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->t:Lcom/badlogic/gdx/math/Vector3;

    .line 81
    iput-object p5, p0, Lcom/nianticproject/ingress/common/j/ai;->g:Lcom/nianticproject/ingress/common/j/ad;

    .line 82
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->g:Lcom/nianticproject/ingress/common/j/ad;

    instance-of v0, v0, Lcom/nianticproject/ingress/common/j/at;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->g:Lcom/nianticproject/ingress/common/j/ad;

    check-cast v0, Lcom/nianticproject/ingress/common/j/at;

    iput-object p0, v0, Lcom/nianticproject/ingress/common/j/at;->h:Lcom/nianticproject/ingress/common/j/ai;

    .line 86
    :cond_0
    iget v0, p4, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v4, v0, 0x4

    .line 87
    array-length v0, p1

    div-int/2addr v0, v4

    .line 89
    new-instance v5, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-direct {v5, v1, v0, p4}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v5, p0, Lcom/nianticproject/ingress/common/j/ai;->d:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    .line 91
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->d:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->getBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    array-length v5, p1

    if-lt v0, v5, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 92
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->d:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    array-length v5, p1

    invoke-virtual {v0, p1, v2, v5}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->setVertices([FII)V

    .line 94
    iput v4, p0, Lcom/nianticproject/ingress/common/j/ai;->i:I

    .line 95
    invoke-static {p4}, Lcom/nianticproject/ingress/common/j/bd;->a(Lcom/badlogic/gdx/graphics/VertexAttributes;)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v0, v0, 0x4

    :goto_1
    iput v0, p0, Lcom/nianticproject/ingress/common/j/ai;->h:I

    .line 96
    iput-object p1, p0, Lcom/nianticproject/ingress/common/j/ai;->j:[F

    .line 97
    iput-object p2, p0, Lcom/nianticproject/ingress/common/j/ai;->k:[S

    .line 98
    invoke-static {p2}, Lcom/nianticproject/ingress/common/j/ai;->a([S)Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->f:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    .line 99
    iput-object p3, p0, Lcom/nianticproject/ingress/common/j/ai;->l:[S

    .line 100
    invoke-static {p3}, Lcom/nianticproject/ingress/common/j/ai;->a([S)Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->e:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    .line 102
    iget v0, p0, Lcom/nianticproject/ingress/common/j/ai;->h:I

    if-eq v0, v3, :cond_3

    move v0, v1

    :goto_2
    const-string/jumbo v3, "Vertex format is missing Position"

    invoke-static {v0, v3}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 104
    invoke-virtual {p4, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    .line 105
    iget v3, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    if-nez v3, :cond_4

    :goto_3
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 106
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/math/Vector3;-><init>([F)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->m:Lcom/badlogic/gdx/math/Vector3;

    .line 107
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/math/Vector3;-><init>([F)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->n:Lcom/badlogic/gdx/math/Vector3;

    .line 108
    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->numComponents:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_5

    .line 109
    iget v0, p0, Lcom/nianticproject/ingress/common/j/ai;->h:I

    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_6

    .line 110
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->m:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/ai;->m:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-int/lit8 v3, v0, 0x0

    aget v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 111
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->n:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/ai;->n:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-int/lit8 v3, v0, 0x0

    aget v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 112
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->m:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/ai;->m:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 113
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->n:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/ai;->n:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 114
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->m:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/ai;->m:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-int/lit8 v3, v0, 0x2

    aget v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 115
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->n:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/ai;->n:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-int/lit8 v3, v0, 0x2

    aget v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 109
    add-int/2addr v0, v4

    goto :goto_4

    :cond_1
    move v0, v2

    .line 91
    goto/16 :goto_0

    :cond_2
    move v0, v3

    .line 95
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 102
    goto/16 :goto_2

    :cond_4
    move v1, v2

    .line 105
    goto/16 :goto_3

    .line 118
    :cond_5
    iget v0, p0, Lcom/nianticproject/ingress/common/j/ai;->h:I

    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_6

    .line 119
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->m:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/ai;->m:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-int/lit8 v3, v0, 0x0

    aget v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 120
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->n:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/ai;->n:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-int/lit8 v3, v0, 0x0

    aget v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 121
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->m:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/ai;->m:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 122
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->n:Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/ai;->n:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 118
    add-int/2addr v0, v4

    goto :goto_5

    .line 126
    :cond_6
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->m:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->n:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v6, v6, v6}, Lcom/badlogic/gdx/math/Vector3;->scale(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->o:Lcom/badlogic/gdx/math/Vector3;

    .line 129
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->n:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->m:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v6, v6, v6}, Lcom/badlogic/gdx/math/Vector3;->scale(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/j/ai;->p:F

    .line 135
    sget-object v0, Lcom/nianticproject/ingress/common/j/ai;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method private static a([S)Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;
    .locals 3
    .parameter

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    .line 142
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    array-length v1, p0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(I)V

    .line 143
    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->setIndices([SII)V

    goto :goto_0
.end method

.method public static a(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 5
    .parameter

    .prologue
    .line 535
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->ax:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->setUniformf(FFFF)V

    .line 536
    return-void
.end method

.method public static a(Lcom/badlogic/gdx/graphics/Color;F)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 531
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->ax:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->setUniformf(FFFF)V

    .line 532
    return-void
.end method

.method public static a(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;F)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 517
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->ax:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v6, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->setUniformf(FFFF)V

    .line 519
    return-void
.end method

.method public static a(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;FF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 526
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->ax:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->setUniformf(FFFF)V

    .line 528
    return-void
.end method

.method public static b(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 367
    sget-object v0, Lcom/nianticproject/ingress/common/j/ai;->c:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 368
    sget-object v0, Lcom/nianticproject/ingress/common/j/ai;->c:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 369
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->ay:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;

    sget-object v1, Lcom/nianticproject/ingress/common/j/ai;->c:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->setUniformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 370
    return-void
.end method

.method public static k()V
    .locals 1

    .prologue
    .line 510
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aw:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 511
    return-void
.end method

.method private l()Z
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->e:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->e:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bind()V

    .line 422
    const/4 v0, 0x1

    .line 425
    :goto_0
    return v0

    .line 424
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/j/ai;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "ObjectMesh requires edge indices to draw edges."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 5

    .prologue
    .line 486
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 487
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/ai;->e:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->getNumIndices()I

    move-result v2

    const/16 v3, 0x1403

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIII)V

    .line 488
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Matrix4;F)Lcom/badlogic/gdx/math/Rectangle;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4000

    .line 292
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->o:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p1, p2, v0}, Lcom/nianticproject/ingress/common/w/ao;->a(Lcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 295
    iget v0, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 296
    const/4 v0, 0x0

    .line 306
    :goto_0
    return-object v0

    .line 300
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/j/ai;->p:F

    invoke-static {p2}, Lcom/nianticproject/ingress/common/w/z;->a(Lcom/badlogic/gdx/math/Matrix4;)F

    move-result v2

    mul-float/2addr v0, v2

    mul-float/2addr v0, p3

    invoke-static {p1, v1, v0}, Lcom/nianticproject/ingress/common/j/g;->a(Lcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Vector3;F)F

    move-result v2

    .line 306
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v4, v2, v5

    sub-float/2addr v3, v4

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v4, v2, v5

    sub-float/2addr v1, v4

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    goto :goto_0
.end method

.method public final a(I)Lcom/badlogic/gdx/math/Vector3;
    .locals 5
    .parameter

    .prologue
    .line 166
    iget v0, p0, Lcom/nianticproject/ingress/common/j/ai;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Mesh does not have position data"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 167
    iget v0, p0, Lcom/nianticproject/ingress/common/j/ai;->i:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/nianticproject/ingress/common/j/ai;->h:I

    add-int/2addr v0, v1

    .line 168
    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/ai;->j:[F

    add-int/lit8 v3, v0, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/nianticproject/ingress/common/j/ai;->j:[F

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/nianticproject/ingress/common/j/ai;->j:[F

    add-int/lit8 v0, v0, 0x2

    aget v0, v4, v0

    invoke-direct {v1, v2, v3, v0}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    return-object v1

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Lcom/nianticproject/ingress/common/j/ad;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->g:Lcom/nianticproject/ingress/common/j/ad;

    return-object v0
.end method

.method public final a(Lcom/badlogic/gdx/math/collision/Ray;F)Ljava/lang/Float;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 208
    iget-object v8, p1, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    .line 209
    iget-object v9, p1, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    .line 211
    iget v0, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v0, v0, v12

    if-gez v0, :cond_1

    move v0, v1

    .line 212
    :goto_0
    iget v3, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v3, v3, v12

    if-gez v3, :cond_2

    move v3, v1

    .line 213
    :goto_1
    iget v5, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v5, v5, v12

    if-gez v5, :cond_3

    .line 214
    :goto_2
    iget-object v10, p0, Lcom/nianticproject/ingress/common/j/ai;->n:Lcom/badlogic/gdx/math/Vector3;

    .line 215
    iget-object v11, p0, Lcom/nianticproject/ingress/common/j/ai;->m:Lcom/badlogic/gdx/math/Vector3;

    .line 217
    if-eqz v0, :cond_4

    iget v2, v10, Lcom/badlogic/gdx/math/Vector3;->x:F

    :goto_3
    mul-float/2addr v2, p2

    iget v5, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v2, v5

    iget v5, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v7, v2, v5

    .line 218
    if-eqz v0, :cond_5

    iget v0, v11, Lcom/badlogic/gdx/math/Vector3;->x:F

    :goto_4
    mul-float/2addr v0, p2

    iget v2, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v0, v2

    iget v2, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v6, v0, v2

    .line 219
    if-eqz v3, :cond_6

    iget v0, v10, Lcom/badlogic/gdx/math/Vector3;->y:F

    :goto_5
    mul-float/2addr v0, p2

    iget v2, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v0, v2

    iget v2, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v5, v0, v2

    .line 220
    if-eqz v3, :cond_7

    iget v0, v11, Lcom/badlogic/gdx/math/Vector3;->y:F

    :goto_6
    mul-float/2addr v0, p2

    iget v2, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v0, v2

    iget v2, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v2, v0, v2

    .line 222
    cmpl-float v0, v7, v2

    if-gtz v0, :cond_0

    cmpl-float v0, v5, v6

    if-lez v0, :cond_8

    :cond_0
    move-object v0, v4

    .line 251
    :goto_7
    return-object v0

    :cond_1
    move v0, v2

    .line 211
    goto :goto_0

    :cond_2
    move v3, v2

    .line 212
    goto :goto_1

    :cond_3
    move v1, v2

    .line 213
    goto :goto_2

    .line 217
    :cond_4
    iget v2, v11, Lcom/badlogic/gdx/math/Vector3;->x:F

    goto :goto_3

    .line 218
    :cond_5
    iget v0, v10, Lcom/badlogic/gdx/math/Vector3;->x:F

    goto :goto_4

    .line 219
    :cond_6
    iget v0, v11, Lcom/badlogic/gdx/math/Vector3;->y:F

    goto :goto_5

    .line 220
    :cond_7
    iget v0, v10, Lcom/badlogic/gdx/math/Vector3;->y:F

    goto :goto_6

    .line 225
    :cond_8
    cmpl-float v0, v5, v7

    if-lez v0, :cond_11

    .line 228
    :goto_8
    cmpg-float v0, v2, v6

    if-gez v0, :cond_10

    .line 232
    :goto_9
    if-eqz v1, :cond_a

    iget v0, v10, Lcom/badlogic/gdx/math/Vector3;->z:F

    :goto_a
    mul-float/2addr v0, p2

    iget v3, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v0, v3

    iget v3, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float v3, v0, v3

    .line 233
    if-eqz v1, :cond_b

    iget v0, v11, Lcom/badlogic/gdx/math/Vector3;->z:F

    :goto_b
    mul-float/2addr v0, p2

    iget v1, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v0, v1

    iget v1, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float/2addr v0, v1

    .line 235
    cmpl-float v1, v5, v0

    if-gtz v1, :cond_9

    cmpl-float v1, v3, v2

    if-lez v1, :cond_c

    :cond_9
    move-object v0, v4

    .line 236
    goto :goto_7

    .line 232
    :cond_a
    iget v0, v11, Lcom/badlogic/gdx/math/Vector3;->z:F

    goto :goto_a

    .line 233
    :cond_b
    iget v0, v10, Lcom/badlogic/gdx/math/Vector3;->z:F

    goto :goto_b

    .line 238
    :cond_c
    cmpl-float v1, v3, v5

    if-lez v1, :cond_f

    move v1, v3

    .line 241
    :goto_c
    cmpg-float v3, v0, v2

    if-gez v3, :cond_e

    .line 245
    :goto_d
    const v2, 0x7f7fffff

    cmpg-float v2, v1, v2

    if-gez v2, :cond_d

    cmpl-float v0, v0, v12

    if-lez v0, :cond_d

    .line 248
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_7

    :cond_d
    move-object v0, v4

    .line 251
    goto :goto_7

    :cond_e
    move v0, v2

    goto :goto_d

    :cond_f
    move v1, v5

    goto :goto_c

    :cond_10
    move v2, v6

    goto :goto_9

    :cond_11
    move v5, v7

    goto :goto_8
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector2;F)Ljava/lang/Float;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 264
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->o:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p1, p2, v0}, Lcom/nianticproject/ingress/common/w/ao;->a(Lcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 267
    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 277
    :goto_0
    return-object v0

    .line 272
    :cond_0
    iget v1, p0, Lcom/nianticproject/ingress/common/j/ai;->p:F

    invoke-static {p2}, Lcom/nianticproject/ingress/common/w/z;->a(Lcom/badlogic/gdx/math/Matrix4;)F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, p4

    invoke-static {p1, v0, v1}, Lcom/nianticproject/ingress/common/j/g;->a(Lcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Vector3;F)F

    move-result v1

    .line 275
    iget v2, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    .line 276
    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v3

    .line 277
    mul-float/2addr v2, v2

    mul-float/2addr v0, v0

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->d:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 347
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->d:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->aw:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 362
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->ay:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram$Uniform;->setUniformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 363
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/ai;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aw:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 435
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 436
    invoke-static {p2}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/Color;)V

    .line 437
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/ai;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/ai;->m()V

    .line 438
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aw:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/j/ai;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 440
    :cond_1
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 455
    if-nez p3, :cond_1

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->az:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 458
    :goto_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 459
    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 460
    const-string/jumbo v1, "u_texture"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 461
    const-string/jumbo v1, "u_modelViewProject"

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 463
    if-eqz p3, :cond_0

    .line 464
    const-string/jumbo v1, "u_color"

    invoke-virtual {v0, v1, p3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 467
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 468
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/j/ai;->h()V

    .line 469
    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/j/ai;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 470
    return-void

    .line 455
    :cond_1
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aA:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    goto :goto_0
.end method

.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 353
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->d:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->aw:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 354
    invoke-static {p1, p2}, Lcom/nianticproject/ingress/common/j/ai;->b(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 355
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector3;FLcom/badlogic/gdx/math/Rectangle;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->q:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p0, Lcom/nianticproject/ingress/common/j/ai;->p:F

    mul-float/2addr v1, p4

    invoke-virtual {v0, v1, v2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->rot(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    .line 320
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->q:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/f;->i()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 321
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->r:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/f;->j()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 324
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->s:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->o:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 325
    if-eqz p3, :cond_0

    .line 326
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->s:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->t:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->s:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->q:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->r:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 331
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->prj(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 332
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->t:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v0, p5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 333
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->t:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v0, p5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 336
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->t:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->s:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->q:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/ai;->r:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 337
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->t:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->prj(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 338
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->t:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v0, v1

    iput v0, p5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 339
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->t:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v0, v1

    iput v0, p5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 340
    return-void
.end method

.method public final b(I)V
    .locals 3
    .parameter

    .prologue
    .line 494
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 495
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/ai;->d:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->getNumVertices()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDrawArrays(III)V

    .line 496
    return-void
.end method

.method public final b(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .parameter

    .prologue
    .line 376
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 377
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->f:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bind()V

    .line 378
    return-void
.end method

.method public final b()[S
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->k:[S

    return-object v0
.end method

.method public final c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .parameter

    .prologue
    .line 502
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->d:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 503
    return-void
.end method

.method public final c()[S
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->l:[S

    return-object v0
.end method

.method public final d()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->m:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->d:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    .line 541
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->e:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    .line 542
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->f:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    .line 543
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->g:Lcom/nianticproject/ingress/common/j/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    .line 544
    return-void
.end method

.method public final e()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->n:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public final f()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->o:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public final g()V
    .locals 5

    .prologue
    .line 384
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/ai;->f:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->getNumIndices()I

    move-result v2

    const/16 v3, 0x1403

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIII)V

    .line 386
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->f:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ai;->f:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bind()V

    .line 394
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/j/ai;->g()V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/j/ai;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "ObjectMesh requires face indices to draw in this mode."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 404
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/ai;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 410
    const v1, 0x3f7fec57

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthRangef(FF)V

    .line 411
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/ai;->m()V

    .line 412
    const/high16 v1, 0x3f80

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthRangef(FF)V

    .line 414
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 506
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aw:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/j/ai;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 507
    return-void
.end method
