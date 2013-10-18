.class public final Lcom/nianticproject/ingress/common/ui/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/d/b;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/ui/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method public varargs constructor <init>([Lcom/nianticproject/ingress/common/ui/d/b;)V
    .locals 3
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    .line 26
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 27
    invoke-virtual {p0, v2}, Lcom/nianticproject/ingress/common/ui/d/d;->a(Lcom/nianticproject/ingress/common/ui/d/b;)V

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/d/b;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public final a(FF)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 137
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/d/b;

    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/ui/d/b;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    const/4 v2, 0x1

    .line 142
    :cond_0
    return v2

    .line 137
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final a(II)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 147
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/d/b;

    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/ui/d/b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const/4 v2, 0x1

    .line 152
    :cond_0
    return v2

    .line 147
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final fling(FFII)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 97
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/d/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nianticproject/ingress/common/ui/d/b;->fling(FFII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const/4 v2, 0x1

    .line 102
    :cond_0
    return v2

    .line 97
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final longPress(FF)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 87
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/d/b;

    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/ui/d/b;->longPress(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const/4 v2, 0x1

    .line 92
    :cond_0
    return v2

    .line 87
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final pan(FFFF)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 107
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/d/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nianticproject/ingress/common/ui/d/b;->pan(FFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    const/4 v2, 0x1

    .line 112
    :cond_0
    return v2

    .line 107
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final pinch(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 127
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/d/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nianticproject/ingress/common/ui/d/b;->pinch(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const/4 v2, 0x1

    .line 132
    :cond_0
    return v2

    .line 127
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final tap(FFIII)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 77
    move v6, v7

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/d/b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/nianticproject/ingress/common/ui/d/b;->tap(FFIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const/4 v7, 0x1

    .line 82
    :cond_0
    return v7

    .line 77
    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method public final touchDown(FFI)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 67
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/d/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/nianticproject/ingress/common/ui/d/b;->touchDown(FFI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    const/4 v2, 0x1

    .line 72
    :cond_0
    return v2

    .line 67
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final zoom(FF)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 117
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/d/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/d/b;

    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/ui/d/b;->zoom(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    const/4 v2, 0x1

    .line 122
    :cond_0
    return v2

    .line 117
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
