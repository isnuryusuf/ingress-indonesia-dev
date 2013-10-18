.class final Lcom/nianticproject/ingress/common/scanner/visuals/b/p;
.super Lcom/nianticproject/ingress/common/scanner/visuals/b/u;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3fc0

    .line 317
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/u;-><init>(B)V

    .line 318
    const/16 v0, 0x1e

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/p;->a:I

    .line 319
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/p;->b:F

    .line 320
    const v0, 0x3ff33333

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/p;->c:F

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/p;->d:F

    .line 322
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/p;->e:F

    .line 323
    return-void
.end method
