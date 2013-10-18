.class abstract Lcom/nianticproject/ingress/common/scanner/ga;
.super Lcom/nianticproject/ingress/common/scanner/fg;
.source "SourceFile"


# instance fields
.field private final i:Lcom/nianticproject/ingress/common/scanner/gc;

.field private j:Ljava/lang/Float;

.field private k:Lcom/nianticproject/ingress/common/scanner/gb;

.field private final l:J

.field private final m:Lcom/nianticproject/ingress/common/scanner/ge;

.field private n:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method protected constructor <init>(Lcom/nianticproject/ingress/common/scanner/ge;Lcom/nianticproject/ingress/common/scanner/eo;Lcom/nianticproject/ingress/common/scanner/gd;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/scanner/fg;-><init>(Lcom/nianticproject/ingress/common/scanner/eo;)V

    .line 35
    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ga;->j:Ljava/lang/Float;

    .line 36
    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ga;->k:Lcom/nianticproject/ingress/common/scanner/gb;

    .line 45
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/ga;->m:Lcom/nianticproject/ingress/common/scanner/ge;

    .line 46
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/gc;

    invoke-direct {v0, p0, p3}, Lcom/nianticproject/ingress/common/scanner/gc;-><init>(Lcom/nianticproject/ingress/common/scanner/ga;Lcom/nianticproject/ingress/common/scanner/gd;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ga;->i:Lcom/nianticproject/ingress/common/scanner/gc;

    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ga;->i:Lcom/nianticproject/ingress/common/scanner/gc;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/ga;->a(Lcom/nianticproject/ingress/common/scanner/fj;)V

    .line 48
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/ga;->c()Lcom/google/a/d/u;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/b/b;->a(Lcom/google/a/d/u;)Lcom/google/a/d/j;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/google/a/d/j;->b(I)Lcom/google/a/d/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/j;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/ga;->l:J

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/ga;)Lcom/nianticproject/ingress/common/scanner/ge;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ga;->m:Lcom/nianticproject/ingress/common/scanner/ge;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/ga;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ga;->n:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/nianticproject/ingress/common/scanner/gb;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/ga;->k:Lcom/nianticproject/ingress/common/scanner/gb;

    .line 146
    return-void
.end method

.method public a(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 3
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/fg;->a(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 55
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ga;->j:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 57
    const/high16 v0, 0x43b4

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4f00

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ga;->j:Ljava/lang/Float;

    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ga;->m:Lcom/nianticproject/ingress/common/scanner/ge;

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/common/scanner/ge;->b(Lcom/nianticproject/ingress/common/scanner/ga;)V

    .line 60
    invoke-static {p1}, Lcom/nianticproject/ingress/common/gameentity/g;->d(Lcom/nianticproject/ingress/gameentity/f;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ga;->n:Lcom/badlogic/gdx/graphics/Color;

    .line 62
    :cond_0
    return-void
.end method

.method public a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/fg;->a(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    .locals 3
    .parameter

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/fg;->b(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ga;->j:Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ga;->j:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ga;->k:Lcom/nianticproject/ingress/common/scanner/gb;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ga;->k:Lcom/nianticproject/ingress/common/scanner/gb;

    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/common/scanner/gb;->a(Lcom/nianticproject/ingress/common/scanner/ga;)V

    .line 137
    :cond_0
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/fg;->dispose()V

    .line 138
    return-void
.end method

.method public k()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/ga;->l:J

    return-wide v0
.end method

.method protected final o()V
    .locals 1

    .prologue
    .line 76
    :try_start_0
    const-string/jumbo v0, "ScannerResourceEntity.processGameEntity"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 77
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/fg;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
