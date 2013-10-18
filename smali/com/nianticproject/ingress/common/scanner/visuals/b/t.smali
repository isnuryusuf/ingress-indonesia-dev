.class public Lcom/nianticproject/ingress/common/scanner/visuals/b/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/nianticproject/ingress/common/scanner/visuals/b/n;

.field public b:Lcom/badlogic/gdx/graphics/Color;

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const v3, 0x3ecccccd

    const v2, 0x3e4ccccd

    const v1, 0x3dcccccd

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->k()Lcom/nianticproject/ingress/common/scanner/visuals/b/n;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->a:Lcom/nianticproject/ingress/common/scanner/visuals/b/n;

    .line 144
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/b/l;->l()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->b:Lcom/badlogic/gdx/graphics/Color;

    .line 150
    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->c:F

    .line 155
    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->d:F

    .line 159
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->e:F

    .line 163
    iput v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->f:F

    .line 167
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->g:F

    .line 172
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->h:F

    .line 177
    iput v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->i:F

    .line 182
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->j:F

    .line 187
    const v0, 0x40266666

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->k:F

    .line 192
    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->l:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->d:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->e:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->f:F

    add-float/2addr v0, v1

    return v0
.end method

.method public b()F
    .locals 2

    .prologue
    .line 207
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->d:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->e:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->f:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->g:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final c()F
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->d:F

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->e:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->f:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final d()F
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->b()F

    move-result v0

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/t;->i:F

    add-float/2addr v0, v1

    return v0
.end method
