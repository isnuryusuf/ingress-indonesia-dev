.class final Lcom/nianticproject/ingress/common/k/t;
.super Lcom/nianticproject/ingress/common/model/n;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/k/s;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/k/s;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/nianticproject/ingress/common/k/t;->a:Lcom/nianticproject/ingress/common/k/s;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    const-string/jumbo v0, "Space2Face:changeListener"

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/ad;)V
    .locals 4
    .parameter

    .prologue
    .line 246
    :try_start_0
    const-string/jumbo v0, "Space2Face.onLocationChanged"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/t;->a:Lcom/nianticproject/ingress/common/k/s;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/d/u;->c()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/d/u;->f()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/k/s;->a(Lcom/nianticproject/ingress/common/k/s;FF)V

    .line 251
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/t;->a:Lcom/nianticproject/ingress/common/k/s;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/k/s;->b(Lcom/nianticproject/ingress/common/k/s;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/k/t;->a:Lcom/nianticproject/ingress/common/k/s;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/k/s;->a(Lcom/nianticproject/ingress/common/k/s;)Lcom/nianticproject/ingress/common/model/l;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 252
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/t;->a:Lcom/nianticproject/ingress/common/k/s;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/k/s;->c(Lcom/nianticproject/ingress/common/k/s;)V

    .line 253
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/t;->a:Lcom/nianticproject/ingress/common/k/s;

    const-string/jumbo v1, "Location Acquired."

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/k/s;->a(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/t;->a:Lcom/nianticproject/ingress/common/k/s;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/k/s;->f(Lcom/nianticproject/ingress/common/k/s;)Lcom/nianticproject/ingress/common/k/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/k/t;->a:Lcom/nianticproject/ingress/common/k/s;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/k/s;->d(Lcom/nianticproject/ingress/common/k/s;)F

    move-result v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/k/t;->a:Lcom/nianticproject/ingress/common/k/s;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/k/s;->e(Lcom/nianticproject/ingress/common/k/s;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/k/a;->a(FF)V

    .line 255
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/t;->a:Lcom/nianticproject/ingress/common/k/s;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/k/s;->f(Lcom/nianticproject/ingress/common/k/s;)Lcom/nianticproject/ingress/common/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/k/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
