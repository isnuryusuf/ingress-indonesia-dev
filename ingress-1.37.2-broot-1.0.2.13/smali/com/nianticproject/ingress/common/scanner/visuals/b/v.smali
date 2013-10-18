.class public Lcom/nianticproject/ingress/common/scanner/visuals/b/v;
.super Lcom/nianticproject/ingress/common/scanner/visuals/b/t;
.source "SourceFile"


# direct methods
.method public constructor <init>(F)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f00

    .line 269
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;-><init>()V

    .line 270
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->m()Lcom/nianticproject/ingress/common/scanner/visuals/b/n;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/v;->a:Lcom/nianticproject/ingress/common/scanner/visuals/b/n;

    .line 273
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->h()Lcom/nianticproject/ingress/common/scanner/visuals/b/u;

    move-result-object v0

    iget v0, v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/u;->d:F

    div-float v0, p1, v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/v;->c:F

    .line 275
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/v;->j:F

    .line 276
    const v0, 0x3f99999a

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/v;->k:F

    .line 278
    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/v;->h:F

    .line 279
    const v0, 0x3e99999a

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/v;->i:F

    .line 281
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/v;->d:F

    .line 284
    const v0, 0x3fc4ec4f

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/v;->h:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/v;->e:F

    .line 285
    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/v;->f:F

    .line 286
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/v;->g:F

    .line 287
    return-void
.end method
