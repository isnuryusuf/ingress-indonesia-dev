.class public Lcom/nianticproject/ingress/common/k/s;
.super Lcom/nianticproject/ingress/common/ui/a;
.source "SourceFile"


# static fields
.field public static final a:[Lcom/nianticproject/ingress/common/c/bs;

.field private static final b:Lcom/nianticproject/ingress/common/w/aa;

.field private static c:F

.field private static d:F

.field private static final e:Lcom/badlogic/gdx/math/Vector3;

.field private static final f:Lcom/badlogic/gdx/math/Vector3;

.field private static final g:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field private final A:Lcom/nianticproject/ingress/common/k/a;

.field private final B:Lcom/nianticproject/ingress/common/k/q;

.field private final C:Lcom/nianticproject/ingress/common/k/z;

.field private final D:Lcom/badlogic/gdx/math/Vector3;

.field private final E:Lcom/badlogic/gdx/math/Vector3;

.field private final F:Lcom/nianticproject/ingress/common/k/y;

.field private G:Lcom/nianticproject/ingress/common/k/ab;

.field private H:Lcom/nianticproject/ingress/common/ui/elements/a;

.field private I:Z

.field private J:Lcom/nianticproject/ingress/common/c/bn;

.field private final h:Lcom/nianticproject/ingress/common/j/ac;

.field private final i:Lcom/nianticproject/ingress/common/model/k;

.field private final j:Lcom/nianticproject/ingress/common/model/a/e;

.field private final k:Lcom/nianticproject/ingress/common/c/e;

.field private final l:Z

.field private m:F

.field private n:F

.field private o:F

.field private p:Z

.field private q:Z

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:Lcom/badlogic/gdx/math/Vector3;

.field private y:Z

.field private final z:Lcom/nianticproject/ingress/common/model/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/k/s;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/k/s;->b:Lcom/nianticproject/ingress/common/w/aa;

    .line 125
    const v0, 0x3e19999a

    sput v0, Lcom/nianticproject/ingress/common/k/s;->c:F

    .line 129
    const v0, 0x3ecccccd

    sput v0, Lcom/nianticproject/ingress/common/k/s;->d:F

    .line 153
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, 0x40a0

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/k/s;->e:Lcom/badlogic/gdx/math/Vector3;

    .line 154
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/k/s;->f:Lcom/badlogic/gdx/math/Vector3;

    .line 155
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v1, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/k/s;->g:Lcom/badlogic/gdx/math/Vector3;

    .line 179
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nianticproject/ingress/common/c/bs;

    const/4 v1, 0x0

    sget-object v2, Lcom/nianticproject/ingress/common/c/bs;->aY:Lcom/nianticproject/ingress/common/c/bs;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nianticproject/ingress/common/c/bs;->bb:Lcom/nianticproject/ingress/common/c/bs;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nianticproject/ingress/common/c/bs;->bc:Lcom/nianticproject/ingress/common/c/bs;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nianticproject/ingress/common/c/bs;->aZ:Lcom/nianticproject/ingress/common/c/bs;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/common/k/s;->a:[Lcom/nianticproject/ingress/common/c/bs;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/c/ak;Lcom/nianticproject/ingress/common/model/a/e;ZLcom/nianticproject/ingress/common/k/y;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 279
    const-string/jumbo v0, "Space2FaceActivity"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/a;-><init>(Ljava/lang/String;)V

    .line 231
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->x:Lcom/badlogic/gdx/math/Vector3;

    .line 238
    new-instance v0, Lcom/nianticproject/ingress/common/k/t;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/k/t;-><init>(Lcom/nianticproject/ingress/common/k/s;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->z:Lcom/nianticproject/ingress/common/model/l;

    .line 265
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->D:Lcom/badlogic/gdx/math/Vector3;

    .line 266
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->E:Lcom/badlogic/gdx/math/Vector3;

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/k/s;->I:Z

    .line 280
    iput-object p1, p0, Lcom/nianticproject/ingress/common/k/s;->i:Lcom/nianticproject/ingress/common/model/k;

    .line 281
    iput-object p3, p0, Lcom/nianticproject/ingress/common/k/s;->j:Lcom/nianticproject/ingress/common/model/a/e;

    .line 282
    iput-boolean p4, p0, Lcom/nianticproject/ingress/common/k/s;->l:Z

    .line 283
    iput-object p5, p0, Lcom/nianticproject/ingress/common/k/s;->F:Lcom/nianticproject/ingress/common/k/y;

    .line 284
    new-instance v0, Lcom/nianticproject/ingress/common/k/z;

    invoke-direct {v0, p2}, Lcom/nianticproject/ingress/common/k/z;-><init>(Lcom/nianticproject/ingress/common/c/ak;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->C:Lcom/nianticproject/ingress/common/k/z;

    .line 286
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->k:Lcom/nianticproject/ingress/common/c/e;

    .line 287
    new-instance v0, Lcom/nianticproject/ingress/common/j/ac;

    sget-object v1, Lcom/nianticproject/ingress/common/k/s;->e:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/nianticproject/ingress/common/k/s;->f:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/nianticproject/ingress/common/k/s;->g:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/j/ac;-><init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->h:Lcom/nianticproject/ingress/common/j/ac;

    .line 288
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->h:Lcom/nianticproject/ingress/common/j/ac;

    const/high16 v1, 0x4234

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/ac;->a(F)V

    .line 289
    new-instance v0, Lcom/nianticproject/ingress/common/k/q;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/k/q;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->B:Lcom/nianticproject/ingress/common/k/q;

    .line 290
    new-instance v0, Lcom/nianticproject/ingress/common/k/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/k/s;->h:Lcom/nianticproject/ingress/common/j/ac;

    new-instance v2, Lcom/nianticproject/ingress/common/k/u;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/common/k/u;-><init>(Lcom/nianticproject/ingress/common/k/s;)V

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/k/a;-><init>(Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/k/b;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->A:Lcom/nianticproject/ingress/common/k/a;

    .line 305
    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->f()Lcom/nianticproject/ingress/common/y;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    .line 307
    iget v0, v0, Lcom/nianticproject/ingress/common/y;->c:I

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/k/s;->n:F

    .line 310
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/k/s;)Lcom/nianticproject/ingress/common/model/l;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->z:Lcom/nianticproject/ingress/common/model/l;

    return-object v0
.end method

.method private a(FF)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x43b4

    const/4 v2, 0x0

    .line 486
    iput p1, p0, Lcom/nianticproject/ingress/common/k/s;->v:F

    .line 487
    iput p2, p0, Lcom/nianticproject/ingress/common/k/s;->w:F

    .line 490
    iget v0, p0, Lcom/nianticproject/ingress/common/k/s;->v:F

    iget v3, p0, Lcom/nianticproject/ingress/common/k/s;->w:F

    const/high16 v4, 0x3f80

    iget-object v5, p0, Lcom/nianticproject/ingress/common/k/s;->x:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {v0, v3, v4, v5}, Lcom/nianticproject/ingress/common/k/r;->a(FFFLcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 493
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/k/s;->q:Z

    if-eqz v0, :cond_0

    .line 514
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->k:Lcom/nianticproject/ingress/common/c/e;

    sget-object v3, Lcom/nianticproject/ingress/common/c/bs;->bc:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v3}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 500
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->B:Lcom/nianticproject/ingress/common/k/q;

    iget v3, p0, Lcom/nianticproject/ingress/common/k/s;->v:F

    iget v4, p0, Lcom/nianticproject/ingress/common/k/s;->w:F

    invoke-virtual {v0, v3, v4}, Lcom/nianticproject/ingress/common/k/q;->a(FF)V

    .line 503
    iget v0, p0, Lcom/nianticproject/ingress/common/k/s;->v:F

    iget v3, p0, Lcom/nianticproject/ingress/common/k/s;->m:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/nianticproject/ingress/common/k/s;->t:F

    .line 504
    iget v0, p0, Lcom/nianticproject/ingress/common/k/s;->w:F

    iget v3, p0, Lcom/nianticproject/ingress/common/k/s;->n:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/nianticproject/ingress/common/k/s;->u:F

    .line 507
    iget v3, p0, Lcom/nianticproject/ingress/common/k/s;->u:F

    iget v0, p0, Lcom/nianticproject/ingress/common/k/s;->u:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    move v0, v1

    :goto_1
    add-float/2addr v0, v3

    iput v0, p0, Lcom/nianticproject/ingress/common/k/s;->u:F

    .line 510
    iget v0, p0, Lcom/nianticproject/ingress/common/k/s;->u:F

    iget v3, p0, Lcom/nianticproject/ingress/common/k/s;->u:F

    const/high16 v4, 0x41f0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    :goto_2
    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/k/s;->u:F

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/k/s;->p:Z

    goto :goto_0

    :cond_1
    move v0, v2

    .line 507
    goto :goto_1

    :cond_2
    move v1, v2

    .line 510
    goto :goto_2
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/k/s;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/k/s;->a(FF)V

    return-void
.end method

.method public static a(Lcom/nianticproject/ingress/common/u/b;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 764
    :try_start_0
    const-string/jumbo v0, "Space2Face.downloadAndReplaceFactionTexture"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_1

    .line 770
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/globalRegionMap"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-interface {p0}, Lcom/nianticproject/ingress/common/u/b;->b()Lcom/nianticproject/ingress/shared/rpc/a;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nianticproject/ingress/common/z;->a(Ljava/net/URI;Lcom/nianticproject/ingress/shared/rpc/a;)Ljava/io/InputStream;

    move-result-object v0

    .line 773
    invoke-static {v0}, Lcom/nianticproject/ingress/common/k/c;->a(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_1 .. :try_end_1} :catch_0

    .line 785
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 786
    :goto_1
    return-void

    .line 777
    :catch_0
    move-exception v0

    .line 779
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 780
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 785
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 767
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 785
    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_1
.end method

.method private a(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 2
    .parameter

    .prologue
    .line 692
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->E:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 693
    sget v1, Lcom/nianticproject/ingress/common/k/s;->d:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(F)F
    .locals 6
    .parameter

    .prologue
    .line 741
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 744
    const-wide/high16 v0, 0x4018

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 745
    const-wide v1, 0x3ffe666660000000L

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 748
    float-to-double v2, p0

    const-wide/high16 v4, 0x4008

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 749
    sub-float/2addr v1, v0

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 752
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    .line 741
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/k/s;)Lcom/nianticproject/ingress/common/model/k;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->i:Lcom/nianticproject/ingress/common/model/k;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/k/s;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/k/s;->y:Z

    return-void
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/k/s;)F
    .locals 1
    .parameter

    .prologue
    .line 77
    iget v0, p0, Lcom/nianticproject/ingress/common/k/s;->v:F

    return v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/k/s;)F
    .locals 1
    .parameter

    .prologue
    .line 77
    iget v0, p0, Lcom/nianticproject/ingress/common/k/s;->w:F

    return v0
.end method

.method static synthetic f(Lcom/nianticproject/ingress/common/k/s;)Lcom/nianticproject/ingress/common/k/a;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->A:Lcom/nianticproject/ingress/common/k/a;

    return-object v0
.end method

.method static synthetic g(Lcom/nianticproject/ingress/common/k/s;)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/k/s;->y:Z

    return v0
.end method

.method static synthetic h(Lcom/nianticproject/ingress/common/k/s;)F
    .locals 1
    .parameter

    .prologue
    .line 77
    iget v0, p0, Lcom/nianticproject/ingress/common/k/s;->m:F

    return v0
.end method

.method static synthetic i(Lcom/nianticproject/ingress/common/k/s;)F
    .locals 1
    .parameter

    .prologue
    .line 77
    iget v0, p0, Lcom/nianticproject/ingress/common/k/s;->n:F

    return v0
.end method

.method static synthetic j(Lcom/nianticproject/ingress/common/k/s;)Lcom/nianticproject/ingress/common/c/e;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->k:Lcom/nianticproject/ingress/common/c/e;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/k/s;->q:Z

    if-eqz v0, :cond_0

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/k/s;->q:Z

    .line 567
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->H:Lcom/nianticproject/ingress/common/ui/elements/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/a;->e()V

    .line 570
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/common/k/ab;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/k/ab;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->G:Lcom/nianticproject/ingress/common/k/ab;

    .line 572
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/k/s;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/k/s;->G:Lcom/nianticproject/ingress/common/k/ab;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 574
    const-string/jumbo v0, "Scanning to acquire user location..."

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/k/s;->a(Ljava/lang/String;)V

    .line 579
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/k/s;->y:Z

    if-eqz v0, :cond_1

    .line 580
    iget v0, p0, Lcom/nianticproject/ingress/common/k/s;->v:F

    iget v1, p0, Lcom/nianticproject/ingress/common/k/s;->w:F

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/k/s;->a(FF)V

    .line 585
    :goto_0
    return-void

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->k:Lcom/nianticproject/ingress/common/c/e;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->aZ:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    goto :goto_0
.end method

.method private k()V
    .locals 5

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/k/s;->l:Z

    if-nez v0, :cond_1

    .line 726
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/nianticproject/ingress/common/s/c;->o()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    div-long/2addr v1, v3

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->ef:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, 0xa8

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->ei:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    new-instance v1, Lcom/nianticproject/ingress/common/c/bo;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/c/bo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/c/bo;->a(Ljava/util/Collection;)Lcom/nianticproject/ingress/common/c/bo;

    sget-object v0, Lcom/nianticproject/ingress/common/c/bp;->c:Lcom/nianticproject/ingress/common/c/bp;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/c/bo;->a(Lcom/nianticproject/ingress/common/c/bp;)Lcom/nianticproject/ingress/common/c/bo;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/c/bo;->a(Z)Lcom/nianticproject/ingress/common/c/bo;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->k:Lcom/nianticproject/ingress/common/c/e;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/c/bo;->f()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 728
    :cond_1
    return-void

    .line 726
    :cond_2
    const-wide/16 v3, 0x2

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->eg:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    long-to-int v3, v1

    int-to-double v3, v3

    invoke-static {v3, v4}, Lcom/nianticproject/ingress/common/w/ak;->a(D)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->eh:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, 0x48

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->ee:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-wide/16 v3, 0xc

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->ej:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->C:Lcom/nianticproject/ingress/common/k/z;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/k/z;->b()V

    .line 460
    return-void
.end method

.method public final a(F)V
    .locals 11
    .parameter

    .prologue
    const v10, 0x3c23d70a

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/high16 v8, 0x3f80

    .line 590
    :try_start_0
    const-string/jumbo v2, "Space2Face.onUpdate"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 591
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/k/s;->q:Z

    if-eqz v2, :cond_0

    .line 592
    iget-object v2, p0, Lcom/nianticproject/ingress/common/k/s;->A:Lcom/nianticproject/ingress/common/k/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/common/k/a;->a(Z)V

    .line 593
    iget v2, p0, Lcom/nianticproject/ingress/common/k/s;->s:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/nianticproject/ingress/common/k/s;->s:F

    .line 594
    iget v2, p0, Lcom/nianticproject/ingress/common/k/s;->s:F

    iget v3, p0, Lcom/nianticproject/ingress/common/k/s;->r:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 595
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/k/s;->j()V

    .line 598
    :cond_0
    iget-object v2, p0, Lcom/nianticproject/ingress/common/k/s;->B:Lcom/nianticproject/ingress/common/k/q;

    invoke-virtual {v2, p1}, Lcom/nianticproject/ingress/common/k/q;->a(F)Z

    .line 599
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/k/s;->q:Z

    if-nez v2, :cond_1

    .line 600
    iget-object v2, p0, Lcom/nianticproject/ingress/common/k/s;->A:Lcom/nianticproject/ingress/common/k/a;

    invoke-virtual {v2, p1}, Lcom/nianticproject/ingress/common/k/a;->a(F)V

    .line 601
    iget-object v2, p0, Lcom/nianticproject/ingress/common/k/s;->A:Lcom/nianticproject/ingress/common/k/a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/common/k/a;->a(Z)V

    .line 604
    :cond_1
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/k/s;->q:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/k/s;->I:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/k/s;->p:Z

    if-nez v2, :cond_3

    .line 610
    :cond_2
    const/high16 v2, 0x41f0

    mul-float/2addr v2, p1

    .line 612
    iget v3, p0, Lcom/nianticproject/ingress/common/k/s;->n:F

    add-float/2addr v2, v3

    const/high16 v3, 0x43b4

    rem-float/2addr v2, v3

    iput v2, p0, Lcom/nianticproject/ingress/common/k/s;->n:F

    .line 614
    iget v2, p0, Lcom/nianticproject/ingress/common/k/s;->m:F

    .line 615
    iget v3, p0, Lcom/nianticproject/ingress/common/k/s;->n:F

    .line 616
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/nianticproject/ingress/common/k/s;->b(F)F

    move-result v4

    move v5, v4

    move v4, v3

    move v3, v2

    .line 654
    :goto_0
    iget-object v6, p0, Lcom/nianticproject/ingress/common/k/s;->C:Lcom/nianticproject/ingress/common/k/z;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/k/s;->k:Lcom/nianticproject/ingress/common/c/e;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/c/e;->d()Lcom/nianticproject/ingress/common/c/f;

    move-result-object v2

    sget-object v7, Lcom/nianticproject/ingress/common/c/f;->c:Lcom/nianticproject/ingress/common/c/f;

    if-eq v2, v7, :cond_6

    move v2, v0

    :goto_1
    invoke-virtual {v6, p1, v2}, Lcom/nianticproject/ingress/common/k/z;->a(FZ)V

    .line 656
    const/high16 v2, 0x3f80

    iget-object v6, p0, Lcom/nianticproject/ingress/common/k/s;->E:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {v3, v4, v2, v6}, Lcom/nianticproject/ingress/common/k/r;->a(FFFLcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 657
    iget-object v2, p0, Lcom/nianticproject/ingress/common/k/s;->D:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/k/s;->E:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 658
    iget-object v3, p0, Lcom/nianticproject/ingress/common/k/s;->h:Lcom/nianticproject/ingress/common/j/ac;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/k/s;->D:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/nianticproject/ingress/common/k/s;->f:Lcom/badlogic/gdx/math/Vector3;

    sget-object v7, Lcom/nianticproject/ingress/common/k/s;->g:Lcom/badlogic/gdx/math/Vector3;

    cmpl-float v2, v5, v9

    if-lez v2, :cond_7

    move v2, v0

    :goto_2
    invoke-static {v2}, Lcom/google/a/a/an;->a(Z)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(F)Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4, v6, v7}, Lcom/nianticproject/ingress/common/j/ac;->a(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    sub-float v2, v5, v8

    mul-float/2addr v2, v10

    const v4, 0x3c23d70a

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v4, 0x3f866666

    mul-float/2addr v4, v5

    invoke-virtual {v3, v2, v4}, Lcom/nianticproject/ingress/common/j/ac;->a(FF)V

    .line 661
    const/high16 v2, 0x40a0

    div-float v2, v5, v2

    .line 662
    iget-object v3, p0, Lcom/nianticproject/ingress/common/k/s;->B:Lcom/nianticproject/ingress/common/k/q;

    invoke-virtual {v3, v2}, Lcom/nianticproject/ingress/common/k/q;->b(F)V

    .line 664
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/k/s;->y:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/nianticproject/ingress/common/k/s;->x:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p0, v2}, Lcom/nianticproject/ingress/common/k/s;->a(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 666
    :goto_3
    iget-object v1, p0, Lcom/nianticproject/ingress/common/k/s;->B:Lcom/nianticproject/ingress/common/k/q;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/k/q;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 669
    return-void

    .line 622
    :cond_3
    :try_start_1
    iget v2, p0, Lcom/nianticproject/ingress/common/k/s;->o:F

    add-float/2addr v2, p1

    const/high16 v3, 0x4020

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/nianticproject/ingress/common/k/s;->o:F

    iget v2, p0, Lcom/nianticproject/ingress/common/k/s;->o:F

    const/high16 v3, 0x4020

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-static {v2, v3, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v5

    .line 623
    cmpl-float v2, v5, v8

    if-ltz v2, :cond_5

    .line 624
    iget v2, p0, Lcom/nianticproject/ingress/common/k/s;->v:F

    .line 625
    iget v3, p0, Lcom/nianticproject/ingress/common/k/s;->w:F

    .line 626
    const/high16 v4, 0x3f80

    invoke-static {v4}, Lcom/nianticproject/ingress/common/k/s;->b(F)F

    move-result v4

    .line 628
    const/4 v6, 0x0

    iput v6, p0, Lcom/nianticproject/ingress/common/k/s;->o:F

    .line 629
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/nianticproject/ingress/common/k/s;->p:Z

    .line 630
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/k/s;->k()V

    .line 631
    iget-object v6, p0, Lcom/nianticproject/ingress/common/k/s;->F:Lcom/nianticproject/ingress/common/k/y;

    if-eqz v6, :cond_4

    .line 632
    iget-object v6, p0, Lcom/nianticproject/ingress/common/k/s;->F:Lcom/nianticproject/ingress/common/k/y;

    invoke-interface {v6}, Lcom/nianticproject/ingress/common/k/y;->a()V

    .line 651
    :cond_4
    :goto_4
    iget-object v6, p0, Lcom/nianticproject/ingress/common/k/s;->A:Lcom/nianticproject/ingress/common/k/a;

    sub-float v5, v8, v5

    invoke-virtual {v6, v5}, Lcom/nianticproject/ingress/common/k/a;->b(F)V

    move v5, v4

    move v4, v3

    move v3, v2

    goto/16 :goto_0

    .line 639
    :cond_5
    const v2, 0x3f666666

    div-float v2, v5, v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-static {v2, v3, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v2

    .line 642
    const v3, 0x40490fdb

    mul-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v6, 0x4008

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 644
    iget v3, p0, Lcom/nianticproject/ingress/common/k/s;->n:F

    iget v4, p0, Lcom/nianticproject/ingress/common/k/s;->u:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    .line 645
    iget v4, p0, Lcom/nianticproject/ingress/common/k/s;->m:F

    iget v6, p0, Lcom/nianticproject/ingress/common/k/s;->t:F

    mul-float/2addr v2, v6

    add-float/2addr v2, v4

    .line 646
    invoke-static {v5}, Lcom/nianticproject/ingress/common/k/s;->b(F)F

    move-result v4

    .line 648
    iget-object v6, p0, Lcom/nianticproject/ingress/common/k/s;->C:Lcom/nianticproject/ingress/common/k/z;

    invoke-virtual {v6}, Lcom/nianticproject/ingress/common/k/z;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 668
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_6
    move v2, v1

    .line 654
    goto/16 :goto_1

    :cond_7
    move v2, v1

    .line 658
    goto/16 :goto_2

    :cond_8
    move v0, v1

    .line 664
    goto/16 :goto_3
.end method

.method public final a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 421
    invoke-super {p0, p1, p2}, Lcom/nianticproject/ingress/common/ui/a;->a(II)V

    .line 422
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->h:Lcom/nianticproject/ingress/common/j/ac;

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/common/j/ac;->a(II)V

    .line 423
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->A:Lcom/nianticproject/ingress/common/k/a;

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/common/k/a;->a(II)V

    .line 424
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x447a

    .line 379
    :try_start_0
    const-string/jumbo v0, "Space2Face.onCreate"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->B:Lcom/nianticproject/ingress/common/k/q;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/k/q;->b()V

    .line 384
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->i:Lcom/nianticproject/ingress/common/model/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/k/s;->z:Lcom/nianticproject/ingress/common/model/l;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/model/l;)V

    .line 397
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->j:Lcom/nianticproject/ingress/common/model/a/e;

    sget-object v1, Lcom/nianticproject/ingress/common/model/a/i;->g:Lcom/nianticproject/ingress/common/model/a/i;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->j:Lcom/nianticproject/ingress/common/model/a/e;

    sget-object v1, Lcom/nianticproject/ingress/common/model/a/i;->g:Lcom/nianticproject/ingress/common/model/a/i;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/model/a/e;->a(Lcom/nianticproject/ingress/common/model/a/i;Z)V

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/k/s;->q:Z

    .line 402
    sget-object v0, Lcom/nianticproject/ingress/common/c/bs;->bb:Lcom/nianticproject/ingress/common/c/bs;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bs;->a()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->J:Lcom/nianticproject/ingress/common/c/bn;

    .line 403
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->J:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->r()Lcom/nianticproject/ingress/common/c/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bi;->a()Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/ba;->d()I

    move-result v0

    .line 404
    add-int/lit16 v1, v0, 0x1388

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, p0, Lcom/nianticproject/ingress/common/k/s;->r:F

    .line 405
    const/4 v1, 0x0

    iput v1, p0, Lcom/nianticproject/ingress/common/k/s;->s:F

    .line 406
    iget-object v1, p0, Lcom/nianticproject/ingress/common/k/s;->k:Lcom/nianticproject/ingress/common/c/e;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/k/s;->J:Lcom/nianticproject/ingress/common/c/bn;

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 409
    const-string/jumbo v1, "\n\n\n\n\nNot long ago at the CERN Lab, as a by-product of the Higgs-Boson research, a new substance called Exotic Matter was discovered.\n\nWhat was particularly disturbing about XM, is that it is believed to be ordered, intelligent data.\n\nFurther, in sufficient quantities it is capable of influencing, even controlling human thought.\n\nWhat is clear, is that whoever controls the XM, controls the destiny of mankind.\n\n\n\n\n\n\n\n\n\n\n"

    int-to-float v0, v0

    div-float/2addr v0, v3

    sget v2, Lcom/nianticproject/ingress/common/k/s;->c:F

    new-instance v3, Lcom/nianticproject/ingress/common/k/v;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/nianticproject/ingress/common/k/v;-><init>(Lcom/nianticproject/ingress/common/k/s;Ljava/lang/String;FF)V

    iput-object v3, p0, Lcom/nianticproject/ingress/common/k/s;->H:Lcom/nianticproject/ingress/common/ui/elements/a;

    .line 410
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/k/s;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/k/s;->H:Lcom/nianticproject/ingress/common/ui/elements/a;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/nianticproject/ingress/common/ui/ac;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :goto_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 416
    return-void

    .line 412
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/k/s;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 686
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->G:Lcom/nianticproject/ingress/common/k/ab;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->G:Lcom/nianticproject/ingress/common/k/ab;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/k/ab;->a(Ljava/lang/String;)V

    .line 689
    :cond_0
    return-void
.end method

.method public final b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/ui/a;->b(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 677
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 849
    const-string/jumbo v0, "Space2Face"

    return-object v0
.end method

.method public final e()V
    .locals 6

    .prologue
    .line 450
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->J:Lcom/nianticproject/ingress/common/c/bn;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->J:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->n()V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->C:Lcom/nianticproject/ingress/common/k/z;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/k/z;->c()V

    .line 454
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->C:Lcom/nianticproject/ingress/common/k/z;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/k/z;->a()V

    :try_start_0
    const-string/jumbo v0, "DisposeSpace2FaceAssets"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/nianticproject/ingress/common/k/s;->a:[Lcom/nianticproject/ingress/common/c/bs;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bs;->a()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/bi;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/k/s;->k:Lcom/nianticproject/ingress/common/c/e;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bi;->a()Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/ba;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-void
.end method

.method protected final f()Z
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x1

    return v0
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 465
    :try_start_0
    const-string/jumbo v0, "Space2Face.onRender"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->B:Lcom/nianticproject/ingress/common/k/q;

    sget-object v1, Lcom/nianticproject/ingress/common/w/z;->a:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/k/s;->h:Lcom/nianticproject/ingress/common/j/ac;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/k/q;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V

    .line 467
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->A:Lcom/nianticproject/ingress/common/k/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/k/a;->c()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/k/s;->a(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/s;->A:Lcom/nianticproject/ingress/common/k/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/k/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 472
    return-void

    .line 471
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/k/s;->I:Z

    .line 698
    return-void
.end method

.method public final l_()Z
    .locals 1

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/k/s;->I:Z

    if-nez v0, :cond_0

    .line 793
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/k/s;->k()V

    .line 795
    :cond_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/k/s;->I:Z

    return v0
.end method

.method public final q_()V
    .locals 0

    .prologue
    .line 681
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/a;->q_()V

    .line 682
    invoke-static {}, Lcom/nianticproject/ingress/common/k/c;->b()V

    .line 683
    return-void
.end method
