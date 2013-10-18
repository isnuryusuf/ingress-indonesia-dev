.class final Lcom/nianticproject/ingress/common/scanner/p;
.super Lcom/nianticproject/ingress/common/model/n;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/k;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/p;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    const-string/jumbo v0, "Scanner:playerChangeListener"

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/ad;)V
    .locals 3
    .parameter

    .prologue
    .line 291
    :try_start_0
    const-string/jumbo v0, "Scanner.onLocationChanged"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/p;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ad;->c()F

    move-result v0

    const/high16 v2, 0x447a

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/scanner/k;Z)Z

    .line 294
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/p;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/k;->c(Lcom/nianticproject/ingress/common/scanner/k;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/p;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/k;->d(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/scanner/ez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/ez;->a()V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/p;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/k;->e(Lcom/nianticproject/ingress/common/scanner/k;)V

    .line 301
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/p;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/k;->f(Lcom/nianticproject/ingress/common/scanner/k;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/p;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/scanner/k;Lcom/google/a/d/u;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 306
    return-void

    .line 292
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a(Lcom/nianticproject/ingress/shared/f;Lcom/nianticproject/ingress/shared/f;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 311
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/p;->a:Lcom/nianticproject/ingress/common/scanner/k;

    sget-object v0, Lcom/nianticproject/ingress/shared/f;->b:Lcom/nianticproject/ingress/shared/f;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/nianticproject/ingress/common/scanner/k;Z)Z

    .line 312
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/p;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/k;->e(Lcom/nianticproject/ingress/common/scanner/k;)V

    .line 313
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
