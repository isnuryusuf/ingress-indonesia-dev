.class final Lcom/nianticproject/ingress/common/scanner/fq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/eo;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/fp;

.field private final b:Lcom/badlogic/gdx/math/Vector2;

.field private final c:Lcom/google/a/d/u;

.field private final d:I

.field private final e:I

.field private f:Z


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/fp;Lcom/google/a/d/u;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/fq;->a:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fq;->b:Lcom/badlogic/gdx/math/Vector2;

    .line 242
    const-string/jumbo v0, "latLng"

    invoke-static {p2, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/u;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fq;->c:Lcom/google/a/d/u;

    .line 243
    invoke-virtual {p2}, Lcom/google/a/d/u;->e()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/q/b;->d(D)I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fq;->d:I

    .line 244
    invoke-virtual {p2}, Lcom/google/a/d/u;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/q/b;->e(D)I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fq;->e:I

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/fq;->f:Z

    .line 247
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/fq;->d()V

    .line 249
    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/nianticproject/ingress/common/scanner/fp;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/q/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/fq;->a:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fq;->b:Lcom/badlogic/gdx/math/Vector2;

    .line 253
    const-string/jumbo v0, "coord"

    invoke-static {p2, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/q/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/a;->c()Lcom/google/a/d/u;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fq;->c:Lcom/google/a/d/u;

    .line 254
    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/q/a;->a()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fq;->d:I

    .line 255
    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/q/a;->b()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fq;->e:I

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/fq;->f:Z

    .line 258
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/fq;->d()V

    .line 260
    invoke-static {p1}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/nianticproject/ingress/common/scanner/fp;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/fq;)V
    .locals 1
    .parameter

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/fq;->f:Z

    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/fq;->f:Z

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/fq;->f:Z

    .line 287
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fq;->a:Lcom/nianticproject/ingress/common/scanner/fp;

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/fq;->d:I

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/fq;->e:I

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/fq;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/scanner/fp;->a(IILcom/badlogic/gdx/math/Vector2;)V

    .line 289
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 293
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fq;->d:I

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/fq;->e:I

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/q/c;->a(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .parameter

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/fq;->d()V

    .line 266
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fq;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/fq;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/fq;->d()V

    .line 272
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fq;->b:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public final c()Lcom/google/a/d/u;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fq;->c:Lcom/google/a/d/u;

    return-object v0
.end method
