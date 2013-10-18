.class public final Lcom/nianticproject/ingress/common/j/as;
.super Lcom/nianticproject/ingress/common/j/f;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/j/ao;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/j/ao;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/f;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/ao;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/as;->a:Lcom/nianticproject/ingress/common/j/ao;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/as;->a:Lcom/nianticproject/ingress/common/j/ao;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ao;->a()F

    move-result v0

    return v0
.end method

.method public final a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/ar;F)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/j/as;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Camera has been revoked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/as;->a:Lcom/nianticproject/ingress/common/j/ao;

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/common/j/ao;->a(Lcom/nianticproject/ingress/common/j/ar;F)V

    .line 48
    return-void
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/as;->a:Lcom/nianticproject/ingress/common/j/ao;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ao;->b()F

    move-result v0

    return v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/as;->a:Lcom/nianticproject/ingress/common/j/ao;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ao;->c()F

    move-result v0

    return v0
.end method

.method public final d()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/as;->a:Lcom/nianticproject/ingress/common/j/ao;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ao;->d()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/as;->a:Lcom/nianticproject/ingress/common/j/ao;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ao;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/badlogic/gdx/math/Frustum;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/as;->a:Lcom/nianticproject/ingress/common/j/ao;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ao;->f()Lcom/badlogic/gdx/math/Frustum;

    move-result-object v0

    return-object v0
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/as;->a:Lcom/nianticproject/ingress/common/j/ao;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ao;->g()F

    move-result v0

    return v0
.end method

.method public final h()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/as;->a:Lcom/nianticproject/ingress/common/j/ao;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ao;->h()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/as;->a:Lcom/nianticproject/ingress/common/j/ao;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ao;->k()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/j/as;->b:Z

    .line 30
    return-void
.end method
