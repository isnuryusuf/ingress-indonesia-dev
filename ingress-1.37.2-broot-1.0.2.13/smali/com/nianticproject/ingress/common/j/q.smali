.class public Lcom/nianticproject/ingress/common/j/q;
.super Lcom/nianticproject/ingress/common/j/p;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/aj;
.implements Lcom/nianticproject/ingress/common/j/o;


# instance fields
.field private final e:Lcom/badlogic/gdx/math/collision/Ray;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 26
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/j/p;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    .line 22
    new-instance v0, Lcom/badlogic/gdx/math/collision/Ray;

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/collision/Ray;-><init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/q;->e:Lcom/badlogic/gdx/math/collision/Ray;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/collision/Ray;)Lcom/nianticproject/ingress/common/j/ak;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/q;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_1

    .line 62
    :cond_0
    return-object v1

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/q;->e:Lcom/badlogic/gdx/math/collision/Ray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/collision/Ray;->set(Lcom/badlogic/gdx/math/collision/Ray;)Lcom/badlogic/gdx/math/collision/Ray;

    move-result-object v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/q;->c:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/collision/Ray;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/Ray;

    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/q;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/o;

    .line 54
    instance-of v3, v0, Lcom/nianticproject/ingress/common/j/aj;

    if-eqz v3, :cond_3

    .line 55
    check-cast v0, Lcom/nianticproject/ingress/common/j/aj;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/j/q;->e:Lcom/badlogic/gdx/math/collision/Ray;

    invoke-interface {v0, v3}, Lcom/nianticproject/ingress/common/j/aj;->a(Lcom/badlogic/gdx/math/collision/Ray;)Lcom/nianticproject/ingress/common/j/ak;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    iget v3, v0, Lcom/nianticproject/ingress/common/j/ak;->b:F

    iget v4, v1, Lcom/nianticproject/ingress/common/j/ak;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    :cond_2
    :goto_1
    move-object v1, v0

    .line 59
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector2;)Lcom/nianticproject/ingress/common/j/ak;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/q;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_1

    .line 83
    :cond_0
    return-object v1

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/q;->d:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/q;->b:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/q;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/o;

    .line 75
    instance-of v3, v0, Lcom/nianticproject/ingress/common/j/aj;

    if-eqz v3, :cond_3

    .line 76
    check-cast v0, Lcom/nianticproject/ingress/common/j/aj;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/j/q;->d:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {v0, p1, v3, p3}, Lcom/nianticproject/ingress/common/j/aj;->a(Lcom/nianticproject/ingress/common/j/f;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Vector2;)Lcom/nianticproject/ingress/common/j/ak;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    iget v3, v0, Lcom/nianticproject/ingress/common/j/ak;->b:F

    iget v4, v1, Lcom/nianticproject/ingress/common/j/ak;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    :cond_2
    :goto_1
    move-object v1, v0

    .line 80
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public bridge synthetic a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/j/p;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V

    return-void
.end method

.method public bridge synthetic a()Z
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/nianticproject/ingress/common/j/p;->a()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/j/p;->a(F)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/nianticproject/ingress/common/j/o;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/q;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public final c(Lcom/nianticproject/ingress/common/j/o;)Z
    .locals 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/q;->a:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic dispose()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Lcom/nianticproject/ingress/common/j/p;->dispose()V

    return-void
.end method

.method public final w_()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/q;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
