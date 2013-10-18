.class public final Lcom/nianticproject/ingress/common/scanner/visuals/b/s;
.super Lcom/nianticproject/ingress/common/scanner/visuals/b/v;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f00

    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/v;-><init>(F)V

    .line 298
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/s;->c:F

    .line 300
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/s;->f:F

    .line 301
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/s;->g:F

    .line 302
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2

    .prologue
    .line 306
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/s;->d:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/s;->e:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/s;->f:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/s;->g:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public final b()F
    .locals 2

    .prologue
    .line 309
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/s;->d:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/s;->e:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/s;->f:F

    add-float/2addr v0, v1

    return v0
.end method
