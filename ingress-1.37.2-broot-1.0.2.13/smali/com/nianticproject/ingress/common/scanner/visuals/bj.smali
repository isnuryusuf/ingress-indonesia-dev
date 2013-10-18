.class public final Lcom/nianticproject/ingress/common/scanner/visuals/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;
.implements Lcom/nianticproject/ingress/common/j/o;


# static fields
.field public static a:Z

.field private static final b:Lcom/badlogic/gdx/graphics/Color;

.field private static final c:Lcom/badlogic/gdx/graphics/Color;

.field private static final d:Lcom/badlogic/gdx/graphics/Color;

.field private static final e:Lcom/badlogic/gdx/graphics/Color;

.field private static final f:Lcom/badlogic/gdx/graphics/Color;

.field private static final g:Lcom/nianticproject/ingress/common/t/b;

.field private static final l:[F

.field private static final m:[F


# instance fields
.field private A:Z

.field private B:[F

.field private C:[F

.field private D:[F

.field private final E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/visuals/bm;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Float;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private n:I

.field private final o:Lcom/badlogic/gdx/math/Matrix4;

.field private final p:Lcom/badlogic/gdx/math/Vector3;

.field private final q:Lcom/badlogic/gdx/math/Vector3;

.field private final r:Lcom/nianticproject/ingress/common/scanner/fp;

.field private final s:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

.field private final t:Lcom/nianticproject/ingress/common/j/an;

.field private final u:Lcom/nianticproject/ingress/common/j/am;

.field private v:J

.field private final w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/scanner/visuals/bm;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/visuals/bm;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/visuals/bm;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Lcom/nianticproject/ingress/common/scanner/visuals/bn;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v6, 0x3f333333

    const v5, 0x3e428f5c

    const v4, 0x3dcccccd

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ea8f5c3

    invoke-direct {v0, v1, v5, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->b:Lcom/badlogic/gdx/graphics/Color;

    .line 90
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->c:Lcom/badlogic/gdx/graphics/Color;

    .line 91
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e99999a

    invoke-direct {v0, v2, v1, v6, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->d:Lcom/badlogic/gdx/graphics/Color;

    .line 92
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v6, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->e:Lcom/badlogic/gdx/graphics/Color;

    .line 93
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f6e147b

    const v2, 0x3f2b851f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->f:Lcom/badlogic/gdx/graphics/Color;

    .line 95
    const-string/jumbo v0, "Portal Particle Render"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->g:Lcom/nianticproject/ingress/common/t/b;

    .line 140
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->a:Z

    .line 169
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->l:[F

    .line 170
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->m:[F

    return-void

    .line 169
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 170
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/scanner/visuals/bn;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v5, 0xa0

    const/4 v9, 0x3

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const v0, 0x3f19999a

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->c:Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3d4ccccd

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sget-object v4, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->b:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0, v2, v3, v4}, Lcom/google/a/c/dx;->a(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/a/c/dx;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->h:Ljava/util/SortedMap;

    .line 143
    const-string/jumbo v0, "u_params"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->i:Ljava/lang/String;

    .line 144
    const-string/jumbo v0, "u_color"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->j:Ljava/lang/String;

    .line 145
    const-string/jumbo v0, "u_position"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->k:Ljava/lang/String;

    .line 197
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->o:Lcom/badlogic/gdx/math/Matrix4;

    .line 198
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->p:Lcom/badlogic/gdx/math/Vector3;

    .line 199
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->q:Lcom/badlogic/gdx/math/Vector3;

    .line 206
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->v:J

    .line 208
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->w:Ljava/util/Map;

    .line 209
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->x:Ljava/util/List;

    .line 210
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->y:Ljava/util/Set;

    .line 216
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->A:Z

    .line 219
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->B:[F

    .line 220
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->C:[F

    .line 221
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->D:[F

    .line 457
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->E:Ljava/util/List;

    .line 225
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/fp;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->r:Lcom/nianticproject/ingress/common/scanner/fp;

    .line 226
    new-instance v0, Lcom/nianticproject/ingress/common/j/an;

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->d()[F

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v4, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v5, "a_position"

    invoke-direct {v4, v1, v9, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v4, v3, v1

    new-instance v4, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v5, 0x2

    const-string/jumbo v6, "a_texCoord0"

    invoke-direct {v4, v9, v5, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v4, v3, v7

    const/4 v4, 0x2

    new-instance v5, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v6, "a_scale"

    invoke-direct {v5, v8, v7, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v5, v3, v4

    new-instance v4, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v5, "a_speed"

    invoke-direct {v4, v8, v7, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v5, "a_portalIndex"

    invoke-direct {v4, v8, v7, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v4, v3, v8

    const/4 v4, 0x5

    new-instance v5, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v6, "a_index"

    invoke-direct {v5, v8, v7, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/nianticproject/ingress/common/j/an;-><init>([F[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->t:Lcom/nianticproject/ingress/common/j/an;

    .line 235
    new-instance v0, Lcom/nianticproject/ingress/common/j/am;

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->c()[S

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nianticproject/ingress/common/j/am;-><init>([S)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->u:Lcom/nianticproject/ingress/common/j/am;

    .line 238
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->au:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/ai;

    .line 239
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->e()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    .line 240
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->d()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 243
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->q:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v4, v5

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    iget v5, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v0, v2

    const/high16 v2, 0x3f00

    mul-float/2addr v0, v2

    invoke-virtual {v3, v4, v5, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/high16 v2, 0x40c0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    .line 248
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/bk;

    invoke-direct {v0, p0, p1, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bk;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/bj;Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/scanner/fp;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->s:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    .line 260
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aN:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniforms()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v1, v2, v0

    .line 263
    const-string/jumbo v4, "[0]"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[0]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->i:Ljava/lang/String;

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[0]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->j:Ljava/lang/String;

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[0]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->k:Ljava/lang/String;

    .line 270
    :cond_0
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->z:Lcom/nianticproject/ingress/common/scanner/visuals/bn;

    .line 271
    return-void

    .line 260
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/nianticproject/ingress/shared/ai;F)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 420
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->h:Ljava/util/SortedMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    .line 421
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->c:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    if-ne p1, v0, :cond_1

    .line 423
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->e:Lcom/badlogic/gdx/graphics/Color;

    .line 430
    :cond_0
    :goto_0
    return-object v0

    .line 424
    :cond_1
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    if-ne p1, v0, :cond_2

    .line 425
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->d:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    .line 427
    :cond_2
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->f:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/bj;)Lcom/nianticproject/ingress/common/scanner/fp;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->r:Lcom/nianticproject/ingress/common/scanner/fp;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/visuals/bj;)Lcom/nianticproject/ingress/common/scanner/visuals/bc;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->s:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 278
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->r:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/fp;->a()Lcom/google/a/d/u;

    move-result-object v2

    .line 279
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 281
    if-nez v2, :cond_1

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->A:Z

    .line 306
    :cond_0
    return-void

    .line 286
    :cond_1
    iput-boolean v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->A:Z

    .line 288
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->x:Ljava/util/List;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->w:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 289
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->x:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/bl;

    invoke-direct {v1, p0, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/bl;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/bj;Lcom/google/a/d/u;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 297
    iput v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->n:I

    .line 298
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/bm;

    .line 300
    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)Lcom/google/a/d/u;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/nianticproject/ingress/shared/b/a;->a(Lcom/google/a/d/u;Lcom/google/a/d/u;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4069

    cmpg-double v0, v3, v5

    if-gez v0, :cond_0

    .line 301
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->n:I

    .line 298
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/visuals/bj;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->b()V

    return-void
.end method

.method private static c()[S
    .locals 10

    .prologue
    const/16 v9, 0x5a00

    const/4 v8, 0x6

    const/4 v1, 0x0

    .line 607
    new-array v4, v9, [S

    .line 608
    new-array v5, v8, [S

    fill-array-data v5, :array_0

    move v2, v1

    move v3, v1

    .line 611
    :goto_0
    if-ge v2, v9, :cond_1

    move v0, v1

    .line 613
    :goto_1
    if-ge v0, v8, :cond_0

    .line 614
    add-int v6, v2, v0

    aget-short v7, v5, v0

    add-int/2addr v7, v3

    int-to-short v7, v7

    aput-short v7, v4, v6

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 616
    :cond_0
    add-int/lit8 v3, v3, 0x4

    .line 612
    add-int/lit8 v0, v2, 0x6

    move v2, v0

    goto :goto_0

    .line 618
    :cond_1
    return-object v4

    .line 608
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

.method static synthetic d(Lcom/nianticproject/ingress/common/scanner/visuals/bj;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->x:Ljava/util/List;

    return-object v0
.end method

.method private static d()[F
    .locals 20

    .prologue
    .line 653
    const v1, 0x21c00

    new-array v5, v1, [F

    .line 655
    const/4 v2, 0x0

    .line 657
    const/16 v1, 0x60

    new-array v6, v1, [F

    .line 658
    const/16 v1, 0x60

    new-array v7, v1, [F

    .line 659
    const/16 v1, 0x60

    new-array v8, v1, [F

    .line 660
    const/16 v1, 0x60

    new-array v9, v1, [F

    .line 661
    const/16 v1, 0x60

    new-array v10, v1, [F

    .line 663
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x60

    if-ge v1, v3, :cond_0

    .line 664
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v11, 0x3fe0

    sub-double/2addr v3, v11

    double-to-float v3, v3

    aput v3, v6, v1

    .line 665
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v11, 0x3fd999999999999aL

    mul-double/2addr v3, v11

    const-wide v11, 0x3fc999999999999aL

    sub-double/2addr v3, v11

    double-to-float v3, v3

    aput v3, v7, v1

    .line 666
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v11, 0x3fe0

    sub-double/2addr v3, v11

    double-to-float v3, v3

    aput v3, v8, v1

    .line 667
    const-wide/high16 v3, 0x4024

    const-wide v11, 0x3feccccccccccccdL

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    mul-double/2addr v11, v13

    const-wide v13, 0x3fb999999999999aL

    add-double/2addr v11, v13

    mul-double/2addr v3, v11

    double-to-float v3, v3

    aput v3, v9, v1

    .line 668
    const-wide/high16 v3, 0x4018

    const-wide/high16 v11, 0x3fe0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    mul-double/2addr v11, v13

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    mul-double/2addr v3, v11

    double-to-float v3, v3

    aput v3, v10, v1

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    :cond_0
    const/4 v1, 0x0

    move v4, v1

    :goto_1
    const/16 v1, 0x28

    if-ge v4, v1, :cond_3

    .line 672
    const/4 v1, 0x0

    move v3, v1

    :goto_2
    const/16 v1, 0x60

    if-ge v3, v1, :cond_2

    .line 673
    aget v11, v6, v3

    aget v12, v7, v3

    aget v13, v8, v3

    aget v14, v10, v3

    aget v15, v9, v3

    int-to-float v0, v4

    move/from16 v16, v0

    int-to-float v0, v3

    move/from16 v17, v0

    const/4 v1, 0x0

    :goto_3
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v1, v0, :cond_1

    add-int/lit8 v18, v2, 0x0

    aput v11, v5, v18

    add-int/lit8 v18, v2, 0x1

    aput v12, v5, v18

    add-int/lit8 v18, v2, 0x2

    aput v13, v5, v18

    add-int/lit8 v18, v2, 0x3

    sget-object v19, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->l:[F

    aget v19, v19, v1

    aput v19, v5, v18

    add-int/lit8 v18, v2, 0x4

    sget-object v19, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->m:[F

    aget v19, v19, v1

    aput v19, v5, v18

    add-int/lit8 v18, v2, 0x5

    aput v14, v5, v18

    add-int/lit8 v18, v2, 0x6

    aput v15, v5, v18

    add-int/lit8 v18, v2, 0x7

    aput v16, v5, v18

    add-int/lit8 v18, v2, 0x8

    aput v17, v5, v18

    add-int/lit8 v2, v2, 0x9

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 672
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 671
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 677
    :cond_3
    return-object v5
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    :try_start_0
    const-string/jumbo v0, "ParticleVisuals.draw"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 464
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->g:Lcom/nianticproject/ingress/common/t/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/b;->b()V

    .line 466
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 467
    const/16 v0, 0xb44

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 468
    const/16 v0, 0xbe2

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 470
    const/16 v0, 0x302

    const/4 v1, 0x1

    invoke-interface {v3, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 474
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 476
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->s:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bc;->c()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    .line 477
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->o:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 478
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->p:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->k()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 480
    sget-object v4, Lcom/nianticproject/ingress/common/scanner/ag;->aN:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 482
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aX:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 483
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 485
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->u:Lcom/nianticproject/ingress/common/j/am;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/am;->a()V

    .line 486
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->t:Lcom/nianticproject/ingress/common/j/an;

    invoke-virtual {v0, v4}, Lcom/nianticproject/ingress/common/j/an;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 488
    const-string/jumbo v0, "u_modelViewProject"

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->o:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v4, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 489
    const-string/jumbo v0, "u_cameraPos"

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->p:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector3;)V

    .line 491
    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->f()Lcom/badlogic/gdx/math/Frustum;

    move-result-object v5

    .line 493
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 494
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/bm;

    .line 495
    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->d(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->b(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v8, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v7, v8

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->c(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)F

    move-result v8

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->b(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v9

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v10, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v9, v10

    invoke-virtual {v1, v7, v8, v9}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 499
    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->d(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    const/high16 v7, 0x4140

    invoke-virtual {v5, v1, v7}, Lcom/badlogic/gdx/math/Frustum;->sphereInFrustum(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->E:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->y:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->n:I

    const/4 v7, 0x4

    if-le v1, v7, :cond_2

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)Lcom/google/a/d/u;

    move-result-object v1

    iget-object v7, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->r:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-virtual {v7}, Lcom/nianticproject/ingress/common/scanner/fp;->a()Lcom/google/a/d/u;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/nianticproject/ingress/shared/b/a;->a(Lcom/google/a/d/u;Lcom/google/a/d/u;)D

    move-result-wide v7

    const-wide/high16 v9, 0x4069

    cmpg-double v1, v7, v9

    if-gez v1, :cond_2

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->e(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sget-object v7, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->f:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/graphics/Color;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 509
    const/high16 v1, 0x3f80

    iget v7, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->n:I

    add-int/lit8 v7, v7, -0x4

    div-int/lit8 v7, v7, 0x8

    int-to-float v7, v7

    sub-float/2addr v1, v7

    .line 512
    const v7, 0x3ecccccd

    cmpg-float v7, v1, v7

    if-gez v7, :cond_1

    .line 513
    const v1, 0x3ecccccd

    .line 516
    :cond_1
    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->f(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bm;I)I

    .line 517
    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->g(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)I

    move-result v1

    const/16 v7, 0x10

    if-ge v1, v7, :cond_0

    .line 518
    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bm;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 601
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 602
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->g:Lcom/nianticproject/ingress/common/t/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/b;->c()V

    throw v0

    .line 523
    :cond_2
    :try_start_1
    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->f(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bm;I)I

    goto/16 :goto_0

    .line 529
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->y:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 530
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->y:Ljava/util/Set;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->E:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 532
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->z:Lcom/nianticproject/ingress/common/scanner/visuals/bn;

    if-eqz v0, :cond_5

    .line 535
    const/4 v1, 0x0

    .line 536
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/bm;

    .line 537
    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->d(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/math/Frustum;->pointInFrustum(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 538
    const/4 v0, 0x1

    .line 543
    :goto_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->z:Lcom/nianticproject/ingress/common/scanner/visuals/bn;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bn;->a(Z)V

    .line 546
    :cond_5
    sget-boolean v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->a:Z

    if-eqz v0, :cond_8

    .line 549
    const/4 v1, 0x0

    .line 551
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 552
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->E:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/bm;

    .line 553
    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->d(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    .line 554
    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->e(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    .line 557
    iget-object v7, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->B:[F

    mul-int/lit8 v8, v2, 0x4

    add-int/lit8 v8, v8, 0x0

    iget v9, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v9, v7, v8

    .line 558
    iget-object v7, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->B:[F

    mul-int/lit8 v8, v2, 0x4

    add-int/lit8 v8, v8, 0x1

    iget v9, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v9, v7, v8

    .line 559
    iget-object v7, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->B:[F

    mul-int/lit8 v8, v2, 0x4

    add-int/lit8 v8, v8, 0x2

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v6, v7, v8

    .line 562
    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->B:[F

    mul-int/lit8 v7, v2, 0x4

    add-int/lit8 v7, v7, 0x3

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->g(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)I

    move-result v8

    int-to-float v8, v8

    aput v8, v6, v7

    .line 564
    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->C:[F

    mul-int/lit8 v7, v2, 0x4

    add-int/lit8 v7, v7, 0x0

    iget v8, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v8, v6, v7

    .line 565
    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->C:[F

    mul-int/lit8 v7, v2, 0x4

    add-int/lit8 v7, v7, 0x1

    iget v8, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v8, v6, v7

    .line 566
    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->C:[F

    mul-int/lit8 v7, v2, 0x4

    add-int/lit8 v7, v7, 0x2

    iget v8, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v8, v6, v7

    .line 567
    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->C:[F

    mul-int/lit8 v7, v2, 0x4

    add-int/lit8 v7, v7, 0x3

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->h(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)F

    move-result v8

    aput v8, v6, v7

    .line 570
    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->p:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 571
    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3fc99999a0000000L

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    .line 573
    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->D:[F

    mul-int/lit8 v7, v2, 0x4

    add-int/lit8 v7, v7, 0x0

    iget-wide v8, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->v:J

    long-to-float v8, v8

    const/high16 v9, 0x447a

    div-float/2addr v8, v9

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->i(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)F

    move-result v9

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->j(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)F

    move-result v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 574
    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->D:[F

    mul-int/lit8 v7, v2, 0x4

    add-int/lit8 v7, v7, 0x1

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->j(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)F

    move-result v8

    aput v8, v6, v7

    .line 575
    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->D:[F

    mul-int/lit8 v7, v2, 0x4

    add-int/lit8 v7, v7, 0x2

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->k(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)F

    move-result v0

    aput v0, v6, v7

    .line 576
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->D:[F

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x3

    aput v5, v0, v6

    .line 578
    add-int/lit8 v0, v2, 0x1

    .line 581
    const/16 v2, 0x28

    if-eq v0, v2, :cond_6

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_7

    .line 582
    :cond_6
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->D:[F

    const/4 v6, 0x0

    const/16 v7, 0xa0

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform4fv(Ljava/lang/String;[FII)V

    .line 583
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->B:[F

    const/4 v6, 0x0

    const/16 v7, 0xa0

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform4fv(Ljava/lang/String;[FII)V

    .line 584
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->C:[F

    const/4 v6, 0x0

    const/16 v7, 0xa0

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform4fv(Ljava/lang/String;[FII)V

    .line 586
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v5, 0x4

    mul-int/lit16 v0, v0, 0x240

    const/16 v6, 0x1403

    const/4 v7, 0x0

    invoke-interface {v2, v5, v0, v6, v7}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIII)V

    .line 588
    const/4 v0, 0x0

    .line 551
    :cond_7
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto/16 :goto_2

    .line 593
    :cond_8
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->t:Lcom/nianticproject/ingress/common/j/an;

    invoke-virtual {v0, v4}, Lcom/nianticproject/ingress/common/j/an;->b(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 594
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 596
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {v3, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 597
    const/16 v0, 0xb44

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 598
    const/16 v0, 0xbe2

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 599
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 602
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->g:Lcom/nianticproject/ingress/common/t/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/b;->c()V

    .line 603
    return-void

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 15
    .parameter

    .prologue
    .line 314
    :try_start_0
    const-string/jumbo v1, "ParticleVisuals.setGameState"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 315
    const/4 v2, 0x0

    .line 317
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/nianticproject/ingress/common/model/GameState;->changedEntities:Lcom/google/a/c/du;

    invoke-virtual {v1}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    move-object v10, v0

    .line 318
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v10, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 319
    if-eqz v1, :cond_8

    .line 320
    const-class v2, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v10, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v3

    .line 321
    invoke-static {v10}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v8

    .line 325
    const/4 v6, 0x0

    .line 326
    const/4 v5, 0x0

    .line 327
    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedResonatorGuids()Lcom/google/a/c/dh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/c/dh;->d_()Lcom/google/a/c/ct;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/c/ct;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 328
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nianticproject/ingress/common/model/GameState;->gameEntities:Lcom/google/a/c/dh;

    invoke-virtual {v4, v2}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/gameentity/f;

    .line 329
    if-eqz v2, :cond_7

    .line 330
    const-class v4, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    invoke-interface {v2, v4}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v4

    check-cast v4, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    .line 331
    if-eqz v4, :cond_7

    .line 332
    const-class v9, Lcom/nianticproject/ingress/gameentity/components/Energy;

    invoke-interface {v2, v9}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/gameentity/components/Energy;

    .line 333
    if-eqz v2, :cond_7

    .line 334
    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/components/Energy;->getTotal()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v6, v2

    .line 335
    invoke-interface {v4}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getEnergyCapacity()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v5

    move v4, v6

    :goto_2
    move v5, v2

    move v6, v4

    .line 339
    goto :goto_1

    .line 341
    :cond_0
    const/high16 v2, 0x3f80

    .line 342
    const/4 v4, 0x0

    cmpl-float v4, v5, v4

    if-eqz v4, :cond_6

    .line 343
    div-float v2, v6, v5

    move v4, v2

    .line 346
    :goto_3
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->h:Ljava/util/SortedMap;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v5

    .line 347
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->h:Ljava/util/SortedMap;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v6

    .line 350
    invoke-interface {v5}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 351
    invoke-interface {v6}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v8, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->a(Lcom/nianticproject/ingress/shared/ai;F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    .line 379
    :goto_4
    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntityGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x4f00

    div-float/2addr v2, v5

    .line 380
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 382
    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLevel()I

    move-result v2

    .line 384
    mul-int/lit8 v1, v2, 0x54

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v1, 0xc

    .line 386
    const v1, 0x3faccccd

    int-to-float v6, v2

    const v7, 0x3f266666

    mul-float/2addr v6, v7

    const/high16 v7, 0x4100

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    .line 387
    const/high16 v1, 0x40f0

    int-to-float v7, v2

    const/high16 v12, 0x4148

    mul-float/2addr v7, v12

    const/high16 v12, 0x4100

    div-float/2addr v7, v12

    add-float/2addr v7, v1

    .line 389
    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    if-ne v8, v1, :cond_1

    .line 390
    const/4 v5, 0x2

    .line 391
    const v6, 0x3f19999a

    .line 394
    :cond_1
    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/bm;

    const/high16 v8, 0x41f0

    int-to-float v2, v2

    const/high16 v12, 0x4268

    mul-float/2addr v2, v12

    const/high16 v12, 0x4100

    div-float/2addr v2, v12

    add-float/2addr v8, v2

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/bj;Lcom/google/a/d/u;Lcom/badlogic/gdx/graphics/Color;IFFFF)V

    .line 403
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->w:Ljava/util/Map;

    invoke-interface {v10}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const/4 v1, 0x1

    :goto_5
    move v2, v1

    .line 406
    goto/16 :goto_0

    .line 352
    :cond_2
    invoke-interface {v6}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 353
    invoke-interface {v5}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v8, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->a(Lcom/nianticproject/ingress/shared/ai;F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    goto :goto_4

    .line 356
    :cond_3
    invoke-interface {v5}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v8, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->a(Lcom/nianticproject/ingress/shared/ai;F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    .line 357
    invoke-interface {v6}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v8, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->a(Lcom/nianticproject/ingress/shared/ai;F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    .line 358
    invoke-interface {v5}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v5, v2, v4

    .line 359
    invoke-interface {v6}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v2, v4, v2

    .line 360
    add-float v6, v5, v2

    .line 362
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    iget v12, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v12, v2

    iget v13, v9, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v13, v5

    add-float/2addr v12, v13

    div-float/2addr v12, v6

    iget v13, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v13, v2

    iget v14, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v14, v5

    add-float/2addr v13, v14

    div-float/2addr v13, v6

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v2, v7

    iget v7, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v5, v7

    add-float/2addr v2, v5

    div-float/2addr v2, v6

    const/high16 v5, 0x3f80

    invoke-direct {v4, v12, v13, v2, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    .line 412
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v1

    .line 408
    :cond_4
    if-eqz v2, :cond_5

    .line 409
    :try_start_1
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    :cond_5
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 413
    return-void

    :cond_6
    move v4, v2

    goto/16 :goto_3

    :cond_7
    move v2, v5

    move v4, v6

    goto/16 :goto_2

    :cond_8
    move v1, v2

    goto/16 :goto_5
.end method

.method public final a(Ljava/util/Set;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 438
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->w:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 440
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 441
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->b()V

    .line 443
    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 682
    const/4 v0, 0x1

    return v0
.end method

.method public final a(F)Z
    .locals 4
    .parameter

    .prologue
    .line 447
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->v:J

    const/high16 v2, 0x447a

    mul-float/2addr v2, p1

    float-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->v:J

    .line 449
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->r:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/fp;->a()Lcom/google/a/d/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->b()V

    .line 453
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->t:Lcom/nianticproject/ingress/common/j/an;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/an;->dispose()V

    .line 688
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->u:Lcom/nianticproject/ingress/common/j/am;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/am;->dispose()V

    .line 689
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->s:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bc;->dispose()V

    .line 690
    return-void
.end method
