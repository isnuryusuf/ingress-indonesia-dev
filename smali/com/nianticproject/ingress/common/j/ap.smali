.class public final Lcom/nianticproject/ingress/common/j/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:Lcom/badlogic/gdx/math/Vector3;

.field public e:Lcom/badlogic/gdx/math/Vector3;

.field public f:Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/high16 v0, 0x42b4

    iput v0, p0, Lcom/nianticproject/ingress/common/j/ap;->a:F

    .line 53
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-static {}, Lcom/nianticproject/ingress/common/j/ao;->n()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    .line 55
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-static {}, Lcom/nianticproject/ingress/common/j/ao;->o()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/ap;->e:Lcom/badlogic/gdx/math/Vector3;

    .line 57
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-static {}, Lcom/nianticproject/ingress/common/j/ao;->p()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/ap;->f:Lcom/badlogic/gdx/math/Vector3;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/j/ap;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/high16 v0, 0x42b4

    iput v0, p0, Lcom/nianticproject/ingress/common/j/ap;->a:F

    .line 53
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-static {}, Lcom/nianticproject/ingress/common/j/ao;->n()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    .line 55
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-static {}, Lcom/nianticproject/ingress/common/j/ao;->o()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/ap;->e:Lcom/badlogic/gdx/math/Vector3;

    .line 57
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-static {}, Lcom/nianticproject/ingress/common/j/ao;->p()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/ap;->f:Lcom/badlogic/gdx/math/Vector3;

    .line 63
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v0}, Lcom/nianticproject/ingress/common/j/ap;->a(Lcom/nianticproject/ingress/common/j/ap;F)V

    .line 64
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/j/ap;F)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    iget v0, p0, Lcom/nianticproject/ingress/common/j/ap;->a:F

    iget v1, p1, Lcom/nianticproject/ingress/common/j/ap;->a:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/j/ap;->a:F

    .line 76
    iget v0, p0, Lcom/nianticproject/ingress/common/j/ap;->b:F

    iget v1, p1, Lcom/nianticproject/ingress/common/j/ap;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/j/ap;->b:F

    .line 77
    iget v0, p0, Lcom/nianticproject/ingress/common/j/ap;->c:F

    iget v1, p1, Lcom/nianticproject/ingress/common/j/ap;->c:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/j/ap;->c:F

    .line 78
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/j/ap;->d:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ap;->e:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/j/ap;->e:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    .line 81
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/ap;->f:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/nianticproject/ingress/common/j/ap;->f:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 82
    return-void
.end method
