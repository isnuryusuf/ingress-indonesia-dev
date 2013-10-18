.class public Lcom/nianticproject/ingress/common/scanner/visuals/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;
.implements Lcom/nianticproject/ingress/common/j/au;
.implements Lcom/nianticproject/ingress/common/j/o;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static final b:Lcom/nianticproject/ingress/common/t/b;

.field private static final c:Lcom/nianticproject/ingress/common/t/b;

.field private static final e:[F

.field private static final f:[F


# instance fields
.field private d:Ljava/lang/String;

.field private final g:Lcom/nianticproject/ingress/common/w/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nianticproject/ingress/common/w/ab",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/visuals/bh;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/badlogic/gdx/math/Matrix4;

.field private final i:Lcom/badlogic/gdx/math/Vector3;

.field private final j:Lcom/badlogic/gdx/math/Vector2;

.field private final k:Lcom/nianticproject/ingress/common/scanner/fp;

.field private final l:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

.field private final m:Lcom/nianticproject/ingress/common/j/an;

.field private final n:Lcom/nianticproject/ingress/common/j/am;

.field private o:J

.field private final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/scanner/visuals/bh;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/google/a/c/jb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/jb",
            "<",
            "Ljava/lang/Long;",
            "Lcom/nianticproject/ingress/common/scanner/visuals/bh;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/visuals/bh;",
            ">;"
        }
    .end annotation
.end field

.field private final t:La/a/a/a/b/bl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/b/bl",
            "<[F>;"
        }
    .end annotation
.end field

.field private final u:La/a/a/a/b/ag;

.field private final v:La/a/a/a/b/bl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/b/bl",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field private final w:La/a/a/a/b/bl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/b/bl",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/eo;",
            ">;"
        }
    .end annotation
.end field

.field private x:La/a/a/a/b/bw;

.field private y:La/a/a/a/b/cl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 77
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/scanner/visuals/be;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 79
    const-string/jumbo v0, "Particle XM Update"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->b:Lcom/nianticproject/ingress/common/t/b;

    .line 80
    const-string/jumbo v0, "Particle XM Render"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->c:Lcom/nianticproject/ingress/common/t/b;

    .line 266
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->e:[F

    .line 267
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->f:[F

    return-void

    .line 266
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 267
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/fp;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x3

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    const-string/jumbo v0, "u_globParams"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->d:Ljava/lang/String;

    .line 290
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/bf;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/scanner/visuals/bf;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/be;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->g:Lcom/nianticproject/ingress/common/w/ab;

    .line 304
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->h:Lcom/badlogic/gdx/math/Matrix4;

    .line 305
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->i:Lcom/badlogic/gdx/math/Vector3;

    .line 306
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->j:Lcom/badlogic/gdx/math/Vector2;

    .line 313
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->o:J

    .line 320
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->p:Ljava/util/Map;

    .line 323
    invoke-static {}, Lcom/google/a/c/cm;->i()Lcom/google/a/c/cm;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->q:Lcom/google/a/c/jb;

    .line 326
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->r:Ljava/util/Set;

    .line 329
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->s:Ljava/util/Set;

    .line 332
    new-instance v0, La/a/a/a/b/bl;

    invoke-direct {v0, v1}, La/a/a/a/b/bl;-><init>(B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->t:La/a/a/a/b/bl;

    .line 335
    new-instance v0, La/a/a/a/b/ag;

    invoke-direct {v0, v1}, La/a/a/a/b/ag;-><init>(B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->u:La/a/a/a/b/ag;

    .line 338
    new-instance v0, La/a/a/a/b/bl;

    invoke-direct {v0, v1}, La/a/a/a/b/bl;-><init>(B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->v:La/a/a/a/b/bl;

    .line 342
    new-instance v0, La/a/a/a/b/bl;

    invoke-direct {v0, v1}, La/a/a/a/b/bl;-><init>(B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->w:La/a/a/a/b/bl;

    .line 454
    new-instance v0, La/a/a/a/b/cj;

    invoke-direct {v0, v1}, La/a/a/a/b/cj;-><init>(B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->y:La/a/a/a/b/cl;

    .line 349
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/fp;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->k:Lcom/nianticproject/ingress/common/scanner/fp;

    .line 350
    new-instance v0, Lcom/nianticproject/ingress/common/j/an;

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/be;->c()[F

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v4, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v5, "a_position"

    invoke-direct {v4, v1, v6, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v4, v3, v1

    new-instance v4, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v5, "a_texCoord0"

    invoke-direct {v4, v6, v9, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v4, v3, v7

    new-instance v4, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v5, "a_scale"

    invoke-direct {v4, v8, v7, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v4, v3, v9

    new-instance v4, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v5, "a_speed"

    invoke-direct {v4, v8, v7, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v4, v3, v6

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

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->m:Lcom/nianticproject/ingress/common/j/an;

    .line 359
    new-instance v0, Lcom/nianticproject/ingress/common/j/am;

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/be;->b()[S

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nianticproject/ingress/common/j/am;-><init>([S)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->n:Lcom/nianticproject/ingress/common/j/am;

    .line 361
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/bg;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bg;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/be;Lcom/nianticproject/ingress/common/scanner/fp;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->l:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    .line 372
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aO:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniforms()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v1, v2, v0

    .line 375
    const-string/jumbo v4, "[0]"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[0]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->d:Ljava/lang/String;

    .line 380
    :cond_0
    return-void

    .line 372
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a([FIFFFFFFF)I
    .locals 3
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
    .line 677
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 678
    add-int/lit8 v1, p1, 0x0

    aput p2, p0, v1

    .line 679
    add-int/lit8 v1, p1, 0x1

    aput p3, p0, v1

    .line 680
    add-int/lit8 v1, p1, 0x2

    aput p4, p0, v1

    .line 681
    add-int/lit8 v1, p1, 0x3

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/be;->e:[F

    aget v2, v2, v0

    aput v2, p0, v1

    .line 682
    add-int/lit8 v1, p1, 0x4

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/be;->f:[F

    aget v2, v2, v0

    aput v2, p0, v1

    .line 683
    add-int/lit8 v1, p1, 0x5

    aput p5, p0, v1

    .line 684
    add-int/lit8 v1, p1, 0x6

    aput p6, p0, v1

    .line 685
    add-int/lit8 v1, p1, 0x7

    aput p7, p0, v1

    .line 686
    add-int/lit8 v1, p1, 0x8

    aput p8, p0, v1

    .line 688
    add-int/lit8 p1, p1, 0x9

    .line 677
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    :cond_0
    return p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/be;)La/a/a/a/b/bl;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->t:La/a/a/a/b/bl;

    return-object v0
.end method

.method private a(JLcom/badlogic/gdx/math/Vector2;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 770
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->w:La/a/a/a/b/bl;

    invoke-virtual {v0, p1, p2}, La/a/a/a/b/bl;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/eo;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/eo;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->l:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/bc;->c()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 771
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/be;JLcom/badlogic/gdx/math/Vector2;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/scanner/visuals/be;->a(JLcom/badlogic/gdx/math/Vector2;)V

    return-void
.end method

.method private a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 607
    .line 610
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->u:La/a/a/a/b/ag;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, La/a/a/a/b/ag;->c(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->u:La/a/a/a/b/ag;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, La/a/a/a/b/ag;->d(J)J

    move-result-wide v0

    long-to-int v0, v0

    move v1, v0

    .line 623
    :goto_0
    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->b(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->w:La/a/a/a/b/bl;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, La/a/a/a/b/bl;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/eo;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/eo;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;Lcom/badlogic/gdx/math/Vector2;)V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->t:La/a/a/a/b/bl;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, La/a/a/a/b/bl;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 628
    const/16 v3, 0x168

    if-lt v1, v3, :cond_2

    .line 629
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Maximum globs %d reached, skipping rest."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    :goto_1
    return-void

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->t:La/a/a/a/b/bl;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)J

    move-result-wide v3

    const/16 v1, 0x5a0

    new-array v1, v1, [F

    invoke-virtual {v0, v3, v4, v1}, La/a/a/a/b/bl;->a(JLjava/lang/Object;)Ljava/lang/Object;

    .line 614
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 615
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->w:La/a/a/a/b/bl;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->k:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/nianticproject/ingress/common/q/c;->a(J)Lcom/nianticproject/ingress/common/q/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nianticproject/ingress/common/q/c;->e()Lcom/nianticproject/ingress/common/q/a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/nianticproject/ingress/common/q/a;)Lcom/nianticproject/ingress/common/scanner/eo;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, La/a/a/a/b/bl;->a(JLjava/lang/Object;)Ljava/lang/Object;

    .line 617
    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/be;->a(JLcom/badlogic/gdx/math/Vector2;)V

    .line 618
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->v:La/a/a/a/b/bl;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v0}, La/a/a/a/b/bl;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    goto :goto_0

    .line 633
    :cond_2
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x0

    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->c(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)F

    move-result v3

    aput v3, v0, v2

    .line 636
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->d(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)F

    move-result v3

    aput v3, v0, v2

    .line 637
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x2

    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->e(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)F

    move-result v3

    aput v3, v0, v2

    .line 640
    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v2, v2, 0x3

    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->f(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->g(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)F

    move-result v4

    add-float/2addr v3, v4

    aput v3, v0, v2

    .line 642
    invoke-static {p1, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;I)I

    .line 644
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->u:La/a/a/a/b/ag;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)J

    move-result-wide v2

    add-int/lit8 v1, v1, 0x1

    int-to-long v4, v1

    invoke-virtual {v0, v2, v3, v4, v5}, La/a/a/a/b/ag;->a(JJ)J

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 440
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;

    .line 441
    if-eqz v0, :cond_0

    .line 442
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->s:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 443
    if-eqz p2, :cond_1

    .line 444
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->c()V

    .line 450
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 445
    :cond_1
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 446
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->e()V

    goto :goto_0

    .line 450
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/visuals/be;)La/a/a/a/b/bl;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->v:La/a/a/a/b/bl;

    return-object v0
.end method

.method private static b()[S
    .locals 10

    .prologue
    const/16 v9, 0x1950

    const/4 v8, 0x6

    const/4 v1, 0x0

    .line 648
    new-array v4, v9, [S

    .line 649
    new-array v5, v8, [S

    fill-array-data v5, :array_0

    move v2, v1

    move v3, v1

    .line 652
    :goto_0
    if-ge v2, v9, :cond_1

    move v0, v1

    .line 654
    :goto_1
    if-ge v0, v8, :cond_0

    .line 655
    add-int v6, v2, v0

    aget-short v7, v5, v0

    add-int/2addr v7, v3

    int-to-short v7, v7

    aput-short v7, v4, v6

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 657
    :cond_0
    add-int/lit8 v3, v3, 0x4

    .line 653
    add-int/lit8 v0, v2, 0x6

    move v2, v0

    goto :goto_0

    .line 659
    :cond_1
    return-object v4

    .line 649
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

.method private static c()[F
    .locals 16

    .prologue
    .line 694
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 696
    const v0, 0x97e0

    new-array v0, v0, [F

    .line 698
    const/4 v2, 0x0

    .line 700
    const/16 v1, 0x9

    new-array v11, v1, [F

    .line 701
    const/16 v1, 0x9

    new-array v12, v1, [F

    .line 702
    const/16 v1, 0x9

    new-array v13, v1, [F

    .line 704
    const/16 v1, 0x9

    new-array v14, v1, [F

    .line 705
    const/16 v1, 0x9

    new-array v15, v1, [F

    .line 707
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x9

    if-ge v1, v3, :cond_0

    .line 708
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v11, v1

    .line 709
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x3fd999999999999aL

    mul-double/2addr v3, v5

    const-wide v5, 0x3fc999999999999aL

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v12, v1

    .line 710
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v13, v1

    .line 712
    const-wide/high16 v3, 0x4012

    const-wide/high16 v5, 0x3fe0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    mul-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v14, v1

    .line 713
    const-wide/high16 v3, 0x4004

    const-wide/high16 v5, 0x3fe0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    mul-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v15, v1

    .line 707
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 716
    :cond_0
    const/4 v1, 0x0

    move v10, v1

    :goto_1
    const/16 v1, 0x78

    if-ge v10, v1, :cond_2

    .line 717
    const/4 v1, 0x0

    move v9, v1

    move v1, v2

    :goto_2
    const/16 v2, 0x9

    if-ge v9, v2, :cond_1

    .line 718
    aget v2, v11, v9

    aget v3, v12, v9

    aget v4, v13, v9

    aget v5, v15, v9

    aget v6, v14, v9

    int-to-float v7, v10

    int-to-float v8, v9

    invoke-static/range {v0 .. v8}, Lcom/nianticproject/ingress/common/scanner/visuals/be;->a([FIFFFFFFF)I

    move-result v2

    .line 717
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move v1, v2

    goto :goto_2

    .line 716
    :cond_1
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v2, v1

    goto :goto_1

    .line 722
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a(La/a/a/a/b/bw;)V
    .locals 0
    .parameter

    .prologue
    .line 766
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->x:La/a/a/a/b/bw;

    .line 767
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 509
    :try_start_0
    const-string/jumbo v0, "ParticleEnergyGlobVisuals.draw"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 510
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->c:Lcom/nianticproject/ingress/common/t/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/b;->b()V

    .line 512
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 513
    const/16 v0, 0xb44

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 514
    const/16 v0, 0xbe2

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 516
    const/16 v0, 0x302

    const/4 v1, 0x1

    invoke-interface {v4, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 520
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 522
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->i:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->k()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 524
    sget-object v5, Lcom/nianticproject/ingress/common/scanner/ag;->aO:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 526
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->aX:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 528
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 530
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->n:Lcom/nianticproject/ingress/common/j/am;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/am;->a()V

    .line 531
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->m:Lcom/nianticproject/ingress/common/j/an;

    invoke-virtual {v0, v5}, Lcom/nianticproject/ingress/common/j/an;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 533
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->h:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 534
    const-string/jumbo v0, "u_modelViewProject"

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->h:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v5, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 535
    const-string/jumbo v0, "u_texture"

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 536
    const-string/jumbo v0, "u_timeSec"

    iget-wide v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->o:J

    long-to-float v1, v1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    invoke-static {v1}, La;->ak(F)F

    move-result v1

    invoke-virtual {v5, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 539
    const/high16 v0, 0x4348

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->a()F

    move-result v1

    div-float/2addr v0, v1

    .line 540
    const-string/jumbo v1, "u_scale"

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->b()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v5, v1, v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 543
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->x:La/a/a/a/b/bw;

    invoke-virtual {v0}, La/a/a/a/b/bw;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->x:La/a/a/a/b/bw;

    invoke-virtual {v0, v3}, La/a/a/a/b/bw;->g(I)J

    move-result-wide v6

    .line 546
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->u:La/a/a/a/b/ag;

    invoke-virtual {v0, v6, v7}, La/a/a/a/b/ag;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->j:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->l:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/bc;->c()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 548
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->j:Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->v:La/a/a/a/b/bl;

    invoke-virtual {v0, v6, v7}, La/a/a/a/b/bl;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 549
    const-string/jumbo v0, "u_mapCenter"

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->j:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v5, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector2;)V

    .line 551
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->u:La/a/a/a/b/ag;

    invoke-virtual {v0, v6, v7}, La/a/a/a/b/ag;->d(J)J

    move-result-wide v0

    long-to-int v8, v0

    .line 552
    const/4 v0, 0x0

    move v2, v0

    .line 554
    :goto_1
    if-ge v2, v8, :cond_0

    .line 555
    const/16 v0, 0x78

    .line 556
    sub-int v1, v8, v2

    const/16 v9, 0x78

    if-ge v1, v9, :cond_2

    .line 557
    sub-int v0, v8, v2

    move v1, v0

    .line 560
    :goto_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->t:La/a/a/a/b/bl;

    invoke-virtual {v0, v6, v7}, La/a/a/a/b/bl;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 562
    iget-object v9, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->d:Ljava/lang/String;

    mul-int/lit8 v10, v2, 0x4

    const/16 v11, 0x1e0

    invoke-virtual {v5, v9, v0, v10, v11}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform4fv(Ljava/lang/String;[FII)V

    .line 564
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v9, 0x4

    mul-int/lit8 v10, v1, 0x36

    const/16 v11, 0x1403

    const/4 v12, 0x0

    invoke-interface {v0, v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIII)V

    .line 567
    add-int v0, v2, v1

    move v2, v0

    .line 568
    goto :goto_1

    .line 544
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->m:Lcom/nianticproject/ingress/common/j/an;

    invoke-virtual {v0, v5}, Lcom/nianticproject/ingress/common/j/an;->b(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 574
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 576
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {v4, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 577
    const/16 v0, 0xb44

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 578
    const/16 v0, 0xbe2

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 579
    const/4 v0, 0x1

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 582
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->c:Lcom/nianticproject/ingress/common/t/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/b;->c()V

    .line 583
    return-void

    .line 581
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 582
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/be;->c:Lcom/nianticproject/ingress/common/t/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/b;->c()V

    throw v0

    :cond_2
    move v1, v0

    goto :goto_2
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 8
    .parameter

    .prologue
    .line 388
    :try_start_0
    const-string/jumbo v0, "ParticleEnergyGlobVisuals.setGameState"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 390
    iget-object v0, p1, Lcom/nianticproject/ingress/common/model/GameState;->disappeared:Lcom/google/a/c/du;

    invoke-virtual {v0}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 394
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/be;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->r:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 400
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/nianticproject/ingress/common/model/GameState;->changedEntities:Lcom/google/a/c/du;

    invoke-virtual {v0}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 401
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v3

    .line 402
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->r:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 403
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/EnergyGlob;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/EnergyGlob;

    .line 408
    const-class v4, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v0, v4}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    .line 409
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/EnergyGlob;->getTotal()I

    move-result v1

    if-nez v1, :cond_4

    .line 410
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/be;->a(Ljava/lang/String;Z)Z

    goto :goto_1

    .line 415
    :cond_4
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->p:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 416
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 418
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->g:Lcom/nianticproject/ingress/common/w/ab;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/w/ab;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/scanner/visuals/bh;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->k:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getIndexPoint()Lcom/google/a/d/u;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/nianticproject/ingress/common/scanner/fp;->b(Lcom/google/a/d/u;)Lcom/nianticproject/ingress/common/scanner/eo;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4018

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v1, v0, v4, v5}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->a(Lcom/nianticproject/ingress/common/scanner/eo;IF)Lcom/nianticproject/ingress/common/scanner/visuals/bh;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->p:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->s:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->q:Lcom/google/a/c/jb;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lcom/google/a/c/jb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 426
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/be;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 431
    :cond_5
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 432
    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 739
    const/4 v0, 0x0

    .line 740
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 741
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->r:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 742
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/nianticproject/ingress/common/scanner/visuals/be;->a(Ljava/lang/String;Z)Z

    move-result v3

    or-int/2addr v1, v3

    .line 754
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->r:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    move v0, v1

    move v1, v0

    goto :goto_0

    .line 757
    :cond_1
    if-eqz v1, :cond_2

    .line 759
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->p()V

    .line 761
    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x1

    return v0
.end method

.method public final a(F)Z
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x1

    const/high16 v8, 0x3f00

    const/4 v1, 0x0

    .line 459
    :try_start_0
    const-string/jumbo v0, "ParticleEnergyGlobVisuals.update"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 460
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->b:Lcom/nianticproject/ingress/common/t/b;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/b;->b()V

    .line 462
    iget-wide v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->o:J

    const/high16 v0, 0x447a

    mul-float/2addr v0, p1

    float-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->o:J

    .line 465
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 466
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->y:La/a/a/a/b/cl;

    invoke-interface {v0}, La/a/a/a/b/cl;->clear()V

    move v4, v1

    .line 470
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;

    .line 472
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->b()F

    move-result v2

    .line 473
    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->a(F)Lcom/nianticproject/ingress/common/scanner/visuals/bi;

    move-result-object v6

    .line 474
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->b()F

    move-result v7

    .line 475
    cmpg-float v2, v2, v8

    if-gez v2, :cond_1

    cmpl-float v2, v7, v8

    if-ltz v2, :cond_1

    move v2, v3

    :goto_1
    or-int/2addr v2, v4

    .line 477
    sget-object v4, Lcom/nianticproject/ingress/common/scanner/visuals/bi;->a:Lcom/nianticproject/ingress/common/scanner/visuals/bi;

    if-eq v6, v4, :cond_0

    .line 479
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 481
    sget-object v4, Lcom/nianticproject/ingress/common/scanner/visuals/bi;->c:Lcom/nianticproject/ingress/common/scanner/visuals/bi;

    if-ne v6, v4, :cond_0

    .line 483
    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->q:Lcom/google/a/c/jb;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6, v0}, Lcom/google/a/c/jb;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 484
    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->y:La/a/a/a/b/cl;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bh;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)J

    move-result-wide v6

    invoke-interface {v4, v6, v7}, La/a/a/a/b/cl;->d(J)Z

    .line 485
    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->g:Lcom/nianticproject/ingress/common/w/ab;

    invoke-virtual {v4, v0}, Lcom/nianticproject/ingress/common/w/ab;->b(Ljava/lang/Object;)V

    :cond_0
    move v4, v2

    .line 489
    goto :goto_0

    :cond_1
    move v2, v1

    .line 475
    goto :goto_1

    .line 491
    :cond_2
    if-eqz v4, :cond_3

    .line 492
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->q()V

    .line 495
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->y:La/a/a/a/b/cl;

    invoke-interface {v0}, La/a/a/a/b/cl;->e()[J

    move-result-object v2

    array-length v4, v2

    :goto_2
    if-ge v1, v4, :cond_7

    aget-wide v5, v2, v1

    .line 496
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->q:Lcom/google/a/c/jb;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/google/a/c/jb;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->u:La/a/a/a/b/ag;

    invoke-virtual {v0, v5, v6}, La/a/a/a/b/ag;->c(J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->u:La/a/a/a/b/ag;

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, La/a/a/a/b/ag;->a(JJ)J

    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->q:Lcom/google/a/c/jb;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/google/a/c/jb;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/bh;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/be;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 501
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 502
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/be;->b:Lcom/nianticproject/ingress/common/t/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/b;->c()V

    throw v0

    .line 496
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->u:La/a/a/a/b/ag;

    invoke-virtual {v0, v5, v6}, La/a/a/a/b/ag;->a(J)J

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->t:La/a/a/a/b/bl;

    invoke-virtual {v0, v5, v6}, La/a/a/a/b/bl;->a(J)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->v:La/a/a/a/b/bl;

    invoke-virtual {v0, v5, v6}, La/a/a/a/b/bl;->a(J)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->w:La/a/a/a/b/bl;

    invoke-virtual {v0, v5, v6}, La/a/a/a/b/bl;->a(J)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 499
    :cond_7
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 502
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->b:Lcom/nianticproject/ingress/common/t/b;

    invoke-static {}, Lcom/nianticproject/ingress/common/t/b;->c()V

    return v3
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->m:Lcom/nianticproject/ingress/common/j/an;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/an;->dispose()V

    .line 733
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->n:Lcom/nianticproject/ingress/common/j/am;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/am;->dispose()V

    .line 734
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->l:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bc;->dispose()V

    .line 735
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/be;->g:Lcom/nianticproject/ingress/common/w/ab;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/ab;->c()V

    .line 736
    return-void
.end method
