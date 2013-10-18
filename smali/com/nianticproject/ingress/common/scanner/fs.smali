.class final Lcom/nianticproject/ingress/common/scanner/fs;
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

.field private final f:F

.field private final g:F


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/fp;Lcom/google/a/d/u;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/fs;->a:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fs;->b:Lcom/badlogic/gdx/math/Vector2;

    .line 193
    const-string/jumbo v0, "latLng"

    invoke-static {p2, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/u;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fs;->c:Lcom/google/a/d/u;

    .line 194
    invoke-virtual {p2}, Lcom/google/a/d/u;->e()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/q/b;->d(D)I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fs;->d:I

    .line 195
    invoke-virtual {p2}, Lcom/google/a/d/u;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/q/b;->e(D)I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fs;->e:I

    .line 198
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fs;->d:I

    and-int/lit16 v0, v0, 0x1fff

    .line 199
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/fs;->e:I

    and-int/lit16 v1, v1, 0x1fff

    .line 201
    const-wide/high16 v2, 0x3ff0

    invoke-virtual {p2}, Lcom/google/a/d/u;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/nianticproject/ingress/common/q/b;->a(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    .line 202
    int-to-double v4, v0

    mul-double/2addr v4, v2

    double-to-float v0, v4

    neg-float v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fs;->f:F

    .line 203
    int-to-double v0, v1

    mul-double/2addr v0, v2

    double-to-float v0, v0

    neg-float v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fs;->g:F

    .line 204
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 224
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fs;->d:I

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/fs;->e:I

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/q/c;->a(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .parameter

    .prologue
    .line 208
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fs;->f:F

    const/4 v1, 0x0

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/fs;->g:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/badlogic/gdx/math/Vector2;
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fs;->a:Lcom/nianticproject/ingress/common/scanner/fp;

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/fs;->d:I

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/fs;->e:I

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/fs;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/scanner/fp;->a(IILcom/badlogic/gdx/math/Vector2;)V

    .line 214
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fs;->b:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public final c()Lcom/google/a/d/u;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fs;->c:Lcom/google/a/d/u;

    return-object v0
.end method
