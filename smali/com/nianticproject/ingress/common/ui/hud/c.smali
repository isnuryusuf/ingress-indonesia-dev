.class public Lcom/nianticproject/ingress/common/ui/hud/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/hud/b;


# instance fields
.field private a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/nianticproject/ingress/common/ui/hud/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/c;->a:Lcom/badlogic/gdx/utils/Array;

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/c;->a:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_1

    .line 89
    :cond_0
    return-void

    .line 86
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/c;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/c;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/hud/b;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/hud/b;->a()V

    .line 86
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/c;->a:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_1

    .line 45
    :cond_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/c;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/hud/b;

    .line 43
    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/ui/hud/b;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    goto :goto_0
.end method

.method public final varargs a([Lcom/nianticproject/ingress/common/ui/hud/b;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/hud/c;->dispose()V

    .line 36
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(Z[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/c;->a:Lcom/badlogic/gdx/utils/Array;

    .line 37
    return-void
.end method

.method public a(F)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/c;->a:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 50
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/c;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/c;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/hud/b;

    .line 52
    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/ui/hud/b;->a(F)Z

    move-result v3

    if-nez v3, :cond_2

    .line 53
    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/hud/b;->dispose()V

    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/c;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 55
    add-int/lit8 v1, v1, -0x1

    .line 50
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/c;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 71
    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/hud/c;->a:Lcom/badlogic/gdx/utils/Array;

    if-nez v1, :cond_0

    .line 80
    :goto_0
    return v0

    :cond_0
    move v1, v0

    .line 72
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/c;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/c;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/hud/b;

    .line 74
    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/ui/hud/b;->a(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/c;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 77
    add-int/lit8 v1, v1, -0x1

    .line 72
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 80
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/c;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/hud/b;

    .line 64
    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ui/hud/b;->dispose()V

    goto :goto_0

    .line 66
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/hud/c;->a:Lcom/badlogic/gdx/utils/Array;

    .line 67
    return-void
.end method
